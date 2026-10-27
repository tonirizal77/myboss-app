# PRD-006: MyBoss App — Kontrol Akses Server: Data Mock & Real API

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Satu kontrol pusat di `lib/core_feat/config/` untuk memilih sumber data aplikasi: **mock** (file JSON lokal) atau **api** (server asli).
2. Aplikasi bisa dijalankan dan diuji end-to-end tanpa backend (demo, QA, pengembangan UI saat endpoint belum siap).
3. Mekanisme mock lama yang tersebar (`kMockDeleteAccountApi`, source `*Static`) disatukan ke kontrol pusat ini.

## Keputusan & Asumsi

1. Mode dipilih lewat `--dart-define=DATA_SOURCE=mock|api`, default `api`. Tidak ada toggle di UI.
2. Flavor `live` dan build release selalu dipaksa `api`, apa pun nilai `DATA_SOURCE`.
3. Saklar berada di level HTTP: `MockServerInterceptor` dipasang di Dio `DioHttp3.shared.request`. Semua `*RemoteImpl` tidak berubah; model & parser yang dipakai sama dengan mode api.
4. Data mock berupa file JSON di `assets/mock/<method>/<path>.json`, satu folder per method dengan `/` pada path diganti `.` (mis. `assets/mock/get/store.branches.json`) — folder aset Flutter tidak rekursif, jadi pubspec cukup 4 entri. Path berparameter (`{id}` / angka) memakai `_id`. Query string diabaikan.
5. Global + override per endpoint: `ServerAccess.mockOverrides` berisi endpoint yang tetap dijawab mock walau mode `api` (untuk endpoint yang backend-nya belum siap).
6. Kalau file mock tidak ada, request gagal dengan pesan `Mock not found: <METHOD> <path>` — tidak pernah diam-diam jatuh ke server.
7. Isi mock adalah data sintetis (tanpa data pelanggan asli). Bentuknya diturunkan dari model aplikasi; `/store/branches` mengikuti respons API final.
8. Source statis (`ProductStatic`, `PromoStatic`, `PointsStatic`, `GuestHomeStatic`) belum punya endpoint; tetap dipakai di kedua mode, didaftarkan lewat `ServerAccess` dengan TODO supaya penggantian ke remote cukup di satu tempat.

## Out of Scope

- Toggle mode di UI / tersimpan di SharedPreferences.
- Membuat `*RemoteImpl` untuk Product, Promo, Points, Guest Home.
- Skenario error per endpoint di mode mock (mis. OTP salah); mock hanya menyediakan respons sukses.
- Mengubah `mobile_app_core`.

## Target Selesai

2026-10-29 (25 task × 20 menit, 15 task per hari kerja, mulai 2026-10-28).

## User Stories / Scope

### Story: Kontrol Pusat ServerAccess

Sebagai developer, saya ingin satu tempat di `config/` untuk memilih mode mock atau api agar tidak perlu mengubah tiap remote.

**Acceptance Criteria:**
- `ServerAccess.mode` membaca `DATA_SOURCE`; default `api`.
- Flavor `live` dan build release selalu `api`.
- Endpoint di `mockOverrides` tetap mock walau mode `api`.
- Mode aktif tercetak di log saat startup.

**Task breakdown (4):**
1. Enum DataSourceMode & ServerAccess di core_feat/config (mode dari --dart-define DATA_SOURCE)
2. Pengaman: flavor live & build release selalu mode api
3. Override per endpoint (mockOverrides) untuk endpoint yang backend-nya belum siap
4. Log mode aktif saat startup + dokumentasi di AppSetting

### Story: Mock Server Interceptor

Sebagai developer, saya ingin request HTTP dijawab dari file JSON lokal saat mode mock, tanpa menyentuh kode remote.

**Acceptance Criteria:**
- Mode mock: request tidak pernah sampai ke network.
- Mode api: request diteruskan apa adanya (kecuali `mockOverrides`).
- File mock tidak ada → error jelas `Mock not found: <METHOD> <path>`.
- Respons mock tetap terlihat di log/Alice.

**Task breakdown (5):**
1. MockServerInterceptor: jawab request dari assets/mock/<method>/<path>.json
2. Dukungan path dinamis ({id}) dan query string diabaikan
3. Jeda simulasi & error jelas saat file mock tidak ada
4. Respons mock tetap diteruskan ke interceptor log/Alice
5. Daftarkan interceptor di bootstrap main.dart

### Story: Data Mock JSON

Sebagai developer/QA, saya ingin data mock untuk semua endpoint yang dipakai aplikasi agar alur utama bisa dijalankan tanpa backend.

**Acceptance Criteria:**
- Ada file mock untuk ke-25 request yang dipakai aplikasi.
- Setiap file bisa di-parse oleh model terkait.
- Tidak ada data pelanggan asli.

**Task breakdown (7):**
1. Mock Client Token (client/login, token/refresh)
2. Mock Auth OTP (sign-in, sign-in/send, sign-up, sign-up/send, sign-out)
3. Mock Profile (profile/info, avatar/list, generate-code, PUT customer/update)
4. Mock Update Phone/Email OTP (send-old, verify-old, send-new, verify)
5. Mock Store & Store Branch (store/data, store/branches)
6. Mock Voucher, About Us & FAQ
7. Mock Delete Account (send-otp, request, cancel, reasons, DELETE profile/delete-account)

### Story: Migrasi Mock Lama & Source Statis

Sebagai developer, saya ingin mekanisme mock lama disatukan ke ServerAccess agar hanya ada satu cara.

**Acceptance Criteria:**
- `delete_account_local_mock.dart` dan pemanggilannya terhapus; alur delete account di mode mock tetap jalan.
- Source statis didaftarkan lewat `ServerAccess`.
- Ada konfigurasi run "staging (mock)" dan dokumentasinya.

**Task breakdown (3):**
1. Hapus delete_account_local_mock.dart dan 4 pemanggilannya di remote
2. Daftarkan ProductStatic, PromoStatic, PointsStatic, GuestHomeStatic lewat ServerAccess (+TODO remote)
3. launch.json staging (mock) untuk macOS & Android + update CLAUDE.md & ENDPOINT-MIGRATION.md

### Story: QA Kontrol Akses Server

**Acceptance Criteria:**
- `flutter analyze` = No issues found; tidak ada kegagalan test baru.
- Alur login → Home → pilih cabang → Account jalan di mode mock (macOS & Android).

**Task breakdown (6):**
1. Unit test ServerAccess (mode, pengaman live/release, override)
2. Unit test MockServerInterceptor (mock ditemukan, tidak ditemukan, mode api diteruskan)
3. Test parse: setiap file mock bisa di-parse model terkait
4. flutter analyze + flutter test
5. Jalankan macOS mode mock lewat Marionette (login, Home, cabang, Account)
6. Uji Android staging mode mock (RMX5566)
