part of 'configs.dart';

/// Semua endpoint delete-account sekarang sudah terkonfirmasi real di
/// backend (lihat `API_SPEC_DELETE_ACCOUNT.md`), jadi mock ini seharusnya
/// tidak lagi diperlukan untuk pengembangan sehari-hari - dipertahankan
/// hanya sebagai fallback kalau perlu testing UI tanpa koneksi ke backend
/// (`kMockDeleteAccountApi` di bawah default-nya `false`).
///
/// Memungkinkan flow OTP -> submit -> cancel delete-account dijalankan
/// end-to-end di app yang sedang berjalan tanpa backend beneran, dengan
/// menyingkat langsung ke-4 URL ini dengan response sukses buatan, alih-alih
/// benar-benar memanggil network.
const bool kMockDeleteAccountApi = false;

/// Mengembalikan payload sukses buatan untuk [url] kalau itu salah satu
/// endpoint delete-account dan [kMockDeleteAccountApi] menyala, kalau tidak
/// `null` (artinya: lanjut ke pemanggilan API yang sebenarnya).
DataMap? mockDeleteAccountResponse(String url) {
  if (!kMockDeleteAccountApi) return null;

  switch (url) {
    case Endpoints.deleteAccountSendOtp:
    case Endpoints.deleteAccountVerifyOtp:
    case Endpoints.deleteAccountCancel:
    case Endpoints.deleteAccountReal:
      return const {'data': {}};

    default:
      return null;
  }
}
