# PRD-014: MyBoss App — Syarat & Kebijakan dari API dan Kartu Cabang sesuai Figma

## Project Sera-App

- Project key: MYB (Oraimo Project)
- Epic existing: MYB-1 (Mobile App - Create New App for MyBoss (Oraimo))

## Goals

1. Halaman Akun punya item "Syarat & Kebijakan" untuk guest dan member.
2. Halaman Syarat & Kebijakan menampilkan dokumen dari `GET /terms-and-policy` (Terms of use, Privacy Policy, Refund Policy) menggantikan teks statis bawaan hayo.
3. Dokumen diambil dari cabang yang dipilih; bila cabang tidak punya dokumen atau gagal, diambil dari domain pusat.
4. Kartu cabang di daftar "Pilih cabang kami" mengikuti Figma: avatar besar bercincin putih yang menonjol di atas kartu.

## Keputusan & Asumsi

1. Bentuk respons `GET /terms-and-policy` (contoh dari backend, 2026-11-12):

   | Field | Dipakai untuk |
   |---|---|
   | `data[].title` | judul kartu dokumen |
   | `data[].description` | isi dokumen (HTML) |
   | `data[].sitenav_link_type_id` | jenis dokumen (`TOU`, `PPO`, `RFP`) |
   | `data[].published`, `data[].status` | hanya `published: true` dan `status: "A"` yang ditampilkan |

2. Path `/terms-and-policy` memakai konstanta `Endpoints.termsAndPolicy` yang sudah ada (asumsi: sama dengan Postman — perlu dikonfirmasi backend).
3. Urutan domain: cabang terpilih (`ConfigServer.branchUrl`) lebih dulu, lalu domain pusat; tanpa cabang terpilih hanya satu request ke pusat.
4. Jawaban terakhir disimpan `AccountBloc` (hydrated) sehingga langsung tampil saat halaman dibuka, sambil memuat versi terbaru.
5. Item menu ditaruh di `AccountSettingsCard` (di bawah Mode gelap) karena `ListMenuAkun` lama tidak ditampilkan di halaman Akun.
6. Teks T&C statis hayo (`tnc.1` … `tnc.12`) dihapus dari `en.json` / `id.json`; label menjadi "Terms & Policy" / "Syarat & Kebijakan".
7. Avatar cabang berdiameter 120 dengan cincin putih 6; 52 px berada di atas kartu, sisanya menimpa kartu.

## Out of Scope

- Verifikasi terhadap server staging (baru diuji dengan data mock).
- Tampilan tablet / desktop halaman Syarat & Kebijakan dan kartu cabang.
- Halaman FAQ dan Tentang Kami dari API.
- Perbaikan `delete_account_test.dart` (masih mengharapkan path `/profile/hayo/...`) dan `widget_test.dart` bawaan template.

## Target Selesai

2026-11-13 (4 task × 30 menit).

## User Stories / Scope

### Story: Syarat & Kebijakan dari API

Sebagai guest maupun member, saya ingin membaca syarat penggunaan, kebijakan privasi, dan kebijakan refund dari halaman Akun.

**Acceptance Criteria:**
- Kartu pengaturan Akun punya baris "Syarat & Kebijakan" (guest & member) yang membuka halamannya.
- Halaman memanggil `GET /terms-and-policy` di cabang terpilih, lalu domain pusat bila cabang kosong / gagal.
- Tiap dokumen tampil sebagai kartu: judul + isi HTML mengikuti tema gelap / terang; dokumen tidak published / tidak aktif / tanpa isi disembunyikan.
- Ada tampilan memuat, gagal, dan kosong dengan tombol coba lagi.
- Mock `assets/mock/get/terms-and-policy.json` tersedia (data sintetis); en & id punya key yang sama.

**Task breakdown (3):**
1. TncModel (daftar dokumen) + AccountRemote `/terms-and-policy` cabang → pusat + mock + test
2. Halaman Syarat & Kebijakan: kartu HTML, loading / gagal / kosong + test
3. Baris "Syarat & Kebijakan" di AccountSettingsCard + terjemahan en/id + test

### Story: Kartu Cabang sesuai Figma

Sebagai pengguna, saya ingin kartu cabang tampil seperti desain: foto cabang besar dengan cincin putih di atas kartu.

**Acceptance Criteria:**
- Avatar cabang berdiameter 120 dengan cincin putih yang terlihat di sekeliling foto, menonjol di atas pojok kiri kartu.
- "Selected ✓" / tombol "Select" di kanan, sejajar bagian avatar yang menimpa kartu; nama, status + jarak, dan alamat di bawah avatar.
- Ukuran avatar bisa diatur dari satu parameter (`_BranchAvatar.size`).

**Task breakdown (1):**
1. BranchCard: avatar 120 bercincin putih + layout kartu & padding daftar cabang
