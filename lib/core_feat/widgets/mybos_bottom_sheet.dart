import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';

/// MyBoss bottom sheet (Figma `sheet`): round close button floating above a
/// black sheet that has a small drag anchor on top.
class MyBossBottomSheet {
  MyBossBottomSheet._();

  static Future<T?> show<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    bool showClose = true,
    bool isDismissible = true,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      isDismissible: isDismissible,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black54,
      builder: (context) => _SheetFrame(showClose: showClose, builder: builder),
    );
  }
}

class _SheetFrame extends StatelessWidget {
  const _SheetFrame({required this.showClose, required this.builder});

  final bool showClose;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.93;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showClose)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 16),
                child: Material(
                  color: MyBossColors.surface,
                  shape: const CircleBorder(),
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () => Navigator.of(context).maybePop(),
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.close,
                        size: 24,
                        color: MyBossColors.onSurface,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Flexible(
            child: Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: MyBossColors.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 6),
                  Container(
                    width: 32,
                    height: 6,
                    decoration: BoxDecoration(
                      color: MyBossColors.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Flexible(child: builder(context)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
