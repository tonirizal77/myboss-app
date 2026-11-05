# PRD-008: MyBoss App — Tab Product dari API Katalog

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Tab **Product** memakai data katalog dari backend, menggantikan data statis `ProductStatic`: bar kategori, chip brand, tampilan "All" per kategori, grid satu kategori, dan detail produk.
2. Filter kategori, brand, dan pencarian dijalankan di **server**.
3. Katalog mengikuti **cabang** yang dipilih di header dan dimuat ulang saat cabang diganti.

Acuan respons: [PRODUCT-CATALOG-API-REVIEW.md](../api/PRODUCT-CATALOG-API-REVIEW.md) (contoh respons staging 2026-10-30).

## Keputusan & Asumsi

1. Endpoint per komponen:

   | Komponen | Endpoint |
   |---|---|
   | `ProductCategoryBar` | `GET /catalog/group/lists` |
   | `ProductBrandChips` | `GET /catalog/brand/lists` |
   | "All" (section per kategori) | `GET /catalog/lists/group` |
   | Grid satu kategori | `GET /catalog/lists` |
   | Detail produk | `GET /catalog/show/{id}` |

2. Filter memakai format Postman `search[n][search_column|search_text|search_condition]`, indeks berurutan dari 0:
   - kategori: `product_group_id` `=` (hanya grid),
   - brand: `brand_id` `=`,
   - nama: `name` `like` (dikonfirmasi 2026-11-02).
   `search_operator` tidak dikirim (tidak ada di request Postman terbaru). Filter brand dan nama juga dikirim ke `/catalog/lists/group`.
3. **Cabang = domain** (dikonfirmasi 2026-11-02). Request katalog memakai `{baseURL}/{locale}/{url_id cabang}` lewat URL lengkap. Base URL global Dio tidak diubah, sehingga endpoint lain (auth, profil, store) tetap memakai domain dari `.env`. Tanpa cabang terpilih, katalog memakai domain default.
4. Pencarian: debounce 400 ms, minimal 2 karakter. Respons yang datang setelah filter berganti diabaikan.
5. Grid: `per_page` 15 dengan "muat lagi" saat scroll mendekati bawah selama `page` < `total_page`.
6. Nama kategori memakai `name_id` saat bahasa aplikasi Indonesia, selain itu `name_en`.
7. Ikon kategori dari `photo_md`. URL placeholder `no_photo` atau gagal dimuat → ikon bawaan berdasarkan nama. Gambar tidak diwarnai ulang (belum diketahui monokrom atau tidak).
8. Detail: sheet langsung tampil dengan nama dan foto dari kartu, lalu spesifikasi, deskripsi, label, dan produk terkait menyusul dari `/catalog/show/{id}`. Galeri memakai `product_photos` bila ada, selain itu foto kartu. Badge menampilkan teks `label_tag` apa adanya ("New Release", "Sale"), disembunyikan bila kosong.
9. Mode mock memilih file berdasarkan path saja, jadi filter tidak menyaring di mode mock. `MockServerInterceptor.endpointPath` dibuat mengenali URL lengkap dengan domain cabang.

## Risiko / Belum Pasti

- Token client dipakai di domain cabang. Belum diuji apakah backend menerimanya.
- Ikon kategori CloudFront menjawab 403 tanpa token (dicek 2026-10-30). Sampai backend memperbaiki, ikon bawaan yang tampil.
- Bentuk elemen `product_photos` belum diketahui (sampel selalu kosong). Parser menerima string URL atau objek dengan `photo_md`/`photo_lg`/`photo`/`url`.
- Detail tidak memuat `photo_md`, kategori, maupun brand (review K2).

## Out of Scope

- Home ("Our Popular Products", logo brand): tetap statis.
- Harga dan stok.
- Perubahan kontrak di backend (dilacak di dokumen review).

## Target Selesai

2026-11-03 (20 task × 30 menit, mulai 2026-11-02).

## User Stories / Scope

### Story: Data Layer Katalog dari API

Sebagai developer, saya ingin feature product memakai remote API katalog dengan domain cabang, sehingga tab Product bisa memakai data backend.

**Acceptance Criteria:**
- `ProductStatic` dihapus. `ProductRemote` memanggil 5 endpoint katalog dengan filter `search[n]` dan domain cabang.
- Respons staging dan file mock ter-parse ke model dan entity.
- Mode mock tetap berjalan dengan URL berdomain cabang.

**Task breakdown (6):**
1. ConfigServer.urlFor (domain cabang) + MockServerInterceptor.endpointPath untuk domain lain
2. Model freezed katalog (grup, item, brand, detail, meta) + build_runner
3. CatalogQuery: builder search[n] (product_group_id, brand_id, name like) + page/per_page
4. ProductRemote, repository & usecase 5 endpoint; hapus ProductStatic
5. Mapper model ke entity (nama per bahasa, foto, label, spesifikasi, produk terkait)
6. File mock 5 endpoint katalog + daftar di mock_assets_test

### Story: Tab Product dari API

Sebagai pengguna, saya ingin melihat dan menyaring katalog produk cabang yang saya pilih.

**Acceptance Criteria:**
- Bar kategori dan chip brand berasal dari API.
- "All" menampilkan section per kategori dari `/catalog/lists/group`. Memilih kategori menampilkan grid dari `/catalog/lists` dengan muat lagi.
- Brand dan pencarian menyaring di server. Hasil kosong menampilkan "Product not found".
- Mengganti cabang memuat ulang katalog.

**Task breakdown (6):**
1. ProductCubit: kategori, brand, All dan grid dari server; debounce pencarian; abaikan respons usang
2. Grid: muat lagi saat scroll (page/total_page)
3. Ganti cabang memuat ulang katalog (domain = url_id cabang)
4. ProductCategoryBar: ikon dari photo_md dengan fallback ikon bawaan
5. ProductBrandChips memakai id brand
6. Section All dari /catalog/lists/group (See more ke kategori)

### Story: Detail Produk dari API

Sebagai pengguna, saya ingin melihat spesifikasi dan produk terkait dari data backend.

**Acceptance Criteria:**
- Detail memanggil `/catalog/show/{id}`. Status muat dan gagal terlihat.
- Badge `label_tag`, deskripsi, dan spesifikasi hanya tampil bila ada.
- Membuka produk terkait memuat detailnya di sheet yang sama.

**Task breakdown (2):**
1. ProductDetailCubit memuat /catalog/show/{id} (dan produk terkait)
2. Detail sheet: foto kartu sebagai fallback galeri, badge label_tag, bagian kosong disembunyikan

### Story: QA Katalog Produk

**Acceptance Criteria:**
- `flutter analyze` = No issues found; tidak ada kegagalan test baru.
- Terverifikasi di macOS (3 ukuran, mode mock) dan Android staging.

**Task breakdown (6):**
1. Unit test: query builder, endpointPath domain cabang, mapper, cubit (remote palsu)
2. Widget test 3 ukuran: All, filter, kosong, detail
3. flutter analyze + flutter test
4. Verifikasi macOS 3 ukuran (mode mock)
5. Uji Android staging (RMX5566)
6. Update dokumen API (tanggapan review, status di PRODUCT-CATALOG-API)
