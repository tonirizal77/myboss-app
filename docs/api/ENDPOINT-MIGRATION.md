# Inventaris Endpoint: Hayo → MyBoss

Dokumen kerja untuk tim backend dan scrum master. Saat ini `myboss_app` masih memakai endpoint **hayo**
(`lib/core_feat/network/endpoints.dart`, 34 konstanta, 22 di antaranya memuat `hayo` pada path).
Pendaftaran + OTP sudah berhasil diuji end-to-end dengan API hayo (staging).

Prinsip migrasi: semua URL hanya ada di `endpoints.dart` dan base URL di `.env`, jadi perpindahan ke API MyBoss
cukup mengganti konstanta (dan model respons bila bentuknya berbeda) tanpa menyentuh UI.

## Status

| Kelompok | Endpoint (konstanta → path saat ini) | Dipakai oleh | Perlu keputusan backend |
|---|---|---|---|
| **A. Auth & OTP** (path generik) | `clientAuth` `/client/login` · `refreshToken` `/token/refresh` · `signUp` `/account/otp/sign-up` (+`/send`) · `signIn` `/account/otp/sign-in` (+`/send`) · `signOut` `/account/do/sign-out` · `deleteAccount` `/account/do/delete-account` | auth, verifications | Apakah backend MyBoss memakai platform yang sama? Kredensial client MyBoss. Apakah sign-in/OTP menerima `email` (UI sudah punya tab Email, saat ini mengirim `{email}` — lihat `TODO(backend)` di `verify_flows.dart`). `deleteAccount` belum ada di backend (`TODO(backend)`), menunggu keputusan scrum master. |
| **B. Cabang** | `storeData` `/store/hayo` · `storeListData` `/store/hayo/list` | stores (Branch selector, header Home) | Path MyBoss. Arti field `status` (open/closed) — saat ini ditebak (`open`/`1`/`buka`/`active`). Ketersediaan `image`, `city`, `location_lat/lon`. |
| **C. Profil & member** | `profileInfo` `/profile/hayo/info` · `avatarList` `/customer/hayo/avatar/list` · `generateCode` `/customer/hayo/generate-code` · `updateProfile` `/customer/hayo/update` · `voucherList` `/profile/discount-vouchers/hayo/list` | account, home | Path MyBoss. Avatar: staging mengirim maskot hayo, desain MyBoss memakai avatar pixel (saat ini fallback aset lokal). Barcode member (`generateCode`). |
| **D. Ubah telepon/email** | `verifyOldGetOtp` · `verifyOldSendOtp` · `verifyNewGetOtpPhone/Email` · `verifyNewSendOtp` (semua `/customer/hayo/update/otp/*`) | verifications | Path MyBoss; alur OTP nomor lama → nomor baru sama seperti sekarang. |
| **E. Katalog produk** | `menuYogurtList` `/catalog/hayo/yogurt/lists` · `menuTopingList` `/catalog/topping-hayo/lists` · (`catalogList/Show`, `menuYogurtShow`, `menuTopingShow` belum dipakai) | menu | Model produk MyBoss: kategori (Power/Audio/Wearable…), gambar, spesifikasi, produk terkait. Topping tidak ada di desain MyBoss. Endpoint detail produk dibutuhkan (Product Details). |
| **F. Stamps → Points** | `stamps` `/hayo/stamp` · `stampsBreakFree` · `stampsHistoryList` · `stampsHistoryShow` | home, account | Diganti konsep **points**: saldo, riwayat transaksi, detail transaksi, poin akan hangus. |
| **G. Konten** | `aboutUs` `/about-us` · `faq` `/faq` · `termsAndPolicy` `/terms-and-policy` · `showSpecificPage` `/page/sad/{pageID}` | account | Konten MyBoss (T&C saat ini masih teks hayo dari string lokal). |

## Endpoint baru yang dibutuhkan desain MyBoss (belum ada di hayo)

| Kebutuhan | Layar Figma | Catatan |
|---|---|---|
| Daftar promo | Promotions (All) | fitur `promo` baru |
| Points rewards (produk yang bisa ditukar poin, mis. "100 points") | Points Rewards, panel "Earn Points, Get Free Item" di Home | harga dalam poin |
| Voucher: daftar + detail (syarat & ketentuan voucher) | Vouchers, Voucher Details | `voucherList` hayo bisa jadi dasar |
| Brand / logo mitra | strip logo di Home guest | saat ini statis (aset lokal) |
| Produk terkait & spesifikasi | Product Details | |
| Riwayat poin & detail transaksi | Points History, Transaction Detail | |

## Urutan migrasi yang disarankan

1. **Konfirmasi platform & kredensial** (kelompok A) — tanpa ini sisanya tidak bisa diuji.
2. **Cabang (B)** dan **profil (C)** — dibutuhkan Home dan Account.
3. **Katalog (E)** dan **points (F)** — dibutuhkan Product, Home signed-in, Account.
4. **Endpoint baru (promo, rewards, voucher)** — dibutuhkan fitur Promo.
5. Ganti konstanta di `endpoints.dart`, sesuaikan model, lalu uji regresi pendaftaran/OTP.

Sampai API MyBoss siap, layar yang datanya belum ada memakai data statis di balik interface repository
(sesuai PRD-003), sehingga penggantian ke API nyata hanya mengubah implementasi data source.
