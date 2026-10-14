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
      // Phone-width sheet on tablets / desktop.
      constraints: const BoxConstraints(maxWidth: 640),
      builder: (context) => _SheetFrame(showClose: showClose, builder: builder),
    );
  }

  /// Bottom sheet on phones, centered dialog on wider windows (tablet /
  /// desktop), with the same round close button.
  static Future<T?> adaptive<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    bool showClose = true,
    double maxWidth = 560,
  }) {
    // Same breakpoint as Responsive.isMobile (< 600).
    if (MediaQuery.sizeOf(context).width < 600) {
      return show<T>(context, builder: builder, showClose: showClose);
    }

    return showDialog<T>(
      context: context,
      barrierColor: Colors.black54,
      builder: (context) => Dialog(
        backgroundColor: MyBossColors.surface,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Stack(
            children: [
              builder(context),
              if (showClose)
                Positioned(
                  top: 12,
                  right: 12,
                  child: _CloseButton(
                    onTap: () => Navigator.of(context).maybePop(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyBossColors.surface,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 40,
          height: 40,
          child: Icon(Icons.close, size: 24, color: MyBossColors.onSurface),
        ),
      ),
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
                    child: SizedBox(
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
              decoration: BoxDecoration(
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
