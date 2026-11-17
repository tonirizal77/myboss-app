import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart'
    show ThemeBloc, ThemeEvent, getIt;
import 'package:myboss_app/core_feat/theme/mybos_colors.dart';
import 'package:myboss_app/core_feat/theme/mybos_theme.dart';

void main() {
  tearDown(() => MyBossColors.apply(Brightness.dark));

  test('dark is the default palette (yellow brand)', () {
    expect(MyBossColors.palette.brightness, Brightness.dark);
    expect(MyBossColors.primary, const Color(0xFFFAC038));
    expect(MyBossColors.surface, const Color(0xFF000000));
  });

  test('apply switches the whole palette to light (blue brand)', () {
    MyBossColors.apply(Brightness.light);

    expect(MyBossColors.primary, const Color(0xFF173C82));
    expect(MyBossColors.surface, const Color(0xFFFFFFFF));
    expect(MyBossColors.onSurface, const Color(0xFF191919));

    MyBossColors.apply(Brightness.dark);
    expect(MyBossColors.primary, const Color(0xFFFAC038));
  });

  test('themes expose the matching brightness and brand colors', () {
    expect(MyBossTheme.dark.brightness, Brightness.dark);
    expect(MyBossTheme.dark.colorScheme.primary, MyBossPalette.dark.primary);
    expect(MyBossTheme.light.brightness, Brightness.light);
    expect(MyBossTheme.light.colorScheme.primary, MyBossPalette.light.primary);
    expect(MyBossTheme.light.colorScheme.surface, MyBossPalette.light.surface);
  });

  test('apply reports whether the palette really changed', () {
    expect(MyBossColors.apply(Brightness.dark), isFalse); // already dark
    expect(MyBossColors.apply(Brightness.light), isTrue);
    expect(MyBossColors.apply(Brightness.light), isFalse); // same again
    expect(MyBossColors.apply(Brightness.dark), isTrue);
  });

  group('rebuildAll', () {
    testWidgets('refreshes const subtrees and keeps State', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: _Probe()));

      Color swatch() =>
          tester.widget<ColoredBox>(find.byKey(const Key('swatch'))).color;

      // Build some State first.
      await tester.tap(find.byKey(const Key('count')));
      await tester.pump();
      expect(find.text('1'), findsOneWidget);
      expect(swatch(), MyBossPalette.dark.primary);

      // Switch the palette and rebuild the tree in place.
      MyBossColors.apply(Brightness.light);
      MyBossTheme.rebuildAll();
      await tester.pump();

      expect(swatch(), MyBossPalette.light.primary);
      expect(find.text('1'), findsOneWidget); // State survived
    });
  });

  group('setupDefaultDark', () {
    setUpAll(() async {
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory(
          Directory.systemTemp.createTempSync('default_dark').path,
        ),
      );
    });
    setUp(() async => HydratedBloc.storage.clear());
    tearDown(() async => getIt.reset());

    Future<void> settle() =>
        Future<void>.delayed(const Duration(milliseconds: 50));

    /// One app start: the bloc registered lazily like `mobile_app_core`
    /// does, then the setup; the previous start (if any) is shut down first.
    Future<ThemeBloc> start(ThemeBloc Function() create) async {
      await getIt.reset();
      getIt.registerLazySingleton<ThemeBloc>(create);
      final sub = MyBossTheme.setupDefaultDark();
      addTearDown(sub.cancel);
      final bloc = getIt<ThemeBloc>();
      addTearDown(bloc.close);
      await settle();
      return bloc;
    }

    test('fresh install starts in Dark and stays Dark on restart', () async {
      expect((await start(ThemeBloc.new)).state.themeMode, ThemeMode.dark);
      expect((await start(ThemeBloc.new)).state.themeMode, ThemeMode.dark);
    });

    test('keeps a mode stored by an older build', () async {
      await HydratedBloc.storage.write('ThemeBloc', {'themeMode': 'light'});

      expect((await start(ThemeBloc.new)).state.themeMode, ThemeMode.light);
    });

    test('stores the choice so it survives a restart', () async {
      final bloc = await start(ThemeBloc.new);
      bloc.add(const ThemeEvent.changeTheme(ThemeMode.light));
      await settle();

      expect((await start(ThemeBloc.new)).state.themeMode, ThemeMode.light);
    });

    test('obfuscated build (minified type name): Dark + choice kept', () async {
      final bloc = await start(_MinifiedThemeBloc.new);
      expect(bloc.state.themeMode, ThemeMode.dark);

      bloc.add(const ThemeEvent.changeTheme(ThemeMode.light));
      await settle();

      final restarted = await start(_MinifiedThemeBloc.new);
      expect(restarted.state.themeMode, ThemeMode.light);
    });
  });
}

/// `--obfuscate` renames `ThemeBloc`, so HydratedBloc keys it by another name.
class _MinifiedThemeBloc extends ThemeBloc {
  @override
  String get storagePrefix => 'xQ';
}

/// `const` widget reading the static palette + a stateful counter.
class _Probe extends StatefulWidget {
  const _Probe();

  @override
  State<_Probe> createState() => _ProbeState();
}

class _ProbeState extends State<_Probe> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          key: const Key('count'),
          onTap: () => setState(() => _count++),
          child: Text('$_count', textDirection: TextDirection.ltr),
        ),
        const _Swatch(),
      ],
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch();

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 10,
    child: ColoredBox(key: const Key('swatch'), color: MyBossColors.primary),
  );
}
