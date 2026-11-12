# PRD-013: MyBoss App — Reward Guest, Pengaturan Akun, Ganti Bahasa, Paging Poin & Detail Produk

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Reward poin (`/promotion/loyalty-points/list`) tampil untuk guest dan member di Beranda serta tab Promo (All & Points); reward bisa diketuk untuk melihat detail produknya (`product_id`).
2. Halaman Akun punya pengaturan Bahasa (ID/EN) dan Mode gelap untuk guest & member; "Powered By" + versi rata bawah.
3. Ganti bahasa langsung memperbarui seluruh UI (termasuk halaman `const` / tab keep-alive) dan memuat ulang teks dari server (judul, label diskon, `tnc` voucher).
4. Semua teks UI yang masih hardcoded memakai terjemahan en/id; register dan hapus akun menampilkan pesan sukses / gagal.
5. Halaman Poin mengikuti respons terbaru `/profile/loyalty-points` (`total_balance_point`, `expiring_points` null, `meta` paging) dengan riwayat bertahap dan empty state sesuai Figma.
6. Beranda: produk populer bisa dibuka detailnya; jumlah kategori & produk di teks Beranda dinamis dari API cabang.
7. Tombol close bottom sheet bisa ditekan di semua halaman.

## Keputusan & Asumsi

1. Bentuk respons dicek di API Tester staging (2026-11-12):

   | Endpoint | Field yang dipakai |
   |---|---|
   | `GET /promotion/loyalty-points/list` | `data[]`: `id`, `product_id`, `name`, `photo`, `redeemed_points` (guest & member) |
   | `GET /profile/loyalty-points` | `data.total_balance_point`, `data.expiring_points` (bisa `null`), `data.all_point[]`; `meta` (`page`, `per_page` 15, `total_page`) |
   | `GET /profile/discount-vouchers` | `/en/` vs `/id/` mengubah `discount_label` & `tnc` (judul tetap) |
   | `GET /catalog/lists` | `meta.total` = jumlah produk cabang |
   | `GET /catalog/group/lists` | jumlah kategori cabang |

2. `product_id` reward = id katalog yang dibuka lewat `/catalog/show/{id}` di cabang Promo; reward tanpa `product_id` tidak bisa diketuk.
3. Teks Beranda memakai angka pas ("dalam/across {} kategori", "Lihat semua {} produk"); teks disembunyikan selama angka belum ada / request gagal.
4. Ganti bahasa memuat ulang voucher Promo & voucher member yang sudah dimuat; data API lain (katalog, produk populer, riwayat poin) baru ikut bahasa baru setelah refresh.
5. Bottom sheet dibuka di root navigator (sama seperti dialog tablet); sheet di navigator shell tertutup lapisan halaman utama sehingga tombol close tidak menerima ketukan.
6. Hapus akun (mode `direct`, tanpa OTP) melanjutkan proses setelah sheet tertutup memakai context root navigator; `MyBossToast` memakai overlay root navigator bila context tidak punya overlay di atasnya.
7. Halaman No Internet bawaan mobile_app_core dan dialog "Tema 1/2/3" (teks di mobile_app_core) tidak ikut diterjemahkan.

## Out of Scope

- Muat ulang otomatis katalog, produk populer, dan riwayat poin saat bahasa diganti.
- Teks di dalam mobile_app_core (No Internet, Setting Style Apps).
- Alur hapus akun dengan OTP (`needConfirmOTP`) — hanya pesan gagalnya yang disamakan.

## Target Selesai

2026-11-13 (22 task × 30 menit).

## User Stories / Scope

### Story: Reward Poin untuk Guest & Member

Sebagai guest maupun member, saya ingin melihat reward yang bisa ditukar dengan poin di Beranda dan tab Promo.

**Acceptance Criteria:**
- `/promotion/loyalty-points/list` dipanggil untuk guest dan member (paralel dengan voucher); satu request gagal tidak menggagalkan yang lain.
- Beranda guest menampilkan panel "Earn Points, Get Free Item!" berisi reward cabang.
- Promo › Points (guest): pitch sign-up di atas daftar reward; Promo › All (guest): panel Points dengan pitch, tanpa saldo.

**Task breakdown (3):**
1. PromoRepo: reward + voucher untuk guest & member (paralel) + test
2. Promo › Points guest: pitch sign-up + daftar reward (error/empty sama dengan member)
3. Promo › All guest: panel Points dengan pitch sign-up + test 3 ukuran

### Story: Pengaturan Akun (Bahasa & Mode Gelap)

Sebagai pengguna, saya ingin mengganti bahasa dan mode gelap dari halaman Akun.

**Acceptance Criteria:**
- Kartu pengaturan (Bahasa ID/EN, Mode gelap) tampil untuk guest & member, di ponsel dan tablet.
- "Powered By" + versi menempel di bawah halaman bila konten pendek; tarik-untuk-refresh tetap jalan.

**Task breakdown (2):**
1. AccountSettingsCard: baris Bahasa (toggle ID/EN) & Mode gelap + test
2. Halaman Akun: kartu pengaturan di ponsel/tablet, Powered By rata bawah

### Story: Terjemahan & Ganti Bahasa Langsung

Sebagai pengguna, saya ingin seluruh tampilan langsung berganti bahasa, termasuk teks dari server.

**Acceptance Criteria:**
- Tidak ada teks UI hardcoded di app (logout, update profil, Lanjutkan, Verify WhatsApp, Contact Us, server error, versi, tampilan aplikasi); en & id punya key yang sama.
- Ganti bahasa memperbarui halaman `const`, tab keep-alive, dan `BlocBuilder` dengan `buildWhen` tanpa kehilangan state.
- Voucher Promo & voucher member yang sudah dimuat diambil ulang di bahasa baru (`tnc`, `discount_label`).

**Task breakdown (4):**
1. Terjemahkan teks UI hardcoded + test konsistensi en/id (key & placeholder)
2. LocaleRebuilder: rebuild seluruh app setelah terjemahan baru dimuat + test
3. LocaleFlow: muat ulang voucher Promo & member setelah ganti bahasa + test
4. Fix teks EN `button.terapkan` dan pesan WhatsApp Contact Us (bahasa app, URL-encoded)

### Story: Pesan Register & Hapus Akun

Sebagai pengguna, saya ingin tahu apakah register dan hapus akun berhasil atau gagal.

**Acceptance Criteria:**
- Register: sukses → "Pendaftaran berhasil! Selamat datang di MyBoss." setelah masuk halaman utama; gagal → "Pendaftaran gagal: {alasan}" atau pesan umum.
- Hapus akun: sukses → toast lalu mode guest; gagal / batal gagal → "Gagal menghapus akun: {alasan}" atau pesan umum (tidak pernah "Message is Empty").

**Task breakdown (3):**
1. Pesan sukses/gagal register (root navigator setelah redirect) + test
2. Hapus akun: lanjut di context root setelah sheet ditutup + pesan gagal hapus/batal + test
3. MyBossToast memakai overlay root navigator + regression test

### Story: Poin — Empty State & Paging

Sebagai member, saya ingin riwayat poin lengkap dan tampilan kosong yang jelas.

**Acceptance Criteria:**
- Riwayat kosong: kartu "You don't have any points yet." + tombol Refresh (Figma "03 — Empty Points History").
- Saldo dari `total_balance_point` (cadangan `balance_points`); `expiring_points` null aman.
- Riwayat bertahap per 15 baris sampai `total_page`; gagal muat halaman berikutnya tidak menghapus baris yang sudah tampil.

**Task breakdown (3):**
1. Empty state riwayat poin sesuai Figma + test 3 ukuran
2. PointsRemote: page/per_page + meta (PointHistoryPage), total_balance_point
3. PointsCubit.loadMore + onLoadMore di halaman Points + test paging

### Story: Detail Produk dari Reward & Produk Populer

Sebagai pengguna, saya ingin membuka detail produk dari reward poin dan produk populer di Beranda.

**Acceptance Criteria:**
- Reward (Beranda, hero member, Promo) dengan `product_id` membuka sheet detail produk dari cabang Promo.
- Kartu "Our Popular Products" membuka sheet detail dari cabang produk populer.
- Mock reward punya `product_id` yang cocok dengan katalog mock cabang yang sama.

**Task breakdown (3):**
1. PromoPoint.product_id → RewardPreview + tap reward membuka ProductDetailSheet (storeDomain)
2. Produk populer Beranda: productId + tap membuka detail
3. Mock product_id per cabang + test reward/produk populer

### Story: Statistik Katalog Beranda Dinamis

Sebagai pengguna, saya ingin jumlah kategori dan produk di Beranda sesuai katalog cabang.

**Acceptance Criteria:**
- Jumlah produk dari `meta.total` `/catalog/lists` (per_page 1), kategori dari `/catalog/group/lists`, dimuat bersama produk populer per cabang.
- Teks disembunyikan saat angka 0 (belum dimuat / gagal); satu request gagal tidak menghapus angka lainnya.

**Task breakdown (2):**
1. CatalogStats: repo getStats + GetCatalogStatsUc + PopularProductsCubit
2. Teks Beranda dari stats (sembunyi saat 0) + hapus angka statis + test

### Story: Tombol Close Bottom Sheet

Sebagai pengguna, saya ingin tombol close di sheet (detail produk, voucher, poin) selalu bisa ditekan.

**Acceptance Criteria:**
- Bottom sheet dibuka di root navigator; tombol close menutup sheet walau ada lapisan halaman utama di atas navigator shell.

**Task breakdown (2):**
1. MyBossBottomSheet useRootNavigator + cek provider sheet di level app
2. Regression test tombol close di atas lapisan shell
