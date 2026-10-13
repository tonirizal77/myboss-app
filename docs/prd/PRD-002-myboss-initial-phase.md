# PRD-002: MyBoss App — Fase Awal (Build Android, Splash, Branding, UI, Konfigurasi)

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

Menyiapkan fondasi awal aplikasi `myboss_app` agar bisa di-build dan dijalankan
di semua target (Android, iOS, macOS, web) dengan identitas MyBoss yang benar:
build Android tidak gagal, splash screen tampil di Android 12+, nama & ikon
aplikasi sesuai brand, navigasi/menu disesuaikan, serta konfigurasi platform
dan dependency terbaru ikut tercatat di repository.

## Target Selesai

2026-10-20 (retroaktif — seluruh pekerjaan di bawah sudah dikerjakan; due date
task disebar mulai 2026-10-15, 15 task per hari kerja; 1 task = 1 SP = 20 menit).

## Out of Scope

- Upgrade AGP ke 9.x dan Kotlin ke 2.3.20+ (saat ini hanya warning
  dibypass lewat `--android-skip-build-dependency-validation`).
- Membuat scheme/flavor khusus macOS.
- Fitur bisnis MyBoss (login, produk, promo, dst).

## Catatan / Perlu Ditinjau

- `lib/main.dart`: `theme` di-set `AppTheme.dark` (sebelumnya `AppTheme.light`),
  sehingga aplikasi selalu tampil gelap. Konfirmasi apakah ini disengaja.
- `env.g.dart` ter-regenerate (hasil `envied`, 814 baris berubah) dan `.env`
  ikut berubah (hanya baris kosong). File ini sudah tracked di git sejak awal;
  pertimbangkan memindahkannya ke `.gitignore`.

## User Stories / Scope

### Story: Stabilisasi Build Android (MYB-20)

Sebagai developer, saya ingin build Android staging berhasil tanpa error.

**Acceptance Criteria:**
- `flutter build apk --debug --flavor staging` sukses.
- Tidak ada error JVM target / AAPT style.

**Task breakdown:** MYB-15 analisa JVM target; MYB-14 fix Kotlin jvmTarget 17;
MYB-13 verifikasi build; MYB-12 analisa warning AGP/Kotlin; MYB-11 flag
skip-validation di launch.json; MYB-10 analisa error AAPT; MYB-9 restore
styles.xml; MYB-8 verifikasi build.

### Story: Splash Screen Android (MYB-19)

Sebagai pengguna, saya ingin melihat logo di splash screen, termasuk di
Android 12+.

**Acceptance Criteria:**
- `launch_image` tampil di splash Android < 12 (launch_background) dan
  Android 12+ (Splash Screen API, mode terang & gelap).

**Task breakdown:** MYB-7 analisa launch_image; MYB-6 penyebab Splash API
Android 12+; MYB-47 aktifkan bitmap di launch_background; MYB-46 aset
launch_image.png; MYB-5 values-v31 styles; MYB-4 values-night-v31 styles;
MYB-3 build/install/launch via adb; MYB-2 verifikasi splash.

### Story: Branding & Identitas Aplikasi (MYB-18)

Sebagai pemilik produk, saya ingin nama dan ikon aplikasi sesuai brand MyBoss.

**Acceptance Criteria:**
- Nama app "MyBoss" (+ suffix Staging/Prod) dan package `com.olsmobile.myboss_app`.
- Ikon baru terpasang di Android, iOS, macOS, dan web; manifest/index web
  merujuk nama file yang benar (huruf kecil).

**Task breakdown:** MYB-45 app_name per flavor; MYB-44 label manifest;
MYB-43 pindah MainActivity; MYB-42 title MaterialApp; MYB-41 ikon Android (mipmap); MYB-51 adaptive icon & play store; MYB-40 ikon iOS (PNG);
MYB-50 Contents.json iOS; MYB-39 ikon macOS (PNG/icns); MYB-49 Contents.json macOS; MYB-38 favicon & ikon web; MYB-37
index.html & manifest.json; MYB-21 verifikasi konsistensi manifest/Contents.json.

### Story: Penyesuaian UI & Navigasi (MYB-17)

Sebagai pengguna, saya ingin navigasi dan menu akun sesuai kebutuhan MyBoss.

**Acceptance Criteria:**
- Tab bawah berlabel "Product" dan "Promo" (en & id) dengan ikon tag.
- Menu akun statis (About Us, FAQ, T&C, Contact Us) tidak ditampilkan.
- Tema aplikasi memakai `AppTheme.dark`.

**Task breakdown:** MYB-36 label bottom nav; MYB-35 ikon nav3; MYB-34 sembunyikan
menu akun; MYB-33 pindah Divider; MYB-32 tema dark.

### Story: Konfigurasi Platform & Dependency (MYB-16)

Sebagai developer, saya ingin konfigurasi platform dan dependency terbaru
tercatat dan konsisten.

**Acceptance Criteria:**
- Permission INTERNET tersedia di Android.
- Analyzer tidak memeriksa folder platform.
- macOS deployment target 12.0; Package.resolved & pubspec.lock terbaru.
- PRD ini dan mapping Sera-App tersedia di `docs/prd/`.

**Task breakdown:** MYB-31 permission INTERNET; MYB-30 exclude analyzer;
MYB-29 macOS deployment target; MYB-28 Package.resolved iOS; MYB-27
Package.resolved macOS; MYB-26 pubspec.lock; MYB-25 regenerate env.g.dart; MYB-48 rapikan .env;
MYB-24 .claude/settings.json; MYB-23 PRD-002 & mapping; MYB-22 commit & push.

### Story: Static Analysis & Code Quality (MYB-52)

Sebagai developer, saya ingin panel Problems bersih dari noise lint sehingga
isu yang nyata mudah terlihat.

**Acceptance Criteria:**
- `flutter analyze` menghasilkan "No issues found".
- Lint gaya penulisan diatur di `analysis_options.yaml`; isu nyata
  (`prefer_final_fields`, `depend_on_referenced_packages`) diperbaiki di kode.

**Task breakdown:** MYB-59 analisa & kelompokkan 95 isu; MYB-58 ignore lint
string interpolation; MYB-57 ignore lint widget/constructor; MYB-56 ignore
lint doc comment, initializing formals & todo; MYB-55 fix prefer_final_fields;
MYB-54 tambah dependency equatable; MYB-53 verifikasi flutter analyze.
