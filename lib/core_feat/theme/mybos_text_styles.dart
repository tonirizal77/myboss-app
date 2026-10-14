import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'mybos_colors.dart';

/// MyBoss typography (Poppins, per Figma). Member names mirror
/// `AppTextStyles` from `mobile_app_core` so screens can switch by renaming.
class MyBossTextStyles {
  MyBossTextStyles._();

  static const String fontFamily = 'Poppins';

  // !Title
  static const TextStyle title = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );
  static final TextStyle titleBig1 = title.copyWith(fontSize: 32);
  static final TextStyle titleBig2 = title.copyWith(fontSize: 24);

  // !Subtitle
  static const TextStyle subtitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle subtitleHuge2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle subtitleBig1 = subtitleHuge2;
  static const TextStyle subtitleBig2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle subtitleSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

  // !Body
  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyBig1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyBig2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyHuge2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );
  static const TextStyle captionSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );

  // !Button
  static const TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.15,
  );
  static const TextStyle buttonSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.15,
  );
  static const TextStyle buttonBig = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  // !Hint
  static final TextStyle hint = body.copyWith(color: MyBossColors.grey50);

  // === HTML STYLES === //
  static final Map<String, Style> htmlBodyNoPadding = {
    'body': Style(margin: Margins.only(bottom: 8), padding: HtmlPaddings.zero),
  };
  static final Map<String, Style> htmlParagraphNoPadding = {
    'p': Style(margin: Margins.zero, padding: HtmlPaddings.only(bottom: 8)),
  };
}
