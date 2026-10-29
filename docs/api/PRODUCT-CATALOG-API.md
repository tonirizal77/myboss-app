# Spesifikasi API Katalog Produk MyBoss

Dokumen acuan untuk tim backend dalam mendesain endpoint katalog produk yang dipakai tab **Product** dan **Home** di aplikasi MyBoss. Disusun dari kebutuhan halaman yang sudah ada di aplikasi (saat ini masih memakai data statis `ProductStatic` / `GuestHomeStatic`).

- Versi: 1.0 — 2026-10-27
- Status: usulan, siap direview backend
- Postman: folder **MyBoss › Product** (Catalog Group, Catalog, Catalog Brand). Endpoint detail (`/catalog/show/{id}`) dan ringkasan (`/catalog/summary`) **belum ada** di Postman.

## 1. Keputusan yang sudah disepakati

| # | Topik | Keputusan |
|---|---|---|
| 1 | Filter & pencarian | Di **server**, dengan paginasi |
| 2 | Tampilan "All" (section per kategori) | **Disediakan backend** lewat `group_by=catalog_group` |
| 3 | Ketergantungan pada cabang | **Ya** — semua endpoint menerima `branch_id` (cabang yang dipilih di header) |
| 4 | Harga & stok | **Disediakan** di respons walau belum ditampilkan di UI |
| 5 | Format deskripsi | **Teks biasa** (baris baru memakai `\n`, tanpa HTML) |
| 6 | `is_new` & produk terkait | `is_new` = produk dibuat ≤ 30 hari terakhir; terkait = **kategori sama** |
| 7 | Ukuran gambar | Thumbnail ±400 px untuk kartu, gambar besar ±1080 px untuk galeri |

## 2. Konvensi umum

### 2.1 URL & otorisasi

- Base URL: `{{url}}/{locale}/{{domain}}` (sama dengan endpoint MyBoss lain, mis. `/id/myboss/catalog/lists`).
- Authorization: `Bearer {{bearer}}` (client token). Katalog harus bisa diakses **guest** — tidak butuh token user.
- Bahasa nama/deskripsi mengikuti `{locale}` di URL (`id` / `en`) bila data terjemahan tersedia.

### 2.2 Bentuk respons

Mengikuti format Olsera yang sudah dipakai (`/store/branches`): field `snake_case`, angka sebagai number, ID sebagai integer.

```json
{
  "data": [ ... ],
  "meta": { "total": 27, "page": 1, "offset": 0, "per_page": 24, "total_page": 2 },
  "status": 200,
  "error": 0
}
```

- Endpoint daftar selalu mengembalikan `meta`. Endpoint detail tidak.
- Daftar kosong tetap `200` dengan `"data": []` — **bukan** 404.

### 2.3 Error

```json
{ "status": 404, "error": 1, "message": "Product not found" }
```

| HTTP | Kapan |
|---|---|
| 400 / 422 | Parameter tidak valid (mis. `per_page` > 100, `sort` tidak dikenal) |
| 404 | Produk / kategori / cabang tidak ditemukan |
| 401 | Client token tidak valid / kedaluwarsa |

### 2.4 Parameter cabang

- `branch_id` (integer, opsional di semua endpoint katalog) = `id` dari `GET /store/branches`.
- Bila dikirim: harga, stok, ketersediaan, `product_count`, dan daftar produk mengikuti cabang tersebut. Produk yang tidak dijual di cabang itu **tidak** muncul.
- Bila tidak dikirim: data level store (gabungan semua cabang); `stock` boleh `null`.

### 2.5 Objek bersama

**`catalog_group` (ringkas)** — dipakai di kartu dan detail.

| Field | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `id` | int | ya | |
| `slug` | string | ya | Stabil, tidak berubah walau `name` diganti. App memilih ikon dari `slug` (`wearable`, `audio`, `power`, `personal_care`, `home_appliance`, `gaming`) |
| `name` | string | ya | Nama tampilan |

**`brand` (ringkas)**

| Field | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `id` | int | ya | |
| `name` | string | ya | |

**`price`**

| Field | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `amount` | number | ya | Harga jual saat ini |
| `original_amount` | number \| null | tidak | Harga sebelum diskon; `null` bila tidak diskon |
| `currency` | string | ya | ISO 4217, mis. `IDR` |

**`stock`** (`null` bila `branch_id` tidak dikirim)

| Field | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `qty` | int | ya | Jumlah tersedia di cabang |
| `is_available` | bool | ya | `qty > 0` dan produk aktif dijual |

**Kartu produk (`product_card`)** — dipakai di daftar, section "All", produk terkait, dan Home.

| Field | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `id` | int | ya | |
| `name` | string | ya | |
| `cover_url` | string | ya | Thumbnail ±400×400 px (rasio 1:1, kartu grid persegi) |
| `catalog_group` | object | ya | Lihat di atas |
| `brand` | object | ya | Lihat di atas |
| `is_new` | bool | ya | Lihat aturan 4.1 |
| `price` | object | ya | Lihat di atas |
| `stock` | object \| null | ya | Lihat di atas |

## 3. Endpoint

### 3.1 Daftar kategori — `GET /catalog/group/lists`

Untuk bar kategori di atas tab Product. Hanya kategori aktif. Urutan sesuai `view_order`.

| Parameter | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `branch_id` | int | tidak | Bila dikirim, `product_count` dihitung per cabang |
| `page`, `per_page` | int | tidak | Default 1 / 50 |

| Field `data[]` | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `id` | int | ya | |
| `slug` | string | ya | Lihat 2.5 |
| `name` | string | ya | |
| `icon_url` | string \| null | tidak | SVG/PNG monokrom. Bila ada, app memakainya alih-alih ikon bawaan |
| `product_count` | int | ya | Jumlah produk aktif (per cabang bila `branch_id`) |
| `view_order` | int | ya | |

```json
{
  "data": [
    { "id": 11, "slug": "wearable", "name": "Wearable", "icon_url": "https://cdn.example.com/icons/wearable.svg", "product_count": 12, "view_order": 1 },
    { "id": 12, "slug": "audio", "name": "Audio", "icon_url": null, "product_count": 10, "view_order": 2 },
    { "id": 13, "slug": "power", "name": "Power", "icon_url": null, "product_count": 5, "view_order": 3 }
  ],
  "meta": { "total": 3, "page": 1, "offset": 0, "per_page": 50, "total_page": 1 },
  "status": 200,
  "error": 0
}
```

### 3.2 Daftar brand — `GET /catalog/brand/lists`

Untuk chip brand di tab Product dan deretan logo brand di Home. Hanya brand yang punya produk aktif.

| Parameter | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `branch_id` | int | tidak | Hanya brand yang dijual di cabang tersebut |
| `catalog_group_id` | int | tidak | Hanya brand yang punya produk di kategori tersebut |
| `page`, `per_page` | int | tidak | Default 1 / 50 |

| Field `data[]` | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `id` | int | ya | |
| `name` | string | ya | |
| `logo_url` | string \| null | tidak | Logo ±200×200 px untuk Home |
| `view_order` | int | ya | |

```json
{
  "data": [
    { "id": 3, "name": "Oraimo", "logo_url": "https://cdn.example.com/brands/oraimo.png", "view_order": 1 },
    { "id": 7, "name": "Anker", "logo_url": "https://cdn.example.com/brands/anker.png", "view_order": 2 }
  ],
  "meta": { "total": 2, "page": 1, "offset": 0, "per_page": 50, "total_page": 1 },
  "status": 200,
  "error": 0
}
```

### 3.3 Daftar produk — `GET /catalog/lists`

Untuk grid produk. Mendukung dua bentuk respons: **datar** (default, satu kategori / hasil filter) dan **per section** (`group_by=catalog_group`, untuk tampilan "All").

| Parameter | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `branch_id` | int | tidak | Lihat 2.4 |
| `catalog_group_id` | int | tidak | Tanpa parameter = semua kategori |
| `brand_id` | int | tidak | Tanpa parameter = semua brand |
| `search` | string | tidak | Cocok sebagian, tidak peka huruf besar/kecil, pada `name` (dan kode/model bila ada). Minimal 2 karakter |
| `is_new` | bool | tidak | `1` = hanya produk baru |
| `sort` | string | tidak | `newest` (default), `name_asc`, `name_desc`, `price_asc`, `price_desc` |
| `page` | int | tidak | Default 1 |
| `per_page` | int | tidak | Default 24, maksimum 100 |
| `group_by` | string | tidak | `catalog_group` = respons per section |
| `per_group` | int | tidak | Jumlah produk per section saat `group_by` dipakai. Default 6, maksimum 24 |

Semua filter bisa digabung. Contoh filter "Wearable + Oraimo + cari 'watch'":
`GET /catalog/lists?branch_id=303476&catalog_group_id=11&brand_id=3&search=watch&page=1&per_page=24`

**Respons datar** — `data[]` berisi `product_card` (2.5).

```json
{
  "data": [
    {
      "id": 5012,
      "name": "oraimo Watch Pro 2",
      "cover_url": "https://cdn.example.com/products/5012/thumb.jpg",
      "catalog_group": { "id": 11, "slug": "wearable", "name": "Wearable" },
      "brand": { "id": 3, "name": "Oraimo" },
      "is_new": true,
      "price": { "amount": 899000, "original_amount": 999000, "currency": "IDR" },
      "stock": { "qty": 14, "is_available": true }
    }
  ],
  "meta": { "total": 12, "page": 1, "offset": 0, "per_page": 24, "total_page": 1 },
  "status": 200,
  "error": 0
}
```

**Respons per section** — `GET /catalog/lists?branch_id=303476&group_by=catalog_group&per_group=6`

Satu section per kategori **yang punya produk** sesuai filter (kategori tanpa hasil tidak ikut). Urutan section mengikuti `view_order` kategori. Filter `brand_id`, `search`, `is_new`, `sort` tetap berlaku di dalam tiap section. `meta` di level atas menghitung section.

| Field `data[]` | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `catalog_group` | object | ya | Ringkas (2.5) |
| `total` | int | ya | Total produk kategori ini sesuai filter (untuk tombol "lihat semua") |
| `items` | `product_card[]` | ya | Maksimal `per_group` |

```json
{
  "data": [
    {
      "catalog_group": { "id": 11, "slug": "wearable", "name": "Wearable" },
      "total": 12,
      "items": [
        {
          "id": 5012,
          "name": "oraimo Watch Pro 2",
          "cover_url": "https://cdn.example.com/products/5012/thumb.jpg",
          "catalog_group": { "id": 11, "slug": "wearable", "name": "Wearable" },
          "brand": { "id": 3, "name": "Oraimo" },
          "is_new": true,
          "price": { "amount": 899000, "original_amount": null, "currency": "IDR" },
          "stock": { "qty": 14, "is_available": true }
        }
      ]
    },
    {
      "catalog_group": { "id": 12, "slug": "audio", "name": "Audio" },
      "total": 10,
      "items": [ "..." ]
    }
  ],
  "meta": { "total": 3, "page": 1, "offset": 0, "per_page": 24, "total_page": 1 },
  "status": 200,
  "error": 0
}
```

### 3.4 Detail produk — `GET /catalog/show/{id}` (baru)

Untuk bottom sheet detail. Juga dipanggil saat user membuka produk terkait.

| Parameter | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `id` (path) | int | ya | ID produk |
| `branch_id` | int | tidak | Harga & stok per cabang; produk terkait hanya yang dijual di cabang ini |

`data` = semua field `product_card` (2.5) **ditambah**:

| Field | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `images` | array | ya | Minimal 1. `images[0]` = foto utama |
| `images[].url` | string | ya | Gambar besar ±1080×1080 px untuk galeri |
| `images[].thumb_url` | string | ya | Thumbnail ±400 px |
| `images[].view_order` | int | ya | |
| `description` | string | ya | Teks biasa, baris baru `\n`, tanpa HTML. Boleh `""` |
| `specs` | array | ya | Boleh `[]`. Urutan sesuai tampilan |
| `specs[].label` | string | ya | Mis. `Bluetooth Version` |
| `specs[].value` | string | ya | Mis. `V6.0` |
| `related` | `product_card[]` | ya | Lihat aturan 4.2. Boleh `[]` |

```json
{
  "data": {
    "id": 5012,
    "name": "oraimo Watch Pro 2",
    "cover_url": "https://cdn.example.com/products/5012/thumb.jpg",
    "catalog_group": { "id": 11, "slug": "wearable", "name": "Wearable" },
    "brand": { "id": 3, "name": "Oraimo" },
    "is_new": true,
    "price": { "amount": 899000, "original_amount": 999000, "currency": "IDR" },
    "stock": { "qty": 14, "is_available": true },
    "images": [
      { "url": "https://cdn.example.com/products/5012/1.jpg", "thumb_url": "https://cdn.example.com/products/5012/1_thumb.jpg", "view_order": 1 },
      { "url": "https://cdn.example.com/products/5012/2.jpg", "thumb_url": "https://cdn.example.com/products/5012/2_thumb.jpg", "view_order": 2 }
    ],
    "description": "Track your health, sleep and workouts all day.\nA bright display, long battery life and Bluetooth calling keep you connected from your wrist.",
    "specs": [
      { "label": "Model", "value": "OSW-810" },
      { "label": "Display", "value": "2.01\" AMOLED" },
      { "label": "Bluetooth Version", "value": "V5.3" },
      { "label": "Battery", "value": "Up to 10 days" },
      { "label": "Water Resistance", "value": "IP68" }
    ],
    "related": [
      {
        "id": 5013,
        "name": "Watch Nova 2",
        "cover_url": "https://cdn.example.com/products/5013/thumb.jpg",
        "catalog_group": { "id": 11, "slug": "wearable", "name": "Wearable" },
        "brand": { "id": 3, "name": "Oraimo" },
        "is_new": false,
        "price": { "amount": 599000, "original_amount": null, "currency": "IDR" },
        "stock": { "qty": 0, "is_available": false }
      }
    ]
  },
  "status": 200,
  "error": 0
}
```

### 3.5 Ringkasan Home — `GET /catalog/summary` (baru)

Menggantikan data statis Home ("Products from trusted brands across more than 25 categories", "Our Popular Products" / "Our Product Catalogs"). Logo brand diambil dari 3.2.

| Parameter | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `branch_id` | int | tidak | Hitungan & produk per cabang |
| `limit` | int | tidak | Jumlah produk populer. Default 8 |

| Field `data` | Tipe | Wajib | Keterangan |
|---|---|---|---|
| `product_count` | int | ya | Jumlah produk aktif |
| `category_count` | int | ya | Jumlah kategori aktif |
| `brand_count` | int | ya | Jumlah brand aktif |
| `popular` | `product_card[]` | ya | Urutan dari backend (mis. paling sering dilihat/dibeli; boleh dikurasi) |

```json
{
  "data": {
    "product_count": 27,
    "category_count": 6,
    "brand_count": 6,
    "popular": [
      {
        "id": 5101,
        "name": "SpaceBuds 2",
        "cover_url": "https://cdn.example.com/products/5101/thumb.jpg",
        "catalog_group": { "id": 12, "slug": "audio", "name": "Audio" },
        "brand": { "id": 3, "name": "Oraimo" },
        "is_new": false,
        "price": { "amount": 499000, "original_amount": null, "currency": "IDR" },
        "stock": { "qty": 30, "is_available": true }
      }
    ]
  },
  "status": 200,
  "error": 0
}
```

## 4. Aturan bisnis

### 4.1 `is_new`

- `true` bila produk dibuat (atau pertama kali diaktifkan) **≤ 30 hari** sebelum waktu request.
- Dihitung di server, bukan di app. Batas 30 hari sebaiknya bisa diubah dari konfigurasi backend.

### 4.2 Produk terkait (`related`)

- Produk dari **kategori yang sama**, aktif, bukan produk itu sendiri.
- Bila `branch_id` dikirim: hanya yang dijual di cabang tersebut.
- Maksimal **6** produk. Urutan: produk baru dulu, lalu `newest`.

### 4.3 Pencarian & urutan

- `search` dicocokkan sebagian (mis. `watch` → "oraimo Watch Pro 2"), tidak peka huruf besar/kecil, minimal 2 karakter.
- `sort=newest` = default; produk tanpa tanggal dibuat diletakkan terakhir.

### 4.4 Gambar

| Kegunaan | Field | Ukuran | Rasio |
|---|---|---|---|
| Kartu grid / terkait / Home | `cover_url`, `images[].thumb_url` | ±400×400 px | 1:1 |
| Galeri detail | `images[].url` | ±1080×1080 px | 1:1 |
| Logo brand | `logo_url` | ±200×200 px | 1:1, latar transparan |
| Ikon kategori | `icon_url` | SVG atau ±96 px | 1:1, monokrom |

URL gambar harus HTTPS dan bisa diakses tanpa token.

### 4.5 Harga & stok

- Belum ditampilkan di UI saat ini, tetapi wajib ada di respons agar siap dipakai tanpa perubahan kontrak.
- `price.amount` dalam satuan mata uang utuh (IDR tanpa desimal).
- Tanpa `branch_id`, `stock` = `null`.

## 5. Pemetaan ke UI aplikasi

| UI | Endpoint | Parameter yang dikirim app |
|---|---|---|
| Bar kategori | 3.1 | `branch_id` |
| Chip brand | 3.2 | `branch_id`, `catalog_group_id` (bila kategori dipilih) |
| Grid "All" | 3.3 per section | `branch_id`, `group_by=catalog_group`, `per_group=6`, + `brand_id` / `search` bila diisi |
| Grid satu kategori | 3.3 datar | `branch_id`, `catalog_group_id`, + `brand_id` / `search`, `page` (scroll) |
| Hasil kosong ("Product not found") | 3.3 | `data: []` |
| Detail produk | 3.4 | `id`, `branch_id` |
| Produk terkait | 3.4 (`related`) | buka detail dengan `id` produk terkait |
| Home | 3.5 + 3.2 | `branch_id` |

App mengirim `branch_id` dari cabang yang dipilih di header (`GET /store/branches`). Saat user mengganti cabang, katalog dimuat ulang.

## 6. Status di aplikasi

- Konstanta endpoint sudah ada di `lib/core_feat/network/endpoints.dart`: `catalogGroupList`, `catalogList`, `catalogBrandList`, `catalogShow`. `catalogSummary` belum ada.
- Tab Product masih memakai `ProductStatic` dan memfilter di app. Setelah kontrak ini disepakati, app akan:
  1. menambah model respons + `ProductRemote`, didaftarkan lewat `ServerAccess.pick` (`menu_ft.dart`);
  2. memindahkan filter, pencarian, dan section "All" ke server;
  3. menambah file mock di `assets/mock/get/` (`catalog.group.lists.json`, `catalog.brand.lists.json`, `catalog.lists.json`, `catalog.show._id.json`, `catalog.summary.json`) agar app bisa jalan dengan kontrak ini sebelum backend siap (`--dart-define=DATA_SOURCE=mock`).
