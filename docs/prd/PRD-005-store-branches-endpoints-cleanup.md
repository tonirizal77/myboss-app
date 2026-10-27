# PRD-005: MyBoss App — StoreBranches, Rapikan Endpoints & Bersihkan Sisa Hayo

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Daftar cabang (Branch selector, header Home, tab Stores) memakai respons final `GET /store/branches?lat=&lon=` dan diurutkan dari lokasi perangkat.
2. Semua nama fitur daftar cabang konsisten memakai `StoreBranch*`.
3. `endpoints.dart` tersusun sama dengan folder Postman MyBoss sehingga mudah dibandingkan.
4. Sisa kode, aset, endpoint, dan copy hayo (menu Yogurt/Topping, Stamps) hilang dari codebase — melanjutkan MYB-83 yang ternyata belum tuntas.

## Keputusan & Asumsi

1. Folder fitur `stores` tetap, karena juga berisi `StoreModel`/`StoreBloc` (`/store/data`). Yang di-rename hanya bagian daftar cabang: `StoreList` → `StoreBranch`, `StoreListModel` → `StoreBranchesModel`, `StoresListBloc` → `StoreBranchesBloc`, `GetStoreListUc` → `GetStoreBranchesUc`, `BranchCubit` → `StoreBranchCubit`, `StoresPage` → `StoreBranchesPage`.
2. Widget `BranchCard`, `BranchHeader`, `BranchSelectorSheet` tetap, karena namanya mengikuti komponen di Figma.
3. Status buka/tutup memakai `is_open` dari API (tidak ditebak lagi). Jarak dihitung dari posisi perangkat; kalau posisi tidak ada, memakai `distance` dari API.
4. `lat`/`lon` hanya dikirim kalau posisi perangkat diketahui. Header Home mengambil daftar sekali lagi setelah posisi didapat.
5. Logo `.../no_photo/...` dari backend dianggap kosong, sehingga yang tampil avatar cabang bawaan. Link Maps dibuat dari `location_lat`/`lon` karena `google_map_link` dan `phone` tidak ada di respons.
6. Nama konstanta di `endpoints.dart` tidak diganti; hanya urutan dan komentar `METHOD <nama request Postman>`. Forgot Password tidak dipakai aplikasi, cukup TODO.
7. Penggantian nama `BranchCubit` mengubah key HydratedStorage: pilihan cabang lama tidak terbaca sekali, lalu cabang terdekat dipilih ulang otomatis.

## Out of Scope

- Pagination / load-more daftar cabang (`meta` sudah dimodelkan) dan tampilan `today_hours`.
- Menyambungkan tab Product (`ProductCubit`) ke endpoint katalog MyBoss.
- Endpoint & fitur points pengganti stamps.
- Memperbaiki 22 test yang sudah gagal sebelumnya (responsive, promo, product, delete-account, widget_test).

## Target Selesai

2026-10-28 (24 task × 20 menit, 15 task per hari kerja, mulai 2026-10-27).

## User Stories / Scope

### Story: StoreBranches — Daftar Cabang dari API

Sebagai pengguna, saya ingin melihat daftar cabang Oraimo yang benar (status buka/tutup, kota, jarak dari lokasi saya) agar bisa memilih cabang terdekat.

**Acceptance Criteria:**
- Model mem-parse respons `/store/branches` termasuk `meta`, `app_status`, `distance` int/double.
- Request mengirim `lat`/`lon` perangkat bila izin lokasi ada.
- Chip status memakai `is_open`; subtitle memakai `city_name` + jarak.
- Tidak ada lagi nama `StoreList`/`StoresList*` di kode.

**Task breakdown (9):**
1. Analisa respons /store/branches vs model StoreList lama
2. Model StoreBranchesModel, StoreBranch & StoreBranchesMeta sesuai respons API
3. Rename fitur daftar cabang ke StoreBranch* (bloc, usecase, repo, cubit, page, widget)
4. Kirim lat/lon perangkat ke API dan fetch ulang setelah posisi didapat
5. StoreBranchX: distanceKm (posisi lokal lalu distance API), logoUrl, mapsUrl
6. Sesuaikan BranchCard, BranchHeader, BranchSelectorSheet & CardStoreBranch ke field baru
7. Perbaiki 6 error analyzer dari refactor location yang belum selesai
8. Unit/widget test StoreBranch (parse respons, round-trip, jarak, logo, maps)
9. Update ENDPOINT-MIGRATION.md bagian Cabang

### Story: Rapikan endpoints.dart Sesuai Postman

Sebagai developer, saya ingin `endpoints.dart` tersusun sama dengan folder Postman MyBoss agar mudah dicocokkan.

**Acceptance Criteria:**
- Urutan section: Product › Store › Account Customer (Auth, Profile) › Client Token, lalu endpoint di luar Postman.
- Tiap konstanta punya komentar `METHOD <nama request Postman>`.
- Tidak ada data kontak asli di komentar.

**Task breakdown (4):**
1. Bandingkan endpoints.dart dengan folder Postman MyBoss
2. Susun ulang section Product, Store, Account Customer, Client Token + komentar METHOD
3. Tambah catalogGroupList & catalogBrandList, TODO Forgot Password & Old Email
4. Ganti contoh nomor HP asli di komentar endpoints dengan nilai dummy

### Story: Bersihkan Sisa Hayo (Menu Yogurt/Topping & Stamps)

Sebagai developer, saya ingin kode dan aset hayo yang tidak dipakai MyBoss dihapus agar codebase bersih (lanjutan MYB-83).

**Acceptance Criteria:**
- Tidak ada lagi kode/endpoint Yogurt, Topping, Stamps.
- Aset, key translasi, dan dependency yang hanya dipakai kode tsb ikut terhapus.
- Tab Product, Home, dan Account tetap berjalan.

**Task breakdown (7):**
1. Hapus menu Yogurt/Topping (datasource, repo, model, MenuBloc, widget, DI)
2. Hapus Stamps di Home (cubit, model, remote, widget, DI)
3. Hapus Riwayat Stamps di Account (page, widget, event, state, flow, route, field ProfileModel)
4. Hapus endpoint, enum TypeStamps & flag isWatchStamp hayo
5. Hapus 12 aset yatim, folder assets/gif & dependency lottie
6. Hapus 23 key translasi yatim (en/id) dan generate ulang LocaleKeys
7. Update ENDPOINT-MIGRATION.md bagian Katalog & Stamps

### Story: QA StoreBranches & Cleanup Hayo

**Acceptance Criteria:**
- `flutter analyze` = No issues found; test stores lulus, tidak ada kegagalan test baru.
- Terverifikasi di macOS (3 ukuran) dan Android staging.

**Task breakdown (4):**
1. build_runner + flutter analyze = No issues found
2. flutter test: test stores lulus, 22 kegagalan lama di luar scope dicatat
3. Verifikasi cabang, tab Product & Account di macOS 3 ukuran lewat Marionette
4. Uji di Android staging RMX5566 (izin lokasi & jarak cabang)
