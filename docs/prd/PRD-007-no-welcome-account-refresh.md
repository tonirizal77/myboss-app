# PRD-007: MyBoss App — Tanpa Welcome Page & Refresh Account Setelah Login

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Alur aplikasi hanya: **Splash** (loading & proses data) → **guest mode** atau **user signed-in**. Halaman Welcome tidak pernah tampil dan dihapus dari aplikasi.
2. Setelah login, halaman Account langsung menampilkan data user (profil & jumlah voucher) tanpa perlu restart / pull-to-refresh.

Ditemukan saat verifikasi PRD-006 (mode mock).

## Keputusan & Asumsi

1. Semua jalur yang sekarang membuka Welcome diarahkan ke Main Page sebagai guest (`swithMenuDrawer(true)` + `MainPageFlow.goToMainPage`), lewat satu helper baru `AuthFlows.goToGuestMain`.
2. Guest mode selalu aktif di MyBoss (dikonfirmasi 2026-10-27). Flag server `mobile_setting.is_guest_mode` / `signin_required` tidak lagi menentukan Welcome vs guest; `AppSetting.isGuestModeEnabled` dihapus beserta cabang `else` yang membuka Welcome.
3. Jalur yang terdampak: `AuthFlowsListen` (check auth & client token), `UserFlowsListen` (status login initial, logout, hapus akun), `AccountFlows` setelah hapus akun, tombol tutup di `VerificationsPage` / `ConfirmationsPage` (dari login/daftar), dan pengecualian `_welcome` di `ResponsiveRouters`.
4. Account me-refresh profil + voucher saat `UserBloc.statusLogin` berubah menjadi success (halaman Account bisa sudah ter-build saat masih guest karena tab di-keep-alive).

## Out of Scope

- Perubahan desain Splash, halaman Login/Register, atau guest Home.
- Refresh data points (masih `PointsStatic`).

## Target Selesai

2026-10-28 (14 task × 20 menit, mulai 2026-10-28).

## User Stories / Scope

### Story: Splash Langsung ke Guest atau Signed-in (Tanpa Welcome)

Sebagai pengguna, saya ingin setelah splash langsung masuk ke aplikasi (sebagai guest atau user yang login) tanpa halaman Welcome.

**Acceptance Criteria:**
- Splash → guest Main Page bila belum login; → Main Page signed-in bila sudah login.
- Logout, hapus akun, dan menutup verifikasi login/daftar kembali ke guest Main Page.
- Tidak ada route / file / referensi `WelcomePage` tersisa.

**Task breakdown (6):**
1. Audit semua jalur yang membuka WelcomePage
2. AuthFlows.goToGuestMain menggantikan goToWelcomePage
3. Arahkan check auth, client token, status login initial, logout & hapus akun ke guest Main Page
4. Tombol tutup verifikasi & konfirmasi (login/daftar) kembali ke guest Main Page
5. Hapus WelcomePage, route welcome, pengecualian di ResponsiveRouters & AppSetting.isGuestModeEnabled
6. Test alur: splash ke guest walau server mengirim guest mode nonaktif

### Story: Refresh Account Setelah Login

Sebagai pengguna, saya ingin profil dan jumlah voucher langsung muncul di Account setelah login.

**Acceptance Criteria:**
- Setelah login, Account menampilkan voucher tanpa restart.
- Tidak ada fetch ganda saat Account dibuka pertama kali sebagai user login.

**Task breakdown (2):**
1. Account refresh profil & voucher saat statusLogin berubah ke success
2. Widget test: voucher terisi setelah login tanpa restart

### Story: QA Tanpa Welcome & Refresh Account

**Acceptance Criteria:**
- `flutter analyze` = No issues found; tidak ada kegagalan test baru.
- Terverifikasi di macOS (3 ukuran, mode mock) dan Android staging.

**Task breakdown (3):**
1. flutter analyze + flutter test
2. Verifikasi macOS 3 ukuran mode mock (splash ke guest, login, Account voucher, logout)
3. Uji Android staging (RMX5566)

### Story: Perpindahan Tab Main Page Stabil

Ditemukan saat QA. Setelah startup dalam keadaan login, `goToMainPage` terpanggil dua kali (`checkAuthListen` dan `cekAuthUserListen`). Tab yang tampak "tidak berpindah" saat uji ternyata artefak jendela macOS yang tersembunyi (`AppLifecycleState.hidden`, frame tidak di-render), bukan bug aplikasi.

**Acceptance Criteria:**
- Startup dalam keadaan login menavigasi ke Main Page satu kali.
- Tab berpindah normal setelah startup login dan setelah login.

**Task breakdown (3):**
1. Startup login: navigasi ke Main Page hanya sekali (checkAuthListen serahkan ke cekAuthUserListen)
2. MainPage: PageView selalu mengikuti BottomNavCubit — dibatalkan (tidak diperlukan, perubahan di-revert)
3. Test & verifikasi: tab berpindah setelah startup login dan setelah login (beberapa run)
