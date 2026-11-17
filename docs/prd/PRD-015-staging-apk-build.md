# PRD-015: MyBoss App — Build APK Staging untuk Testing

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Developer bisa membuat APK staging (release & debug) langsung dari dropdown Run & Debug di VS Code.
2. Konfigurasi SDK Android dipastikan sudah mendukung Android 16 (API 36).
3. Build release ditandatangani dengan keystore sendiri, bukan debug key.
4. APK staging release tersedia untuk diuji di device Android.

## Keputusan & Asumsi

1. Build APK dijalankan lewat konfigurasi `node-terminal` di `.vscode/launch.json` karena konfigurasi `dart` tidak bisa menjalankan `flutter build`.
2. Build staging memakai `--split-per-abi`, `--obfuscate --split-debug-info=build/app/outputs/symbols`, dan `DATA_SOURCE=api`.
3. `compileSdk` / `targetSdk` tetap mengikuti default Flutter 3.47.6, yaitu 36 (Android 16), dan `minSdk` 24. Naik ke 37 (Android 17) ditunda: AGP 8.11.1 resminya hanya mendukung sampai API 36, dan `targetSdk` 37 mengubah perilaku app di layar besar.
4. Signing release dibaca dari `android/key.properties` (sudah di-gitignore, begitu juga `*.jks`). Nilai keystore tidak pernah di-commit.
5. Versi staging `1.0.1+2`; versi production `1.0.1+1` disimpan sebagai komentar di `pubspec.yaml`.

## Out of Scope

- Upgrade AGP 9.x / Kotlin 2.3 dan `compileSdk` / `targetSdk` 37.
- Build AAB dan upload ke Play Console.
- Konfigurasi build untuk flavor `prod` dan `live`.

## Target Selesai

2026-11-17 (4 task × 30 menit).

## User Stories / Scope

### Story: Build APK Staging untuk Testing

Sebagai developer, saya ingin membuat APK staging yang sudah ditandatangani dengan satu klik dari VS Code supaya bisa langsung diuji di device.

**Acceptance Criteria:**
- `launch.json` punya konfigurasi "Build APK staging (release)" dan "Build APK staging (debug)" yang membuka folder `build/app/outputs/flutter-apk` setelah build berhasil.
- `compileSdk` dan `targetSdk` = 36 (Android 16), dan tidak ada nilai lain yang menimpanya di folder `android/`.
- Build release memakai signing config `release` dari `android/key.properties`, dan file keystore tidak ikut ter-commit.
- `flutter build apk --release --flavor staging` berhasil.

**Task breakdown (4):**
1. Konfigurasi build APK staging (release & debug) di .vscode/launch.json
2. Cek compileSdk/targetSdk Android 16 (API 36) + analisis dampak API 37
3. Signing release dari key.properties + bump versi staging 1.0.1+2
4. Build APK staging release untuk testing

### Story: Default Bahasa ID dan Mode Dark di Build Staging

Sebagai pengguna yang baru menginstal APK staging, saya ingin app langsung tampil dalam bahasa Indonesia dan mode gelap, dan pilihan Light/Dark saya tetap tersimpan setelah app dibuka ulang.

Temuan: APK release dibuild dengan `--obfuscate`, yang mengacak nama class. Tema disimpan di key `'ThemeBloc'`, padahal HydratedBloc membaca key dari nama class, sehingga app selalu mulai dalam mode Light dan pilihan tema hilang setelah restart. Bahasa mengikuti bahasa HP karena `startLocale` tidak di-set.

**Acceptance Criteria:**
- Install baru: app terbuka dalam bahasa Indonesia (`startLocale: id`), apa pun bahasa HP; pilihan bahasa user tetap tersimpan.
- Install baru: app terbuka dalam mode Dark, juga di build `--obfuscate`.
- Pilihan Light/Dark tersimpan di key milik app (`MyBossTheme`) yang tidak bergantung pada nama class; pilihan di key lama `ThemeBloc` tetap dibaca.
- Ada unit test yang mensimulasikan nama class teracak (obfuscate); `flutter analyze` bersih.
- Versi staging 1.0.1+3.

**Task breakdown (2):**
1. Default bahasa ID: startLocale id di EasyLocalization
2. Default Dark tahan obfuscate: key tema MyBossTheme + migrasi key lama + test + versi 1.0.1+3
