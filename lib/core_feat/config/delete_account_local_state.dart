part of 'configs.dart';

/// Menyimpan state "request penghapusan akun sedang pending" secara lokal
/// (SharedPreferences) supaya halaman Home dan member barcode sheet bisa
/// menampilkan status banner tanpa bergantung pada field dari backend.
///
/// Dibersihkan begitu user membatalkan request-nya (sukses
/// [UserEvent.userCancelDeleteAccount]) atau begitu akunnya benar-benar
/// terhapus (sukses [UserEvent.userDeleteAccount]). Penghapusannya sendiri
/// bersifat langsung/immediate (tidak ada grace period) begitu langkah
/// verify OTP+reason DAN langkah eksekusi real-nya sama-sama sukses - flag
/// pending ini hanya di-set ([markPending]) untuk dua kondisi edge case:
/// (1) verify OTP+reason sudah sukses (jadi baris pending sudah dibuat di
/// server) tapi langkah eksekusi real-nya gagal, dan (2) user mencoba lagi
/// flow delete-account padahal server sudah punya request yang pending -
/// lihat [AccountFlows].
abstract class DeleteAccountLocalState {
  static const _kPendingKey = 'is_delete_account_pending';
  static const _kScheduledAtKey = 'delete_account_scheduled_at';
  static const _kPendingPhoneKey = 'delete_account_pending_phone';

  /// Cermin reaktif dari [isPending]. [isPending] sendiri cuma pembacaan
  /// SharedPreferences biasa - itu tidak bisa "diamati" oleh Flutter, jadi
  /// widget yang berumur panjang (mis. `HomePage`, yang di-keep-alive di
  /// dalam `PageView` milik `MainPage`) tidak pernah otomatis rebuild
  /// ketika nilainya berubah di tempat lain. Widget seperti itu harus watch
  /// notifier ini (lewat `ValueListenableBuilder`) alih-alih membaca
  /// [isPending] langsung di `build()`. Disinkronkan otomatis oleh
  /// [markPending]/[clearPending]/[syncForAccount] - jangan pernah di-set
  /// manual dari luar file ini.
  static final ValueNotifier<bool> isPendingNotifier = ValueNotifier<bool>(
    false,
  );

  static bool get isPending =>
      getIt<SharedPreferencesHelper>().prefInstance.getBool(_kPendingKey) ??
      false;

  /// Panggil sekali saat app boot (lihat [SplashPage]) supaya
  /// [isPendingNotifier] mencerminkan nilai yang sudah tersimpan -
  /// [isPendingNotifier] defaultnya `false` sampai ini dipanggil.
  static void init() {
    isPendingNotifier.value = isPending;
  }

  /// Deadline dari server, batas waktu akun akan dihapus permanen - kosong
  /// kalau tidak diketahui.
  static String get scheduledAt =>
      getIt<SharedPreferencesHelper>().prefInstance.getString(
        _kScheduledAtKey,
      ) ??
      '';

  /// [scheduledAt] yang sudah diformat jadi `d MMMM yyyy, HH:mm` (mis. `4
  /// August 2026, 16:30`) untuk ditampilkan - kosong kalau tidak diketahui
  /// atau tidak bisa di-parse.
  static String get scheduledAtFormatted {
    final _date = DateTime.tryParse(scheduledAt);
    if (_date == null) return '';

    return DateFormat('d MMMM yyyy, HH:mm').format(_date);
  }

  /// "Xd Yh left" - null kalau [scheduledAt] tidak diketahui/tidak bisa
  /// di-parse atau sudah lewat, supaya pemanggilnya bisa menyembunyikan
  /// countdown chip-nya alih-alih menampilkan "0d 0h left" saat
  /// penghapusan akan segera terjadi.
  static String? get countdownLabel {
    final _deadline = DateTime.tryParse(scheduledAt);
    if (_deadline == null) return null;

    final _remaining = _deadline.difference(DateTime.now());
    if (_remaining.isNegative) return null;

    return LocaleKeys.akun_delete_status_countdown.tr(
      args: ['${_remaining.inDays}d ${_remaining.inHours.remainder(24)}h'],
    );
  }

  /// [scheduledAt] kosongkan hanya kalau memang benar-benar tidak ada
  /// tanggal apa pun yang bisa dipakai bahkan sebagai estimasi - kalau
  /// tidak dikasih, di-default ke *sekarang + 30 hari* mengikuti aturan
  /// `auto_processed_date = request_date + 30 hari` di
  /// API_SPEC_DELETE_ACCOUNT.md ยง1.1, supaya [countdownLabel]/
  /// [scheduledAtFormatted] selalu punya sesuatu untuk ditampilkan begitu
  /// akun berstatus pending, bukannya diam-diam disembunyikan.
  static Future<void> markPending({String? scheduledAt}) async {
    final _pref = getIt<SharedPreferencesHelper>().prefInstance;
    final _resolvedScheduledAt =
        scheduledAt ??
        DateTime.now().add(const Duration(days: 30)).toIso8601String();

    await _pref.setBool(_kPendingKey, true);
    await _pref.setString(_kScheduledAtKey, _resolvedScheduledAt);
    await _pref.setString(
      _kPendingPhoneKey,
      getIt<SharedPreferencesHelper>().getPhoneUser() ?? '',
    );

    isPendingNotifier.value = true;
  }

  static Future<void> clearPending() async {
    final _pref = getIt<SharedPreferencesHelper>().prefInstance;

    await _pref.remove(_kPendingKey);
    await _pref.remove(_kScheduledAtKey);
    await _pref.remove(_kPendingPhoneKey);

    isPendingNotifier.value = false;
  }

  /// Menyelaraskan flag pending terhadap akun yang baru saja login.
  ///
  /// Flag ini sengaja tetap ada meski sudah logout (request penghapusannya
  /// tetap aktif di server untuk akun itu walau sudah sign out dari sesi
  /// ini - lihat [UserEvent.userLogout]), jadi harus dibuang di sini, titik
  /// pertama nomor telepon akun yang *berbeda* diketahui, supaya banner
  /// basi dari satu akun tidak "bocor" ke login berikutnya di device yang
  /// sama.
  static Future<void> syncForAccount(String phone) async {
    final _pref = getIt<SharedPreferencesHelper>().prefInstance;
    final _owner = _pref.getString(_kPendingPhoneKey) ?? '';

    if (isPending && _owner != phone) {
      await clearPending();
    }
  }
}
