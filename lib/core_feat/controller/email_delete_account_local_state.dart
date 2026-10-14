part of 'controllers.dart';

/// Optimistic, unverified local marker for [DeleteAccountMode.emailConfirmation]
/// - set once the user taps "Kirim Permintaan" and the mail app is
/// successfully launched ([OpenLinksHelper.launchEmail] returns `true`).
///
/// This is deliberately NOT the same as [DeleteAccountLocalState]: no
/// backend call happens anywhere in the email-confirmation flow, so
/// there's no real server-side pending row to track or cancel - this only
/// remembers "the user was handed a pre-filled email draft", not "the
/// email was sent" or "support processed it". The account only actually
/// becomes deactivated once support does that manually on their end - the
/// app finds out about that indirectly, the next time an API call returns
/// error_code 4033 ("Akses sudah tidak aktif") and forces a logout, not
/// through this flag.
abstract class EmailDeleteRequestLocalState {
  static const _kSentKey = 'is_email_delete_request_sent';
  static const _kSentAtKey = 'email_delete_request_sent_at';

  static bool get hasSentRequest =>
      getIt<SharedPreferencesHelper>().prefInstance.getBool(_kSentKey) ?? false;

  /// Waktu (device-lokal) terakhir kali draft email berhasil dibuka -
  /// kosong kalau belum pernah.
  static String get sentAt =>
      getIt<SharedPreferencesHelper>().prefInstance.getString(_kSentAtKey) ??
      '';

  /// [sentAt] yang sudah diformat jadi `d MMMM yyyy, HH:mm` untuk
  /// ditampilkan - kosong kalau belum pernah/tidak bisa di-parse.
  static String get sentAtFormatted {
    final _date = DateTime.tryParse(sentAt);
    if (_date == null) return '';

    return DateFormat('d MMMM yyyy, HH:mm').format(_date);
  }

  static Future<void> markSent() async {
    final _pref = getIt<SharedPreferencesHelper>().prefInstance;

    await _pref.setBool(_kSentKey, true);
    await _pref.setString(_kSentAtKey, DateTime.now().toIso8601String());
  }

  static Future<void> clear() async {
    final _pref = getIt<SharedPreferencesHelper>().prefInstance;

    await _pref.remove(_kSentKey);
    await _pref.remove(_kSentAtKey);
  }
}
