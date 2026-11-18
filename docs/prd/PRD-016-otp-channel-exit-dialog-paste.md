# PRD-016: Perbaikan OTP (Channel, Hapus, Paste) & Dialog Keluar Aplikasi

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Konten verifikasi OTP (judul, gambar, ikon, teks, kontak tujuan) sesuai channel pengiriman: WhatsApp atau Email.
2. Kode OTP yang sudah dihapus dari input tidak lagi tersimpan di state dan tidak bisa terkirim.
3. Kode OTP yang disalin bisa ditempel (paste) ke input OTP.
4. Tombol back di Main Page menampilkan dialog konfirmasi keluar bergaya MyBoss.

## Keputusan & Asumsi

1. Channel ditentukan dari `fromPage` dan `email`: login dengan email, ubah email, dan email baru = Email; login dengan nomor, register, ubah nomor, nomor baru, dan hapus akun = WhatsApp.
2. (asumsi) Endpoint `change-email/send-otp` dan login dengan email mengirim OTP lewat email; belum dikonfirmasi backend.
3. Konfirmasi keluar memakai warna primary (bukan danger) karena keluar dari app tidak merusak data.
4. Paste: kode sepanjang atau lebih dari jumlah kolom mengisi dari kolom pertama (kelebihan dipotong, non-angka dibuang); kode yang lebih pendek mengisi mulai dari kolom yang ditempeli.

## Out of Scope

- Menghapus halaman lama `verifications_page` dan `confirm_otp_profile*`.
- Autofill OTP dari SMS.

## Target Selesai

2026-11-18 (11 task × 30 menit).

## User Stories / Scope

### Story: Verifikasi OTP sesuai channel WhatsApp/Email

Sebagai pengguna, saya ingin teks, gambar, dan kontak pada halaman verifikasi sesuai cara kode dikirim (WhatsApp atau email) supaya tidak bingung memeriksa tempat yang salah.

**Acceptance Criteria:**
- Halaman konfirmasi OTP: judul "Verifikasi Email" dan gambar email untuk alur email; "Verifikasi WhatsApp" dan gambar WhatsApp untuk alur nomor.
- Teks "kode dikirim ke…" menampilkan email (alur email) atau nomor (alur WhatsApp) yang benar dan ter-mask sesuai pengaturan; login via email tidak lagi menampilkan nomor kosong.
- Halaman kirim OTP ubah profil: tombol berikon email dan instruksi menyebut email tujuan untuk alur email.
- Ada unit test pemetaan `fromPage` ke channel dan kontak tujuan.

**Task breakdown (4):**
1. Penentu channel dan kontak tujuan per alur OTP (verify_channel.dart)
2. Terjemahan varian email (en/id) + regenerate locale_keys
3. Halaman konfirmasi dan kirim OTP ubah profil mengikuti channel
4. Unit test pemetaan channel OTP

### Story: Dialog konfirmasi keluar aplikasi

Sebagai pengguna, saya ingin dikonfirmasi dulu saat menekan back di Main Page supaya tidak keluar dari app secara tidak sengaja.

**Acceptance Criteria:**
- Back di Main Page menampilkan dialog MyBoss: ikon peringatan, judul, pesan, tombol Batal dan Ya, keluar; tidak tertutup dengan tap di luar dialog.
- Ya, keluar menutup aplikasi; Batal menutup dialog saja.
- Teks tersedia dalam bahasa Indonesia dan Inggris.

**Task breakdown (3):**
1. Parameter message pada MyBossDialog.confirm
2. Dialog keluar di Main Page + terjemahan en/id
3. Widget test dialog dengan message

### Story: Fix kode OTP tersisa setelah dihapus

Sebagai pengguna, saya ingin kode yang sudah saya hapus dari input tidak ikut terkirim saat menekan Verifikasi.

**Acceptance Criteria:**
- Setelah 4 digit terisi lalu dihapus satu per satu (termasuk dengan tombol backspace), kode yang tersimpan ikut kosong/parsial.
- Tombol Verifikasi tidak mengirim kode yang kurang dari 4 digit.
- Ada test yang mengisi lalu menghapus digit dan memastikan kode yang dilaporkan berubah.

**Task breakdown (1):**
1. Laporkan perubahan kode dari listener controller + guard tombol Verifikasi + test

### Story: Paste kode OTP

Sebagai pengguna, saya ingin menempel kode OTP yang sudah disalin ke input OTP supaya tidak mengetik ulang.

**Acceptance Criteria:**
- Paste kode 4 digit ke kolom mana pun mengisi semua kolom dan otomatis memverifikasi.
- Spasi/non-angka dibuang, kelebihan digit dipotong; paste pendek mengisi mulai dari kolom yang ditempeli.
- Mengetik biasa dan menimpa digit tetap berfungsi seperti sebelumnya.
- Sudah diuji manual di Android.

**Task breakdown (3):**
1. Deteksi paste, distribusi digit ke kolom, auto-verify bila lengkap
2. Widget test paste (penuh, kolom lain, spasi/kelebihan, pendek)
3. Verifikasi manual paste OTP di Android
