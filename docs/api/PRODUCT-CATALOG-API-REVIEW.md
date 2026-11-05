# Review Respons API Katalog Produk MyBoss (Staging)

Hasil review respons endpoint katalog yang sudah tersedia di staging terhadap kebutuhan tab **Product** aplikasi MyBoss. Berisi temuan, bukti, dan permintaan perbaikan untuk tim backend.

- Versi: 1.1 — 2026-11-02 (lihat §9 untuk perkembangan)
- Status: sebagian terjawab, sisanya menunggu backend
- Pembanding: [PRODUCT-CATALOG-API.md](PRODUCT-CATALOG-API.md) (kontrak usulan, 2026-10-27)
- Sumber data: respons staging **tanpa parameter filter** untuk 5 endpoint (Lampiran A). `branch_id`, filter, pencarian, dan format error **belum teruji**.

## 1. Ringkasan

Struktur respons sudah konsisten dan cukup untuk versi pertama. Namun ada **4 temuan kritis** yang membuat sebagian fitur UI tidak bisa jalan (gambar detail, produk terkait, kategori, filter), dan 5 temuan yang disarankan agar payload dan perilakunya stabil.

| ID | Prioritas | Endpoint | Temuan singkat |
|---|---|---|---|
| K1 | Kritis | `/catalog/show/{id}` | `related_products` bukan dari kategori yang sama |
| K2 | Kritis | `/catalog/show/{id}` | Tidak ada gambar, kategori, maupun brand |
| K3 | Kritis | `/catalog/lists`, `/catalog/group/products` | Parameter filter tidak jelas, produk tidak membawa brand |
| K4 | Kritis | `/catalog/group/lists` | Memuat kategori kosong, tanpa `slug`/ikon |
| S1 | Disarankan | `/catalog/group/products` | Semua produk per kategori dikembalikan, tanpa `per_group` |
| S2 | Disarankan | `/catalog/lists` | Urutan default tidak jelas dan berisiko tidak stabil antar halaman |
| S3 | Disarankan | `/catalog/lists`, `/catalog/group/products` | Tidak ada penanda produk baru di kartu |
| S4 | Disarankan | `/catalog/brand/lists` | Brand tidak berelasi ke kategori, tanpa logo |
| S5 | Disarankan | Semua | Data staging belum realistis |

## 2. Yang sudah baik

- Pembungkus konsisten: `data`, `meta` (`total`, `page`, `offset`, `per_page`, `total_page`), `status`, `error`; field `snake_case`.
- Angka konsisten antar endpoint: total produk per kategori di `/catalog/group/products` (8 + 5 + 3 + 2) sama dengan `meta.total` = 18 di `/catalog/lists`.
- `/catalog/group/products` hanya memuat kategori yang punya produk, sehingga tampilan "All" tidak punya section kosong.
- `related_products` tidak memuat produk itu sendiri.
- `label_tag` ("New Release") dan `label_id` sudah tersedia di detail.
- Nama kategori sudah dua bahasa (`name_en`, `name_id`).

## 3. Temuan kritis

### K1 — `related_products` tidak dari kategori yang sama

**Bukti.** `GET /catalog/show/106802912` (oraimo SpaceBuds Neo, kategori **Audio**, `product_group_id` 4364831) mengembalikan:

| id | name | kategori sebenarnya |
|---|---|---|
| 106802907 | Watch Mate 2 | Wearable |
| 106802906 | Watch Nova AM | Wearable |
| 106802905 | Watch Nova 2 | Wearable |
| 106802908 | Watch 7 | Wearable |

**Dampak.** Bagian "Related products" di bottom sheet detail menampilkan produk yang tidak relevan.

**Permintaan.** Sesuai kontrak (PRODUCT-CATALOG-API.md §4.2): produk aktif dari **kategori yang sama**, bukan produk itu sendiri, maksimal 6, produk baru lebih dulu lalu terbaru. Mohon konfirmasi apakah ini bug logika atau efek data seed.

### K2 — Detail produk tidak memuat gambar, kategori, maupun brand

**Bukti.** `GET /catalog/show/106802912`: `"product_photos": []`, dan objek `data` tidak punya `photo_md`, `product_group_id`/`product_group_name`, maupun `brand`.

**Dampak.** Bottom sheet detail butuh galeri foto. Saat ini app hanya bisa meminjam foto dari kartu produk yang diklik. Membuka produk dari "Related products" (yang punya `photo_md` tapi tidak lewat kartu) atau membuka detail langsung dari ID tidak punya sumber gambar. Kategori dan brand juga tidak bisa ditampilkan.

**Permintaan.** Pada `data` di `/catalog/show/{id}` tambahkan:
- `photo_md` (foto sampul, sama dengan di daftar),
- `product_group_id` dan `product_group_name`,
- `brand` berupa objek `{ "id", "name" }`,
- `product_photos` terisi minimal 1 elemen, dengan **bentuk elemen yang dikonfirmasi backend** (saat ini kosong sehingga tidak diketahui). Usulan: `{ "id", "url" (±1080 px, 1:1), "thumb_url" (±400 px, 1:1), "view_order" }`.

### K3 — Parameter filter tidak jelas, produk tidak membawa brand

**Bukti.**
- Di Postman, `/catalog/lists` memakai filter berbentuk `search[0][search_column]=…&search[0][search_text]=…&search[0][search_condition]=…`. Kontrak mengusulkan `catalog_group_id`, `brand_id`, `search`, `sort`, `branch_id`. Tidak jelas mana yang berlaku.
- Item produk di `/catalog/lists` dan `/catalog/group/products` hanya berisi `id`, `name`, `photo_md` (+ `product_group_id` dan `product_group_name` di `/catalog/lists`). Tidak ada `brand`.

**Dampak.** Chip brand dan kolom pencarian di tab Product tidak bisa diimplementasikan dengan benar: filter di sisi app tidak mungkin (tanpa brand di item), dan filter di sisi server tidak bisa dipakai (parameter belum pasti).

**Permintaan.**
1. Tetapkan dan dokumentasikan parameter untuk `/catalog/lists`:

   | Kebutuhan app | Parameter (usulan, mohon dikoreksi bila berbeda) |
   |---|---|
   | Kategori | `catalog_group_id` |
   | Brand | `brand_id` |
   | Cari nama | `search` (minimal 2 karakter, sebagian, tidak peka huruf besar/kecil) |
   | Urutan | `sort` |
   | Cabang | `branch_id` |
   | Halaman | `page`, `per_page` |

   Bila sintaks `search[n][…]` yang resmi, mohon beri **contoh URL lengkap yang berjalan** untuk tiap kebutuhan di atas.
2. Tambahkan `brand` (objek `{ "id", "name" }`) pada item produk di daftar.
3. Jawab: apakah `/catalog/group/products` menerima filter yang sama (`brand_id`, `search`, `branch_id`)? Tampilan "All" butuh ini saat user memilih chip brand atau mengetik pencarian.

### K4 — `/catalog/group/lists` memuat kategori kosong dan tanpa `slug`/ikon

**Bukti.** `/catalog/group/lists` mengembalikan 6 kategori. `/catalog/group/products` hanya 4. Home Tools (4364834) dan Gaming Pad (4364835) tidak punya produk. Field per kategori hanya `id`, `name_en`, `name_id`.

**Dampak.**
- Bar kategori menampilkan 2 tab yang selalu berujung "Product not found".
- App memilih ikon kategori dari identitas stabil (`wearable`, `audio`, `power`, …). Dengan ID numerik, ikon hanya bisa dipetakan dari nama, yang rapuh bila nama diganti.

**Permintaan.**
- Tambahkan `slug` (stabil, tidak berubah walau nama diganti), `product_count`, `view_order`, dan `icon_url` (opsional).
- Sediakan cara menyaring hanya kategori yang punya produk (mis. `product_count` > 0 atau parameter `has_product=1`).
- **Pertanyaan ke Product/Design:** Figma memakai 6 kategori (Wearable, Audio, Power, Personal Care, Home Appliance, Gaming). Staging memakai Hair Cut, Home Tools, Gaming Pad. Mana yang menjadi acuan final?

## 4. Temuan yang disarankan

### S1 — Tidak ada batas produk per kategori di `/catalog/group/products`

`total_product` selalu sama dengan jumlah `products` (8/8, 5/5, 3/3, 2/2). Semua produk tiap kategori dikembalikan, dan `per_page` (15) hanya membatasi jumlah **kategori**. Payload tumbuh seiring jumlah produk.

**Permintaan.** Tambah `per_group` (default 6, maksimum 24). `total_product` berarti total produk kategori itu (sesuai filter), sehingga app bisa menampilkan "lihat semua" bila `total_product` > jumlah `products`.

### S2 — Urutan default `/catalog/lists` tidak jelas

Urutan `id` di halaman 1: 106802913, 106802921, 106802920 … 106802904, 106802912, 106802911 … Tidak naik, turun, maupun alfabetis. Bila kunci urutan tidak unik, halaman 2 bisa menduplikasi atau melewatkan item.

**Permintaan.** Dokumentasikan urutan default (kontrak: `newest`), pakai `id` sebagai kunci urutan kedua, dan dukung `sort` (`newest`, `name_asc`, `name_desc`).

### S3 — Tidak ada penanda produk baru di kartu

`label_tag` dan `label_id` hanya ada di `/catalog/show/{id}`. Grid tidak bisa menampilkan badge "New".

**Permintaan.** Sertakan `label_tag` (dan `label_id`) pada item di `/catalog/lists` dan `/catalog/group/products`. Mohon jelaskan arti `label_id` dan daftar nilai `label_tag` yang mungkin.

### S4 — Brand tidak berelasi ke kategori

`/catalog/brand/lists` hanya berisi `id` dan `name`. Chip brand di tab Product harus menyesuaikan kategori yang dipilih (hanya brand yang punya produk di kategori itu).

**Permintaan.** Dukung parameter `catalog_group_id` (dan `branch_id`) pada `/catalog/brand/lists`. `logo_url` (±200×200 px) opsional, hanya dibutuhkan bila logo brand di Home akan diambil dari server.

### S5 — Data staging belum realistis

- Kategori **Hair Cut** berisi Anker USB-C Hub 7in1 dan Ugreen USB-C Cable 1m.
- Semua `photo_md` berupa gambar placeholder `no_photo/product.png`, sehingga ukuran dan rasio gambar belum bisa divalidasi.
- `description` kosong, `product_photos` kosong.

**Permintaan.** Perbaiki data staging agar UI bisa diuji dengan data yang mendekati produksi: kategori sesuai produk, foto 1:1 (±400 px), deskripsi dan foto galeri terisi.

## 5. Opsional (tidak menghambat)

- `price` (`amount`, `original_amount`, `currency`) dan `stock`: kontrak menyebut tersedia di respons, belum ada. UI belum menampilkannya.
- `view_order` pada kategori dan brand.
- Perilaku `branch_id` (lihat §6).

## 6. Belum teruji (butuh jawaban atau contoh dari backend)

| Hal | Yang dibutuhkan |
|---|---|
| `branch_id` | Apakah memengaruhi daftar produk, kategori, brand, harga, dan stok? Contoh respons dengan `branch_id` |
| Filter, pencarian, `sort` | Contoh respons dengan filter kategori + brand + `search` |
| Respons error | Format dan kode untuk 401, 404, 422 (kontrak mengusulkan `{ "status", "error": 1, "message" }`) |
| Batas `per_page` | Maksimum yang diizinkan. App akan mengirim `per_page` eksplisit (default saat ini 15 di semua endpoint) |
| Halaman kosong | Memastikan hasil tanpa produk tetap `200` dengan `"data": []`, bukan 404 |

## 7. Checklist penerimaan

Aplikasi siap disambungkan penuh ke API bila:

- [ ] K1: `related_products` hanya dari kategori yang sama (uji dengan produk Audio dan Wearable)
- [ ] K2: `/catalog/show/{id}` memuat `photo_md`, kategori, `brand`, dan `product_photos` (minimal 1, bentuk elemen terdokumentasi)
- [ ] K3: Parameter filter terdokumentasi dengan contoh URL yang berjalan; item produk memuat `brand`; jawaban soal filter di `/catalog/group/products`
- [ ] K4: `/catalog/group/lists` memuat `slug` dan `product_count`; ada cara menyaring kategori kosong; keputusan daftar kategori final
- [ ] S1–S4: dijadwalkan atau ditolak dengan alasan
- [ ] §6: contoh respons `branch_id`, filter, dan error diterima

## 8. Pemetaan field ke aplikasi

Dasar pemetaan yang akan dipakai app bila respons saat ini dipertahankan:

| Kebutuhan UI | Sumber respons | Catatan |
|---|---|---|
| ID produk | `id` | Angka 64-bit; app menyimpannya sebagai teks |
| Nama | `name` | |
| Foto kartu | `photo_md` | |
| Galeri detail | `product_photos` (K2) | Tanpa itu, app memakai `photo_md` |
| Kategori | `product_group_id` / `id` grup, `name_en` atau `name_id` sesuai bahasa | Ikon dari `slug` (K4) |
| Badge "New" | `label_tag` tidak kosong | Di kartu butuh S3 |
| Spesifikasi | `specifications[].name` dan `.value` | |
| Produk terkait | `related_products` | App menampilkannya langsung dari objek ini |
| Brand | **belum ada di item produk** (K3) | Chip dari `/catalog/brand/lists` |

## 9. Perkembangan (2026-11-02)

Dari respons dan Postman terbaru:

| ID | Status | Keterangan |
|---|---|---|
| K1 | Beres di sampel | `/catalog/show/106802911` (FreePods 4, Audio) mengembalikan 2 produk Audio. Hanya 2 dari 4 produk Audio lain, jadi batas/urutan `related_products` masih perlu dikonfirmasi |
| K2 | Terbuka | `product_photos` tetap `[]`; tetap tanpa `photo_md`, kategori, brand |
| K3 | Sebagian | Format filter dari Postman: `search[n][search_column\|search_text\|search_condition]` dengan kolom `product_group_id` `=`, `brand_id` `=`, `name` `like`. Item produk masih tanpa `brand` |
| K4 | Sebagian | `/catalog/group/lists` kini punya `photo_md` (ikon). Tiga URL CloudFront menjawab **403 AccessDenied** tanpa token (dicek 2026-10-30); sisanya placeholder `no_photo`. Masih tanpa `slug`, kategori kosong tetap ikut |
| — | Baru | `label_tag` adalah label umum ("New Release", "Sale"), bukan penanda produk baru. App menampilkannya apa adanya |
| — | Keputusan | Cabang dikirim sebagai **domain**: `{url}/{locale}/{url_id cabang}/catalog/...` |
| — | Path baru | `/catalog/group/lists` tetap, `/catalog/group/products` → **`/catalog/lists/group`**. Bagian lain dokumen ini memakai path lama sesuai saat review |

Pertanyaan baru untuk backend:
- Apakah token client berlaku di domain cabang (`url_id`)?
- Apakah filter `search[n]` (brand, nama) berlaku juga di `/catalog/group/products`?
- Apakah ikon kategori CloudFront memang harus bisa diakses publik?
- Berapa batas maksimum `per_page`, dan adakah nilai "semua data" (mis. `-1`, seperti di Postman *List Redeem Options*)? App sementara mengirim `per_page=100` untuk daftar tanpa paginasi di UI: `/catalog/group/lists`, `/catalog/brand/lists`, `/catalog/lists/group`, `/promotion/loyalty-points/list`, `/promotion/discount-vouchers/list`.

## Lampiran A — Ringkasan respons yang direview

Semua `photo_md` pada sampel berisi gambar placeholder (`…/img/no_photo/product.png`). `meta` selalu `page 1`, `per_page 15`.

| Endpoint | Hasil |
|---|---|
| `GET /catalog/group/products` | 4 kategori (Wearable 8, Audio 5, Power 3, Hair Cut 2 produk). Per kategori: `id`, `name_en`, `name_id`, `total_product`, `products[]` (`id`, `name`, `photo_md`) |
| `GET /catalog/lists` | `meta.total` 18, `total_page` 2; halaman 1 memuat 15 produk (`id`, `name`, `photo_md`, `product_group_id`, `product_group_name`) |
| `GET /catalog/show/106802912` | `id`, `name`, `label_id` 1, `label_tag` "New Release", `description` "", `product_photos` `[]`, `specifications[]` (6 item, `id`/`name`/`value`), `related_products[]` (4 item, semuanya Wearable) |
| `GET /catalog/brand/lists` | 5 brand (Oraimo, Anker, Oppo, Ugreen, Xiaomi), hanya `id` dan `name` |
| `GET /catalog/group/lists` | 6 kategori (Wearable, Audio, Power, Hair Cut, Home Tools, Gaming Pad), hanya `id`, `name_en`, `name_id` |
