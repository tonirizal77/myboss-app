# PRD-004: MyBoss App — Mask Contact di Akun & Edit Akun

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

Nomor telepon dan email pengguna tidak tampil utuh di halaman Account dan Edit Profile. Tampilan memakai mask contact yang sudah dipakai di halaman verifikasi (`GeneralHelper.maskPhone` / `maskEmail`, dikontrol `AppSetting.isMaskContact`).

## Keputusan & Asumsi

1. Mask hanya mengubah **tampilan**. Data profil dan payload ke backend tetap nilai asli.
2. Mask bersifat global dan selalu aktif: `splash_page.dart` memanggil `AppSetting.maskContact(true)` setiap boot. Tidak ada toggle di UI.
3. Format mengikuti `GeneralHelper`: `+6285355270887` → `+628******0887`, `tonirizal10@gmail.com` → `to*******10@gmail.com`.
4. Task yang sudah dikerjakan di working tree (card Account, form Edit Profile) tetap dimasukkan ke breakdown supaya tercatat di Sera-App.

## Out of Scope

- Toggle mask di halaman Pengaturan.
- Perubahan helper di `mobile_app_core`.
- Mask di halaman lain yang belum memakai mask.

## Target Selesai

2026-10-29 (15 task × 20 menit, 15 task per hari kerja, mulai 2026-10-29).

## User Stories / Scope

### Story: Mask Contact di Halaman Akun

Sebagai pengguna, saya ingin nomor telepon dan email di halaman Account tersamarkan agar data kontak tidak terlihat orang lain.

**Acceptance Criteria:**
- Phone dan email di card profil Account tampil ter-mask.
- Tampilan tidak overflow di mode Dark dan Light.

**Task breakdown (4):**
1. Audit titik tampil phone/email di halaman Account (`CardAccountMember`)
2. Terapkan `maskPhone` di `CardAccountMember`
3. Terapkan `maskEmail` di `CardAccountMember`
4. Pastikan tampilan Account saat mask on/off tidak overflow (Dark/Light)

### Story: Mask Contact di Edit Akun

Sebagai pengguna, saya ingin phone dan email di halaman Edit Profile tersamarkan, tanpa mengubah alur ubah nomor/email.

**Acceptance Criteria:**
- Field phone dan email (read-only) menampilkan nilai ter-mask.
- Alur ubah phone/email (OTP) tetap memakai nilai asli.
- Format konsisten dengan halaman verifikasi.

**Task breakdown (6):**
1. Audit titik tampil phone/email di `edit_profile_page` dan `form_profile`
2. Mask phone di field read-only `FormProfile`
3. Mask email di field read-only `FormProfile`
4. Sinkronkan controller dengan nilai ter-mask agar tidak rewrite berulang saat rebuild
5. Pastikan `VerifyFlows.verifyEditProfile` tetap mengirim nilai asli, bukan yang ter-mask
6. Samakan format dengan halaman verifikasi (`verification_profile_page`)

### Story: QA Mask Contact

**Acceptance Criteria:**
- `flutter analyze` = No issues found; `flutter test` lulus.
- Terverifikasi di macOS (3 ukuran) dan Android staging.

**Task breakdown (5):**
1. Widget test `CardAccountMember` (mask on/off)
2. Widget test `FormProfile` (mask on/off, nilai asli tetap terkirim)
3. `flutter analyze` = No issues found, lalu `flutter test`
4. Verifikasi di macOS pada 3 ukuran lewat Marionette
5. Uji di Android staging (RMX5566)
