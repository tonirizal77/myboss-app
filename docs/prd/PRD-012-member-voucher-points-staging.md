# PRD-012: MyBoss App — Voucher Member, Poin & Endpoint Cabang dari API Staging

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Halaman Akun › Voucher menampilkan voucher milik member dari `GET /profile/discount-vouchers` (`is_used=false|true`, wajib) dengan tab Active / Used, "Load more", dan kartu kosong sesuai Figma; jumlah voucher di Akun = total voucher belum dipakai.
2. Halaman Points menampilkan riwayat dari `all_point` (`Active` / `Deducted` / `Expired`), detail transaksi dari `GET /profile/orders/find/{sales_order_id}`, serta saldo & poin hangus dari `GET /profile/info`.
3. Detail voucher di tab Promo menampilkan kode dan syarat & ketentuan (`code`, `tnc`) dari respons staging; daftar voucher tampil 2 kolom di tablet / desktop.
4. Semua endpoint `/profile/...` memakai domain cabang yang dipilih, dan locale endpoint (`/en/` ↔ `/id/`) mengikuti bahasa app.
5. `ResponsiveGridOrWrap` (mobile_app_core) dioptimalkan: wrapview memakai lebar parent, daftar & empty state tidak tampil bersamaan.

## Keputusan & Asumsi

1. Bentuk respons dicek di API Tester staging (2026-11-11):

   | Endpoint | Field yang dipakai |
   |---|---|
   | `GET /profile/discount-vouchers?is_used=` | `data[]`: `id`, `code`, `title`, `discount_label`, `expiry_date`, `tnc[]`, `is_used`, `used_date`; `meta` (paging) |
   | `GET /profile/loyalty-points` | `data.all_point[]`: `id`, `status`, `detail`, `date`, `displayed_point`, `sales_order_id`, `order_total` (tanpa `total_balance_point`) |
   | `GET /profile/orders/find/{id}` | `items[]` (`name`, `variant_name`, `qty`, `amount`), `amount` (order, discount, redeemed, service charge, tax, shipping, total), `total_qty` |
   | `GET /profile/info` | `balance_points`, `expiring_points` (`balance_points`, `expire_date`) |
   | `GET /promotion/discount-vouchers/list` | `code`, `tnc[]`, `is_used`, `used_date` |

2. Voucher dan data member terikat ke cabang: endpoint `/profile/...` dipanggil di `{baseURL}/{locale}/{url_id cabang}` lewat `ConfigServer.branchUrl` (domain default bila belum ada cabang). Termasuk `/profile/delete-account`.
3. Nomor di `tnc` dari server ("1. ...") dibuang; sheet detail memberi nomor sendiri.
4. Riwayat `Deducted` & `Expired` ditampilkan negatif (merah); jumlah hari poin hangus dihitung di app dari `expire_date` (teks ikut bahasa app), `expire_date_subtext` tidak dipakai.
5. Tab Voucher Promo tetap voucher cabang (guest & member); hanya tampilan tablet yang menjadi grid.
6. Perubahan `ResponsiveGridOrWrap` adalah port commit `7c790fa` (branch `mybos-core`) ke `myboss-core` (commit `5973d4d`), tombol back-to-top `17e371c` dipertahankan.

## Permintaan ke Backend

1. `GET /profile/loyalty-points` belum mengirim `total_balance_point` / `expiring_points` (saldo diambil dari `/profile/info`).
2. Konfirmasi apakah `/profile/delete-account` memang mengikuti domain cabang.

## Out of Scope

- Panel voucher di tab Promo "All" (tetap voucher cabang).
- `/customer/update` dan `/customer/generate-code` (bukan `/profile/`, tetap domain default).
- Muat ulang otomatis data yang sudah tampil saat bahasa diganti.

## Target Selesai

2026-11-13 (22 task × 30 menit, 16 task per hari: 16 task 2026-11-12, 6 task 2026-11-13).

## User Stories / Scope

### Story: Voucher Member di Akun

Sebagai member, saya ingin melihat voucher milik saya yang aktif dan yang sudah dipakai.

**Acceptance Criteria:**
- Tab Active memanggil `is_used=false`, tab Used `is_used=true`; 15 per halaman dengan tombol "Load more".
- Voucher terpakai abu-abu dengan "Used {tanggal}"; kosong = kartu teks + Refresh; gagal = pesan + retry.
- Jumlah voucher di Akun dan panel/sheet hapus akun = total voucher `is_used=false`.
- Logout / hapus akun mengosongkan voucher member.

**Task breakdown (8):**
1. MemberVouchersModel + MemberVoucherRemote/Repo/Usecase: GET /profile/discount-vouchers (is_used, paging)
2. MemberVoucherCubit: tab Active/Used, load more, reset saat logout/hapus akun
3. VoucherPage sesuai Figma: tab Active/Used, Load more, kartu kosong, error/retry
4. VoucherTicket voucher terpakai (abu-abu + "Used {tanggal}") + teks en/id
5. Jumlah voucher Akun & panel/sheet hapus akun dari total is_used=false
6. Mock profile.discount-vouchers + filter is_used di MockServerSimulation
7. Model voucher member sesuai respons staging (code, tnc, used_date) + test payload staging
8. Unit & widget test voucher member (cubit, halaman, Load more, Used)

### Story: Poin dari API Staging

Sebagai member, saya ingin saldo, poin hangus, riwayat, dan detail transaksi poin sesuai data server.

**Acceptance Criteria:**
- Riwayat dari `all_point`: Point Earned (+, hijau), Points Redeemed / Points Expired (−, merah).
- Detail riwayat dengan order memanggil `/profile/orders/find/{sales_order_id}`; baris tanpa order tidak memanggil API.
- Saldo dan poin hangus (jumlah, hari, tanggal) dari `/profile/info` di Points, Beranda, Promo, dan Akun.
- Riwayat 1 kolom di ponsel, 2 kolom di tablet/desktop; empty state tidak tampil bersama daftar.

**Task breakdown (6):**
1. LoyaltyPointsModel: all_point, displayed_point, status Active/Deducted/Expired + label & format minus
2. Detail poin dari /profile/orders/find/{sales_order_id} (OrderDetailModel → struk)
3. Saldo & poin hangus dari /profile/info (expiring_points) untuk Points, Beranda, Promo, Akun
4. Riwayat Points dengan ResponsiveGridOrWrap (1/2 kolom, tanpa list + empty bersamaan)
5. Mock loyalty-points, orders.find, profile.info sesuai bentuk staging
6. Test poin: mapper, struk, layout 3 ukuran + empty state

### Story: Detail Voucher Promo

Sebagai pengguna, saya ingin melihat kode dan syarat & ketentuan voucher, dengan tampilan grid di tablet.

**Acceptance Criteria:**
- Tiket menampilkan kode (bisa disalin); sheet detail menampilkan syarat & ketentuan bernomor dari `tnc`.
- Daftar voucher 1 kolom di ponsel, 2 kolom selebar konten di tablet/desktop, tinggi tiket satu baris sama.

**Task breakdown (3):**
1. PromoVoucher: code, tnc, is_used, used_date + sheet detail syarat & ketentuan
2. VoucherList grid 2 kolom tablet/desktop (wrapview useLargestHeight) + teks tiket dibatasi
3. Mock voucher promo + test mapping, sheet detail, layout 3 ukuran

### Story: Endpoint Mengikuti Cabang & Bahasa

Sebagai member, saya ingin data akun saya diambil dari cabang yang saya pilih dan dalam bahasa app.

**Acceptance Criteria:**
- `/profile/info`, `/profile/loyalty-points`, `/profile/orders/find`, `/profile/discount-vouchers`, `/profile/delete-account` dipanggil di domain cabang terpilih.
- Ganti cabang memuat ulang profil, poin, dan voucher (Akun, Beranda).
- Memilih ID / EN di SwitchLocaleBar mengganti `/en/` ↔ `/id/` di semua request berikutnya.

**Task breakdown (3):**
1. ConfigServer.branchDomain/branchUrl: endpoint /profile/* ke domain cabang terpilih
2. Muat ulang profil, poin, voucher saat cabang berganti (Akun, Beranda)
3. Locale API mengikuti bahasa app (SwitchLocaleBar → ConfigServer.syncLocale)

### Story: Optimasi ResponsiveGridOrWrap

Sebagai developer, saya ingin `ResponsiveGridOrWrap` menghitung layout dari parent dan tidak membangun daftar & empty state sekaligus.

**Acceptance Criteria:**
- Wrapview (termasuk `useLargestHeight`) memakai lebar parent dan jumlah kolom yang diminta.
- Hanya daftar atau empty state yang dibangun; RefreshIndicator hanya bila `onRefresh` ada; load more sekali per data.
- `test/core_feat/responsive_widgets_test.dart` lulus.

**Task breakdown (2):**
1. Port 7c790fa ke mobile_app_core myboss-core (wrapview, list/empty, refresh, load more, ResponsivePage)
2. responsive_widgets_test lulus (bottomNavBlur) + verifikasi app
