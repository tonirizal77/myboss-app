part of '../widgets.dart';

/// Formatting helpers for the points screens (follow the Figma copy).
abstract class PointsFormat {
  /// 6969 -> "6,969"
  static String thousands(int value, {String separator = ','}) {
    final digits = value.abs().toString();
    final out = StringBuffer();
    for (var i = 0; i < digits.length; i++) {
      if (i > 0 && (digits.length - i) % 3 == 0) out.write(separator);
      out.write(digits[i]);
    }
    return value < 0 ? '-$out' : '$out';
  }

  /// 30000 -> "Rp 30.000" (list) or "Rp 30,000" (receipt).
  static String rupiah(int value, {String separator = '.'}) =>
      'Rp ${thousands(value, separator: separator)}';

  static const _monthsEn = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  static const _monthsEnFull = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  static const _monthsId = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Mei',
    'Jun',
    'Jul',
    'Agu',
    'Sep',
    'Okt',
    'Nov',
    'Des',
  ];
  static const _monthsIdFull = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];

  /// "5 Mar 2026" - short month, used in lists.
  static String date(DateTime d, {bool id = false}) =>
      '${d.day} ${(id ? _monthsId : _monthsEn)[d.month - 1]} ${d.year}';

  /// "September 19, 2026" (en) / "19 September 2026" (id).
  static String dateLong(DateTime d, {bool id = false}) => id
      ? '${d.day} ${_monthsIdFull[d.month - 1]} ${d.year}'
      : '${_monthsEnFull[d.month - 1]} ${d.day}, ${d.year}';
}
