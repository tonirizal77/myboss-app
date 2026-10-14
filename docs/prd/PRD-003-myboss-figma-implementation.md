# PRD-003: MyBoss App — Implementasi Desain Figma (Fase 1)

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Sumber Desain

File Figma `mybos` (`A37jm17h4BfrTDUSIhD9Bo`), ukuran frame 360×800 (mobile), tema gelap.

| Area | Node | Frame utama |
|---|---|---|
| Home guest | 4:12001 | Splash, Guest Home, Scrolled, Branch Selector, Guest Account, Product Catalog, Promotions |
| Sign In | 4:12041 | Sign In (empty/focus/phone/email), Verification Method (phone/email), OTP (empty/filled/error), Loading |
| Register | 178:65368 | Sign In, Registration (empty/filled/ready), Verification, OTP, Terms and Conditions |
| Home signed-in | 4070:12718 | Signed-In Home, Scrolled, Full Page, Branch Selector, Membership Card |
| Product | 10:39836 | Catalog (top/scrolled/filtered/empty), Product Details |
| Promo | 4062:23259 | Promotions (top/mid/bottom), Points Rewards, Vouchers |
| Account | 20:7721 | Overview, Edit Profile, Points History, Transaction Detail, Vouchers, Voucher Details, Sign Out |
| Change Phone | 183:72953 | Choose Method, Current/New Phone OTP, New Phone, Phone Updated |
| Delete Account | 4068:41637 | Konfirmasi (dengan/tanpa saldo), Verifikasi OTP, Status, Pending, Cancel |

## Design Token (dari Figma, mode gelap)

- Warna: primary `#FAC038`, on-primary `#000000`, primary-container `#FCDF9C`; surface `#000000`, surface-container-lowest `#191919`, surface-container-low `#262626`; on-surface `#FFFFFF`, on-surface-variant `#B3B3B3`, outline `#666666`; success `#88DDA0`, danger `#F48471`.
- Font: Poppins (title SemiBold, body Regular/Medium, button SemiBold); ukuran 14/16/18/22/24.
- Radius 5/8/10/full; spacing 2/4/8/12/16/24/32/40/64/80; elevation 1/2/3/-1.
- Bottom nav: guest 4 menu (Home, Product, Promo, Account); signed-in 4 menu + FAB tengah (membership card). Perpindahan lewat logic switch kondisi show/hide FAB dengan penyesuaian jarak menu (template).

## Goals

Mengganti tampilan dan alur aplikasi (yang masih berupa placeholder hayo) dengan desain MyBoss: guest/signed-in home, auth, produk, promo, akun, ubah nomor telepon, dan hapus akun, memakai arsitektur clean architecture yang sudah ada.

## Keputusan & Asumsi

1. **Endpoint**: tetap memakai endpoint hayo yang ada di `endpoints.dart` untuk fase ini (paling mudah, tanpa risiko). Saat backend MyBoss siap, perubahan cukup pada konstanta di satu file tersebut. Tidak ada rename massal sekarang.
2. **Alur verifikasi OTP** (WhatsApp/email, empty/filled/error) memakai fitur `verifications` yang sudah ada; hanya penyesuaian tampilan dan copy.
3. **Delete Account** mengikuti template yang sudah ada (termasuk `TODO(backend)` pada endpoint) sambil menunggu keputusan scrum master.
4. **Font** mengikuti variabel Figma (Poppins), bukan fallback Plus Jakarta Sans pada kode referensi.
5. Data yang belum punya API (cabang, katalog, brand logo, produk poin, voucher) memakai data statis di balik interface repository, agar mudah diganti.
6. Social login pada frame Sign In bersifat hidden di desain — tidak diimplementasikan.
7. Tombol ikon 40×40 di kanan atas Sign In berfungsi sebagai **tombol tutup**.
8. **FAB bottom nav**: cukup logic switch kondisi show/hide FAB dan penyesuaian jarak antar menu — template sudah menyediakan.
9. **Sign In** memakai satu input; di atasnya ada 2 tombol switch (Telepon, Email), default Telepon.
10. **Halaman T&C** memakai halaman yang sudah ada di Account (diakses dari Account dan dari Register), hanya di-restyle.
11. **Stamps diganti points** (Home signed-in dan Account/Points History).

## Out of Scope

- Perubahan nama endpoint ke MyBoss API.
- Social login, keranjang/checkout (floating cart di desain disembunyikan).
- Layout tablet/desktop.

## Target Selesai

2026-10-28 (89 task × 20 menit; 15 task per hari kerja mulai 2026-10-21: 21, 22, 23, 26, 27 Okt masing-masing 15 task, 28 Okt 14 task). Jadwal disetujui.

## User Stories / Scope

### Story: Fondasi Tema, Aset & Komponen Shared (MYB-79)

Sebagai developer, saya ingin tema, aset, dan komponen dasar sesuai Figma agar semua halaman konsisten.

**Acceptance Criteria:**
- Token warna/font/radius sesuai Figma; tema gelap default.
- Komponen tombol primary/secondary, input, chip status, bottom sheet, dialog, notification animation tersedia.
- Bottom nav guest (4 menu) dan signed-in (4 menu + FAB) sesuai desain.

**Task breakdown (8):**
1. Cek token tema `mobile_app_core` branch `mybos-core` vs token Figma
2. Override token warna gelap & font Poppins di tema
3. Unduh aset logo MyBoss, ikon nav, dan logo brand dari Figma ke `assets/`
4. Bottom nav guest (Home, Product, Promo, Account)
5. Logic switch kondisi show/hide FAB + penyesuaian jarak antar menu (pakai template)
6. Komponen tombol primary/secondary & input field
7. Komponen chip status, bottom sheet (anchor+close), dialog konfirmasi
8. Komponen notification animation

### Story: Splash & Branch Selector (MYB-78)

Sebagai pengguna, saya ingin memilih cabang toko dari header Home.

**Acceptance Criteria:**
- Splash menampilkan logo 264×264.
- Header Home menampilkan nama cabang, status Open/Closed, kota dan jarak.
- Bottom sheet daftar cabang dapat dibuka/ditutup dan menyimpan pilihan.

**Task breakdown (7):**
1. Splash Flutter sesuai frame 01
2. Entity & repository cabang (endpoint store yang ada)
3. BranchCubit + simpan pilihan (hydrated)
4. Widget BranchCard
5. BranchSelectorSheet (judul, list, close)
6. Header cabang di Home (nama, badge status, jarak)
7. Hubungkan header → sheet → pilihan

### Story: Sign In (MYB-77)

Sebagai pengguna, saya ingin masuk dengan nomor telepon atau email.

**Acceptance Criteria:**
- Layout sesuai frame (logo, judul, input, tombol, tautan register).
- State empty, focused, phone entered, email entered, loading.
- Memakai endpoint sign-in/send-code yang sudah ada.

**Task breakdown (7):**
1. Layout SignInPage (logo, judul, form, tombol)
2. Switch Telepon/Email (2 tombol di atas input, default Telepon)
3. Input tunggal mengikuti mode switch + validasi tipe
4. State focus/filled & penyesuaian saat keyboard muncul
5. Tombol ikon kanan atas sebagai tombol tutup
6. Loading state "Signing in" + pesan error
7. Copy en/id sign in + wiring endpoint sign-in/send-code

### Story: Register (MYB-76)

Sebagai pengguna baru, saya ingin mendaftar dengan memilih avatar dan mengisi data.

**Acceptance Criteria:**
- Avatar picker horizontal, tiga input, tombol submit, tautan T&C.
- State empty, filled, ready to submit.
- Halaman T&C memakai halaman yang sudah ada di Account.

**Task breakdown (7):**
1. Layout RegisterPage
2. Avatar picker (10 avatar, scroll horizontal)
3. Tiga input form + validasi
4. State empty/filled/ready-to-submit
5. Teks persetujuan + tautan ke halaman T&C yang sudah ada di Account
6. Restyle halaman T&C yang dipakai ulang dari Account
7. Copy en/id register + wiring endpoint sign-up

### Story: Verifikasi OTP (tetap template) (MYB-75)

**Acceptance Criteria:**
- Pilih metode (WhatsApp/email), OTP empty/filled/error tampil sesuai desain.

**Task breakdown (5):**
1. Restyle halaman metode verifikasi (phone & email)
2. Restyle OTP phone (empty/filled/error)
3. Restyle OTP email (empty/filled/error)
4. Ilustrasi OTP & state tombol resend
5. Copy en/id verifikasi

### Story: Home Guest (MYB-74)

**Acceptance Criteria:**
- Section: header cabang, blok poin + Sign up, strip logo brand, katalog produk, panel "Earn Points, Get Free Item", CTA.
- Scroll state sesuai frame 02/03.

**Task breakdown (8):**
1. Blok poin & CTA Sign up / "I already have an account"
2. Strip logo brand + teks
3. Section "Our Product Catalogs" (kartu produk + chip kategori)
4. Panel "Earn Points, Get Free Item" (grid 2×2)
5. Separator & CTA "View all" / "Explore"
6. State scrolled
7. Model & datasource Home (statis dulu)
8. HomeCubit guest

### Story: Home Signed-in & Membership Card (MYB-73)

**Task breakdown (6):**
1. Layout Signed-In Home (frame 02/06)
2. Kartu poin/ringkasan member
3. Bottom sheet Membership Card (barcode)
4. Notification animation
5. Adaptasi logika stamps hayo menjadi points
6. Model & HomeCubit signed-in

### Story: Product Catalog & Detail (MYB-72)

**Task breakdown (8):**
1. Catalog page (top/scrolled)
2. Filter kategori & hasil filter
3. Empty results
4. Product details sheet (gambar, nama, deskripsi)
5. Specs list & related products
6. Model produk MyBoss (ganti MenuYogurtModel/Toping)
7. Repository/datasource produk (statis dulu)
8. Adaptasi MenuBloc

### Story: Promo (fitur baru) (MYB-71)

**Task breakdown (7):**
1. Struktur feature `promo` (data/domain/presenter)
2. Promotions page (All) + tab
3. Points Rewards list
4. Vouchers list (coupon card)
5. Voucher details sheet
6. PromoCubit
7. Route & hubungkan ke tab nav Promo

### Story: Account (MYB-70)

**Task breakdown (7):**
1. Account overview guest & signed-in
2. Enable & sesuaikan ListMenuAkun (termasuk T&C)
3. Edit Profile (avatar, input, button group)
4. Points History (ganti stamps menjadi points)
5. Points Transaction Detail sheet
6. Dialog Sign Out
7. Copy en/id account

### Story: Change Phone Number (MYB-69)

**Task breakdown (6):**
1. Pilih metode verifikasi
2. OTP nomor lama
3. Input nomor baru (state keyboard)
4. OTP nomor baru
5. State "Phone Number Updated" + notifikasi
6. Wiring endpoint update phone yang ada

### Story: Delete Account (template) (MYB-68)

**Task breakdown (6):**
1. Sheet konfirmasi (dengan saldo / tanpa saldo)
2. Sheet verifikasi OTP (sent/empty/filled)
3. Status request & loading "Submitting"
4. State Account "Deletion Pending"
5. Dialog Cancel Deletion & state Canceled
6. Wiring endpoint (tetap `TODO(backend)`)

### Story: Migrasi Konten Hayo → MyBoss (MYB-67)

**Task breakdown (4):**
1. Catat endpoint hayo yang dipakai (tidak diubah sekarang)
2. Ganti copy hayo di en.json/id.json dan delete_account_sheet
3. Ganti aset `logo_hayo_*` ke logo MyBoss
4. Hapus aset & kode hayo yang tidak terpakai (maskot, cup, stamps, tier)

### Story: QA Visual & Verifikasi (MYB-66)

**Task breakdown (3):**
1. Bandingkan hasil dengan screenshot Figma per halaman
2. `flutter analyze` = No issues, `flutter test`
3. Build & uji di perangkat (Android staging)
