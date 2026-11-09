# PRD-011: MyBoss App — Halaman Akun dari API (Poin, Voucher, Hapus Akun)

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Poin di halaman Akun, Promo, dan Points diambil dari `GET /profile/loyalty-points` (saldo `total_balance_point`, poin hangus `expiring_points`, riwayat `active_point`), menggantikan data statis `PointsStatic`. Saldo di Beranda dari `GET /profile/info` (`balance_points`).
2. Halaman Voucher dan jumlah voucher di Akun diambil dari `GET /promotion/discount-vouchers/list` (voucher cabang terpilih, sama dengan tab Promo), menggantikan endpoint lama hayo `/profile/discount-vouchers/list` yang tidak ada di Postman MyBoss, beserta data dummy-nya.
3. Mode `api` tidak lagi menampilkan riwayat/detail poin palsu; data statis hanya dipakai di mode `mock`.
4. Hapus akun meminta konfirmasi akhir lewat dialog peringatan, menampilkan toast sukses, dan benar-benar kembali ke mode guest.

## Keputusan & Asumsi

1. Endpoint per bagian halaman Akun:

   | Bagian | Endpoint |
   |---|---|
   | Kartu profil (nama, telepon, email, avatar) | `GET /profile/info` (sudah) |
   | Saldo, poin hangus, riwayat poin | `GET /profile/loyalty-points` (lewat `PointsRemote`, satu request per load) |
   | Jumlah voucher & halaman Voucher | `GET /promotion/discount-vouchers/list` per cabang (dari `PromoCubit`) |
   | Logout / hapus akun | `POST /account/do/sign-out`, alur delete account (sudah) |

2. `PointsRemote` menggantikan `PointsStatic` sebagai `PointsSource` di mode `api` dan `mock` (mock: `assets/mock/get/profile.loyalty-points.json`). Baris riwayat tanpa order (`order_total` null, mis. bonus) tampil tanpa nominal Rp. Detail transaksi (struk) belum punya endpoint: sheet detail hanya menampilkan entri dan total order.
2a. Nama field staging (dicek 2026-11-09): `profile/info` mengirim `balance_points` dan `voucher_count` (bukan `total_point` / `available_voucher_count`); model sudah disesuaikan.
3. "Poin hangus" tampil di halaman Points dari `expiring_points`; di Beranda masih tersembunyi karena `profile/info` tidak mengirimnya.
4. Panel/sheet hapus akun memakai saldo poin & jumlah voucher yang sama dengan kartu statistik.
5. `VoucherPage` memakai `PromoCubit` + `VoucherList`/`VoucherTicket` dari fitur Promo (dimuat ulang saat cabang/login berganti), dengan loading, error + retry, dan empty state. Jumlah voucher di Akun = panjang daftar yang sama, sehingga selalu cocok dengan isi halaman (`voucher_count` tidak dipakai).
7. Hapus akun: tombol "Lanjutkan" di sheet membuka dialog peringatan (ikon, judul, tombol "No, cancel" di atas "Yes, continue"); hanya "Yes, continue" yang menjalankan `AccountFlows.confirmDeleteAccount`. `MyBossDialog.confirm` mendapat opsi `icon` dan `stacked` (pemanggil lama tidak berubah). Toast sukses memakai `MyBossToast.success`: "Your account was deleted successfully!" / "Akun Anda berhasil dihapus!".
7a. `AppSetting.needConfirmOTP = false` (2026-11-09): setelah dialog, akun langsung dihapus (`DELETE /profile/delete-account`) tanpa langkah alasan + OTP, jadi `/customer/delete/send-otp` tidak dipanggil dan alasan tidak terkirim ke server. Test release default disesuaikan.
8. Setelah hapus akun sukses, `UserState` dibuat baru (seperti logout) sehingga `statusLogin` kembali ke awal dan app masuk mode guest.
6. Rantai voucher hayo dihapus: `Endpoints.voucherList`, `AccountRemote/AccountRepo.getVouchers`, `GetVouchersUc`, `AccountEvent.vouchers`, `AccountState.vouchers`, `VoucherListModel`, `CardVoucher`/`VoucherBottomsheet`/`VoucherCustom`, dan mock `profile.discount-vouchers.list.json`.

## Permintaan ke Backend

1. Endpoint daftar voucher milik member — saat ini halaman Voucher menampilkan voucher promo cabang, bukan voucher milik member.
2. Endpoint detail transaksi poin (struk per order) — riwayat sudah ada di `/profile/loyalty-points`.
3. Endpoint status penghapusan akun (`/customer/delete/status`) — saat ini status pending hanya disimpan lokal.

## Out of Scope

- Detail transaksi poin (struk) dari API.
- Voucher milik member (menunggu endpoint) dan status hapus akun dari API.
- Perubahan desain halaman Akun.

## Target Selesai

2026-11-10 (25 task × 30 menit; pengerjaan 2026-11-09, verifikasi Android 2026-11-10).

## User Stories / Scope

### Story: Halaman Akun dari API Profil

Sebagai member, saya ingin saldo poin dan jumlah voucher di halaman Akun sesuai akun saya.

**Acceptance Criteria:**
- Saldo, poin hangus, dan riwayat di Akun/Points dari `/profile/loyalty-points`; saldo Beranda dari `balance_points` di `profile/info`.
- Halaman Voucher & jumlah voucher Akun dari `/promotion/discount-vouchers/list` cabang terpilih; endpoint `/profile/discount-vouchers/list` dan data dummy tidak dipakai lagi.
- Riwayat poin dari `active_point`; tidak ada data statis di mode `api`.
- Panel & sheet hapus akun memakai angka yang sama.

**Task breakdown (11):**
1. PointsRemote: saldo, poin hangus, riwayat dari `/profile/loyalty-points` (LoyaltyPointsModel), satu request per load
2. Daftarkan PointsRemote di account_ft (mode mock & api) + mock profile.loyalty-points.json
3. Kartu statistik Akun: jumlah voucher dari daftar voucher cabang (PromoCubit)
4. Panel & sheet hapus akun: jumlah voucher dari daftar yang sama
5. AccountPage: refresh profil + poin paralel, tanpa panggilan voucher hayo
6. Unit test PointsRemote + PointsCubit (remote palsu)
7. flutter analyze + flutter test
8. Verifikasi macOS (mode mock)
9. VoucherPage dari PromoCubit + VoucherList publik (loading, error, empty state)
10. Hapus rantai voucher hayo (endpoint, remote, usecase, event, model, widget, mock)
11. Widget test VoucherPage 3 ukuran + error/retry

### Story: Poin Beranda dari API Profil

Sebagai member, saya ingin saldo poin dan reward poin di Beranda sesuai akun dan cabang saya.

**Acceptance Criteria:**
- Saldo poin di hero member, panel Redeem, dan Membership Card dibaca langsung dari `ProfileBloc` (`balance_points` dari `GET /profile/info`); Beranda tidak memanggil `PointsCubit.load()` lagi, refresh cukup satu request profil.
- Gambar reward poin (`photo` dari `/promotion/loyalty-points/list`) mendukung URL API maupun aset lokal (mock) lewat `ProductImage`, di Beranda guest & member.
- Poin hangus tetap disembunyikan sampai `profile/info` menyediakannya.

**Task breakdown (4):**
1. ProfilePointsText: saldo dari ProfileBloc balance_points, dipakai hero, panel Redeem, Membership Card
2. Beranda & Membership Card: refresh lewat getProfile, hapus PointsCubit.load
3. Gambar reward Beranda (guest & member) lewat ProductImage (URL/aset)
4. Widget test Beranda signed-in 3 ukuran + Membership Card dengan profil mock

### Story: Uji API Staging Akun & Poin

Sebagai developer, saya ingin data Akun dan Poin terverifikasi dengan API staging.

**Acceptance Criteria:**
- Login staging berhasil; Akun menampilkan nama, kontak ter-mask, saldo poin, dan jumlah voucher dari server.
- Model profil membaca `balance_points` dan `voucher_count` sesuai respons staging.
- Halaman Points menampilkan saldo, poin hangus, dan riwayat dari `/profile/loyalty-points`.

**Task breakdown (4):**
1. Uji login & halaman Akun di staging (macOS, mode api)
2. ProfileModel: balance_points & voucher_count sesuai respons staging + test parsing
3. LoyaltyPointsModel + mapper saldo/poin hangus/riwayat, baris bonus tanpa Rp
4. Unit test mapper loyalty-points + mock_assets_test endpoint baru

### Story: Konfirmasi & Toast Hapus Akun

Sebagai member, saya ingin diminta konfirmasi terakhir sebelum akun dihapus dan diberi tahu saat penghapusan berhasil.

**Acceptance Criteria:**
- "Lanjutkan" di sheet hapus akun membuka dialog peringatan; "No, cancel" menutup dialog tanpa aksi, "Yes, continue" menjalankan alur hapus akun (OTP + alasan bila diaktifkan).
- Setelah sukses, toast hijau "Your account was deleted successfully!" (id: "Akun Anda berhasil dihapus!") tampil dan app kembali ke Beranda guest.
- Tombol dialog tetap berfungsi walau widget pemanggil sudah dibangun ulang.

**Task breakdown (6):**
1. MyBossDialog.confirm: opsi icon & stacked (tombol bertumpuk, full width)
2. AccountFlows.askDeleteAccount + teks en/id + locale keys
3. Sheet hapus akun: Lanjutkan -> dialog peringatan -> confirmDeleteAccount
4. Fix: tombol dialog pop dengan context dialog (bukan context pemanggil)
5. Fix: hapus akun sukses mereset UserState (kembali ke guest) + teks toast sukses
6. Widget test MyBossDialog + verifikasi alur hapus akun di macOS (mock)

