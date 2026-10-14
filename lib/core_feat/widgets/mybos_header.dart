import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/app_shareds.dart';
import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';

/// Page header for screens other than the main tabs (Figma `header other`):
/// black bar, 24px semibold title and an optional close button.
class MyBossHeader extends StatelessWidget implements PreferredSizeWidget {
  const MyBossHeader({super.key, required this.title, this.onClose});

  final String title;

  /// Shows the close (X) button when set.
  final VoidCallback? onClose;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: MyBossColors.surface,
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: MyBossTextStyles.titleBig2.copyWith(
                color: MyBossColors.onSurface,
              ),
            ),
          ),
          if (onClose != null)
            SizedBox(
              width: 40,
              height: 40,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: onClose,
                icon: SvgPicture.asset(
                  Assets.icClose,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    MyBossColors.onSurface,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
