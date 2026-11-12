import 'package:flutter/widgets.dart';

import '../theme/mybos_theme.dart';

/// Rebuilds the whole app once the language changed.
///
/// easy_localization's `'key'.tr()` reads the current translations but does
/// not subscribe the widget to the locale, so `const` pages, kept-alive tabs
/// and `BlocBuilder`s with a `buildWhen` kept showing the old language until
/// something else rebuilt them. Placed in `MaterialApp.builder` (below
/// [Localizations]), this sees the new locale only after its translations
/// finished loading, then marks every element dirty - keeping all State,
/// like the theme switch does ([MyBossTheme.rebuildAll]).
class LocaleRebuilder extends StatefulWidget {
  const LocaleRebuilder({super.key, required this.child, this.onChanged});

  final Widget child;

  /// After a language change (not on start): e.g. fetch server texts again,
  /// which come in the language of the request.
  final VoidCallback? onChanged;

  @override
  State<LocaleRebuilder> createState() => _LocaleRebuilderState();
}

class _LocaleRebuilderState extends State<LocaleRebuilder> {
  Locale? _locale;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final locale = Localizations.localeOf(context);
    final changed = _locale != null && _locale != locale;
    _locale = locale;

    // Marking the tree dirty is not allowed mid-build: next frame.
    if (changed) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        MyBossTheme.rebuildAll();
        widget.onChanged?.call();
      });
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
