# PRD-001: MyBoss App — Perbaikan macOS Desktop Run & Rendering

## Project Sera-App

- Project key: FD (Flutter Development)
- Story existing: FD-387 (Mobile App - Create App for MyBoss Store - Draft)

## Goals

Aplikasi `myboss_app` tidak bisa dijalankan/di-debug dengan benar di target
macOS desktop: gagal launch karena kesalahan konfigurasi flavor, gagal akses
server karena sandbox entitlement, dan window yang berhasil launch tampil
blank putih total di semua halaman. Tujuan pekerjaan ini adalah membuat
target macOS desktop bisa dijalankan dan menampilkan UI dengan benar untuk
keperluan development/debugging sehari-hari.

## Target Selesai

2026-09-23 (retroaktif — seluruh pekerjaan di bawah ini sudah dikerjakan dan
selesai pada tanggal ini).

## Out of Scope

- Membuat scheme/flavor (staging/prod/live) khusus untuk target macOS —
  untuk saat ini target macOS dijalankan tanpa flavor (default/live).
- Implementasi layout shell khusus tablet/desktop (`RmdTabletView`) — di luar
  scope pekerjaan ini, ditangani terpisah.

## User Stories / Scope

### Story: Perbaikan macOS Desktop Run & Rendering (FD-387)

Sebagai developer, saya ingin bisa menjalankan `myboss_app` di target macOS
desktop lewat VS Code/`flutter run` tanpa error, bisa mengakses API server,
dan melihat UI aplikasi tampil normal (bukan blank putih), supaya saya bisa
develop dan debug fitur di desktop tanpa harus selalu pakai simulator
iOS/Android.

**Acceptance Criteria:**
- `flutter run -d macos` berhasil launch tanpa error Swift Package Manager
  terkait `--flavor`.
- Aplikasi di macOS bisa melakukan network request ke server (tidak diblokir
  App Sandbox).
- Halaman awal (guest home / MainPageFirst) dan halaman lain yang dibungkus
  `ResponsiveRootPage` menampilkan konten sebenarnya di window macOS
  (lebar ≥1200px, kategori "desktop"), bukan layar kosong/putih.

**Task breakdown:**
1. Analisa error Swift Package Manager saat run macOS (root cause: scheme
   flavor tidak ditemukan untuk platform macOS)
2. Update `.vscode/launch.json` — hapus `--flavor staging` dari config
   "macOs (desktop)" karena project macOS belum punya scheme per-flavor
3. Tambah entitlement `com.apple.security.network.client` di
   `macos/Runner/DebugProfile.entitlements`
4. Tambah entitlement `com.apple.security.network.client` di
   `macos/Runner/Release.entitlements`
5. Reproduksi bug blank white screen di macOS lewat `flutter run` + screenshot
   window
6. Investigasi Dart VM service (`getVM`/`getIsolate`/`getStack`) untuk
   memeriksa status isolate `main` saat window blank
7. Analisa log "Running with merged UI and platform thread" sebagai kandidat
   root cause blank screen
8. Tambah `FLTEnableMergedPlatformUIThread=false` di `macos/Runner/Info.plist`
   untuk menonaktifkan fitur eksperimental tsb
9. Instrumentasi debug print sementara di `lib/main.dart` untuk trace
   tahapan startup satu per satu
10. Verifikasi seluruh tahapan startup (`Env.init`, `EasyLocalization`,
    `HydratedStorage`, `InjectionsCore`, `InjectionFeatures`) berjalan normal
    sampai selesai
11. Analisa widget tree lewat Flutter Inspector protocol
    (`getRootWidget`/`getChildrenSummaryTree`) untuk menemukan node yang
    render kosong
12. Root cause ditemukan: `ResponsiveRootPage` — slot `tablet` pada
    `Responsive` widget hardcode `SizedBox()` kosong, dan window macOS
    (lebar ≥1200px) jatuh ke kategori "desktop" yang fallback ke `tablet`
13. Fix `lib/core_feat/template/responsive_widget/responsive_root_page.dart`
    — render `child` (konten halaman asli) di slot tablet, bukan `SizedBox()`
    kosong
14. Bersihkan instrumentasi debug print di `lib/main.dart`
15. Verifikasi akhir — build ulang & screenshot menunjukkan halaman guest
    home tampil normal di window macOS
