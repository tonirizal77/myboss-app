# PRD-010: MyBoss App — Beranda dari API (Katalog & Poin)

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Brand, jumlah kategori/produk, dan katalog di Beranda diambil dari API cabang yang dipilih, menggantikan `GuestHomeStatic`.
2. Saldo poin di Beranda diambil dari `GET /profile/info` (`total_point`), menggantikan angka statis `PointsStatic`.
3. Data yang belum disediakan backend disembunyikan atau memakai pengganti sementara, dan dicatat sebagai permintaan ke backend.

## Keputusan & Asumsi

1. Endpoint per section Beranda:

   | Section | Endpoint |
   |---|---|
   | Jumlah kategori | `GET /catalog/group/lists` → `meta.total` |
   | Jumlah produk | `GET /catalog/lists?per_page=1` → `meta.total` |
   | Brand | `GET /catalog/brand/lists` |
   | Katalog preview | `GET /catalog/lists/group` (1 produk per kategori) |
   | Saldo poin | `GET /profile/info` → `total_point` (sudah dimuat `ProfileBloc`) |
   | Reward poin | `GET /promotion/loyalty-points/list` (sudah, PRD-009) |

2. Semua request memakai domain cabang (`ConfigServer.urlFor`), dijalankan paralel, dan dimuat ulang saat cabang berganti; respons usang diabaikan.
3. Logo brand: nama brand dicocokkan ke aset lokal sampai backend menyediakan logo (dikonfirmasi 2026-11-05). Brand tanpa aset ditampilkan sebagai teks.
4. "Produk populer" untuk member sementara sama dengan katalog preview guest, sampai backend punya flag/sort populer (dikonfirmasi 2026-11-05).
5. Bagian "X poin hangus dalam N hari" disembunyikan sampai backend menyediakan datanya.
6. Satu section gagal dimuat → hanya section itu disembunyikan; Beranda tetap tampil.

## Permintaan ke Backend

1. Field logo di `GET /catalog/brand/lists` (mis. `photo_md`, seperti grup katalog).
2. Sumber produk populer: flag `is_popular`, sort `popular`, atau endpoint terpisah.
3. Info poin hangus: `expiring_point` + `expiring_at` di `profile/info`, atau endpoint ringkasan poin.
4. Endpoint riwayat dan detail transaksi poin (halaman Points).

## Out of Scope

- Riwayat dan detail poin (halaman Points) — endpoint belum ada.
- Perubahan desain Beranda.

## Target Selesai

2026-11-09 (15 task × 30 menit, mulai 2026-11-06).

## User Stories / Scope

### Story: Data Beranda dari API Katalog

Sebagai pengguna, saya ingin brand, kategori, dan katalog di Beranda sesuai cabang yang saya pilih.

**Acceptance Criteria:**
- Jumlah kategori, jumlah produk, brand, dan katalog preview diambil dari API cabang yang dipilih.
- Ganti cabang memuat ulang Beranda; respons cabang lama diabaikan.
- Brand tanpa logo lokal tampil sebagai teks.
- Section yang gagal atau kosong disembunyikan tanpa menggagalkan Beranda.

**Task breakdown (6):**
1. GuestHomeRemote: panggil 4 endpoint katalog paralel per cabang
2. Mapper: total dari meta, katalog preview 1 produk per kategori (nama kategori sesuai bahasa, photo_md)
3. Logo brand: cocokkan nama ke aset lokal, brand tanpa logo tampil sebagai teks
4. GuestHomeCubit per cabang, abaikan respons usang, reload saat ganti cabang
5. Daftarkan GuestHomeRemote di home_ft (mode mock & api), hapus GuestHomeStatic
6. Loading/error per section (section disembunyikan bila gagal atau kosong)

### Story: Saldo Poin dari Profil

Sebagai member, saya ingin saldo poin di Beranda sesuai akun saya.

**Acceptance Criteria:**
- Saldo poin Beranda = `total_point` dari `profile/info`.
- Bagian poin hangus tidak tampil selama datanya tidak ada.

**Task breakdown (2):**
1. PointsCubit: saldo dari ProfileBloc total_point
2. Bagian poin hangus disembunyikan bila datanya tidak ada

### Story: Produk Populer (Sementara)

**Acceptance Criteria:**
- Section "Produk Populer Kami" (member) memakai katalog per kategori dari API, ditandai `TODO(backend)`.

**Task breakdown (1):**
1. Produk populer = katalog per kategori + TODO(backend)

### Story: QA Beranda API

**Acceptance Criteria:**
- `flutter analyze` = No issues found; tidak ada kegagalan test baru.
- Terverifikasi di macOS (3 ukuran, mode mock) dan Android staging.
- Permintaan backend terdokumentasi di `docs/api`.

**Task breakdown (6):**
1. Unit test remote, mapper, dan cubit (remote palsu)
2. Widget test Beranda guest & login di 3 ukuran
3. flutter analyze + flutter test
4. Verifikasi macOS 3 ukuran (mode mock)
5. Uji Android staging (RMX5566)
6. Dokumen permintaan backend di docs/api
