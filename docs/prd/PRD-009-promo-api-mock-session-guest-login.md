# PRD-009: MyBoss App — Promo dari API, Mock Server Meniru API, Session Data Source & Promo Guest vs Login

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Tab Promo dan rewards di Home memakai data dari API cabang yang dipilih (`/promotion/loyalty-points/list`, `/promotion/discount-vouchers/list`), menggantikan `PromoStatic`.
2. Mode mock meniru aturan server: filter `search[n]`, paging + `meta`, detail per id, dan data per cabang.
3. Pindah data source (mock ↔ api) tidak lagi menyebabkan 401: token dari sumber lain dibuang.
4. Token lama dibuang begitu konfigurasi access server berubah.
5. Promo memanggil endpoint sesuai status login: guest hanya voucher; user login points + voucher secara paralel.

Rekap pekerjaan yang sudah dikerjakan (2026-11-04 dan 2026-11-05) dan belum tercatat di PRD lain.

## Keputusan & Asumsi

1. Promo memakai domain cabang lewat `ConfigServer.urlFor` (dibuat di PRD-008, MYB-341) dengan `per_page` 100 (tebakan sisi app, belum dikonfirmasi backend).
2. Mock per cabang membaca `<name>@<url_id>.json` dulu, lalu file biasa. `MockServerSimulation` menerapkan filter (`=`/`like`), `page`/`per_page` dengan `meta` dihitung ulang, dan `/catalog/show/{id}` (404 bila id tidak ada di katalog cabang). Produk mock membawa `brand_id` khusus mock. Ini melengkapi asumsi no. 9 PRD-008 ("filter tidak menyaring di mode mock").
3. Mode terakhir (`mock`/`api`) disimpan di SharedPreferences (`data_source_mode`). Run pertama setelah update ini selalu menghapus session satu kali (login ulang sekali).
4. Token tidak dikirim manual: `DioHttp3.headerToken` mengirim token yang tersimpan (client token untuk guest, user token setelah login).
5. Promo: bila hanya satu endpoint gagal, section lain tetap tampil dan panel yang gagal menampilkan retry. Bila semua gagal, error satu halaman dengan retry.

## Pertanyaan Terbuka

1. Section rewards di **Guest Home** tidak tampil lagi karena datanya dari `promoPointList`, yang tidak dipanggil untuk guest. Perlu konfirmasi PO/desain: tetap disembunyikan, atau backend menyediakan endpoint rewards publik.

## Out of Scope

- Perbaikan 15 test yang sudah gagal sebelumnya (`ResponsiveGridOrWrap`/`ResponsivePage`, Points page layout, endpoint hayo delete-account, counter smoke test).
- Pekerjaan PRD-008 (katalog produk), termasuk `ConfigServer.urlFor` dan `endpointPath` domain cabang (MYB-341).

## Target Selesai

2026-11-06 (29 task × 30 menit). Story E & F: 2026-11-04; Story A–D: 2026-11-05; QA device: 2026-11-06.

## User Stories / Scope

### Story: Promo dari API (Loyalty Points & Discount Vouchers)

Sebagai pengguna, saya ingin promo dan rewards yang tampil sesuai cabang yang saya pilih.

**Acceptance Criteria:**
- Promo dan rewards Home diambil dari API cabang yang dipilih, bukan `PromoStatic`.
- Respons staging dan file mock ter-parse ke model dan entity.
- Voucher tanpa kode atau tanpa masa berlaku tetap tampil rapi.

**Task breakdown (9):**
1. Endpoint promoPointList & promoVoucherList di endpoints.dart (grup Promo, Point & Voucher)
2. Model freezed PromoPointsModel / PromoVouchersModel + build_runner
3. Mapper PromoPoint ke RewardPreview, PromoVoucher ke Voucher (tanpa expiry = null)
4. PromoRemote (domain cabang, per_page 100) + PromoRepoImpl; hapus PromoStatic
5. PromoCubit per cabang, abaikan respons usang; PromoBranchSync reload saat ganti cabang
6. Home guest & signed-in: rewards dari PromoCubit
7. VoucherTicket: kotak kode disembunyikan bila kosong, voucher tanpa masa berlaku
8. File mock promotion: default + 3 cabang (jogja/magelang/semarang)
9. Test promo (cubit + widget 3 ukuran) + daftar mock di mock_assets_test

### Story: Mock Server Meniru Aturan API

Sebagai developer, saya ingin mode mock berperilaku seperti server agar filter, paging, dan detail bisa diuji tanpa backend.

**Acceptance Criteria:**
- Filter, paging, dan detail di mode mock berperilaku seperti server.
- Data per cabang diambil dari file cabang itu, dengan fallback ke file default.

**Task breakdown (5):**
1. Mock per cabang: baca <name>@<url_id>.json dulu, lalu fallback ke file biasa
2. MockServerSimulation: filter search[n] (= / like)
3. MockServerSimulation: page / per_page + meta dihitung ulang; lists/group membuang grup kosong
4. /catalog/show/{id} dari katalog cabang (404 bila id tidak ada); brand_id khusus mock
5. Test simulasi: file cabang, filter + paging, lists/group, detail/404

### Story: Session Bersih Saat Ganti Data Source (Mock ↔ API)

Sebagai developer/tester, saya ingin berpindah mode mock dan api tanpa error 401.

**Acceptance Criteria:**
- Setelah run mock, run api tidak mengirim `mock-access-token` lagi (tidak ada 401).
- Data profil dan akun dari sesi mock tidak tampil di mode api.

**Task breakdown (3):**
1. Analisa 401: token mock tersimpan terkirim ke server di mode api
2. ServerAccess.syncSession: simpan mode terakhir, hapus token + phone saat mode berubah
3. main.dart: panggil syncSession setelah InjectionFeatures, reset ProfileBloc & AccountBloc

### Story: Deteksi Pergantian Access Server

**Acceptance Criteria:**
- Token dihapus begitu salah satu dari client id, domain, atau mobile access berubah.

**Task breakdown (1):**
1. AccessServer._isChanged: ganti && menjadi ||

### Story: Promo — Endpoint Sesuai Guest vs Login

Sebagai guest, saya melihat voucher publik; sebagai member, saya melihat rewards points dan voucher.

**Acceptance Criteria:**
- Guest hanya memanggil `GET /promotion/discount-vouchers/list`; panel Points disembunyikan, tab Points hanya ajakan sign-up.
- User login memanggil `loyalty-points/list` dan `discount-vouchers/list` secara paralel.
- Promo dimuat ulang saat cabang berganti dan saat login/logout; konten sesi lama langsung dikosongkan.
- Satu request gagal: retry per panel. Semua gagal: error satu halaman dengan retry.

**Task breakdown (7):**
1. Domain: PromoParams, PromoSection, PromoContent.failed; usecase menerima params
2. PromoRepoImpl: guest voucher saja; login paralel (.wait); penanganan partial failure
3. PromoCubit: cache per cabang + status login, reset konten saat ganti sesi, retry()
4. PromoBranchSync: reload saat cabang berganti & login/logout
5. Promo page & panel: sembunyikan Points untuk guest, tab Points guest hanya ajakan sign-up
6. PromoLoadError (halaman & per panel) + key translasi promo.load_failed / promo.retry
7. Test: guest/login, partial failure, semua gagal, logout; home signed-in test pakai UserBloc

### Story: QA Session & Promo Guest/Login

**Acceptance Criteria:**
- `flutter analyze` = No issues found; tidak ada kegagalan test baru.
- Terverifikasi di macOS (3 ukuran) dan Android staging.

**Task breakdown (4):**
1. flutter analyze + flutter test (catat 15 test lama yang gagal, di luar scope)
2. Rekap pekerjaan & draf PRD-009
3. Verifikasi macOS 3 ukuran: mock ke api tanpa 401, Promo guest vs login
4. Uji Android staging (RMX5566): ganti mode, login/logout, Promo
