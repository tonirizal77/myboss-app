# CLAUDE.md

Guidance for Claude Code when working in this repository. See [README.md](README.md) for the full project overview.

## Project

`myboss_app` — Flutter app for MyBoss (Oraimo), scaffolded from `flutter_app_template` (clean architecture). Theme/branding comes from `mobile_app_core` (git, branch `mybos-core`). Business content (copy, assets, endpoints) is still placeholder data inherited from `hayo_app` — replace per product requirements.

Targets: Android, iOS, macOS, web (windows folder exists but is unused). Dart SDK `^3.12.2`.

## Common commands

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # freezed / json_serializable / envied
flutter analyze                                            # must stay at "No issues found"
flutter test

flutter run --flavor staging --android-skip-build-dependency-validation   # Android device
flutter build apk --debug --flavor staging --android-skip-build-dependency-validation
flutter run -d macos                                       # no --flavor on macOS (no per-flavor schemes)
```

Flavors (Android `build.gradle.kts` + iOS schemes): `staging` (`.staging`), `prod` (`.prod`), `live` (no suffix). Application id / namespace: `com.olsmobile.myboss_app`. VS Code launch configs live in `.vscode/launch.json`.

## Architecture

```
lib/
├── main.dart            # bootstrap: Env.init → EasyLocalization → HydratedStorage → InjectionsCore → InjectionFeatures → runApp
├── core_feat/           # app-specific core; core_feat.dart barrel also re-exports mobile_app_core
│   ├── network/         # Env (envied), ConfigServer, endpoints, access_server
│   ├── navigation/      # go_router routes
│   ├── controller/      # app_menu (bottom nav), app_settings, app_manage_flows
│   ├── shared/ support/ # cross-feature widgets/utils, asset collection
│   ├── template/        # responsive_widget / responsive_style (mobile/tablet/desktop shell)
│   └── translations/    # easy_localization (en, id) — locale_keys.g.dart is generated
└── features/            # auth, home, account, menu, order, stores, verifications, global
    └── <feature>/{data,domain,presenter}   # datasource+repository → entity+usecase → bloc/cubit+pages+widgets
```

- Each feature exposes barrels (`datas.dart`, `domains.dart`, `presenters.dart`, `<name>_ft.dart`); import via `core_feat/core_feat.dart` and `features/features.dart`.
- State: `flutter_bloc` + `hydrated_bloc`. DI: `get_it` (`InjectionsCore`, `InjectionFeatures`). HTTP: Dio through `DioHttp3` (from mobile_app_core). Translations in `assets/translations/{en,id}.json`.
- Responsive: pages are wrapped in `ResponsiveRootPage`; windows ≥1200px fall into the "desktop" category, which falls back to the `tablet` slot (see `docs/prd/PRD-001`).

## Conventions

- Generated files (`*.g.dart`, `*.freezed.dart`) are excluded from the analyzer; regenerate with build_runner, never hand-edit.
- `analysis_options.yaml` intentionally ignores stylistic lints (string interpolation, widget const/key lints, dangling doc comments, TODOs). Real issues (e.g. `prefer_final_fields`, missing deps) should be fixed in code, not ignored. Platform folders are excluded from analysis.
- Secrets: API URLs/keys come from `.env` via `envied` (`lib/core_feat/network/env/env.g.dart` is generated and obfuscated). Use `.env.dummy` as template. **Never print or paste real `.env` values** into chat, docs, PRDs, or commits beyond what is already tracked.
- Locale/tooling: user-facing replies to the user are in Bahasa Indonesia when they write in it; code, commits, and technical docs are in English.

## Platform gotchas

- **Android Gradle**: `android/build.gradle.kts` forces Kotlin `jvmTarget` 17 on all subprojects (fixes plugin JVM-target mismatch, e.g. `screen_protector`). AGP 8.11.1 / Kotlin 2.2.20 trigger Flutter deprecation warnings; they are silenced with `--android-skip-build-dependency-validation` (already in launch.json). Upgrading to AGP 9.x / Kotlin 2.3.20+ is a separate, untested task.
- **Android styles**: `res/values/styles.xml` and `res/values-night/styles.xml` define `LaunchTheme`/`NormalTheme` required by `AndroidManifest.xml`. Icon/asset generators have deleted them before — check `git status` after running any generator.
- **Splash on Android 12+**: the system Splash Screen API ignores `windowBackground`. `res/values-v31/` and `res/values-night-v31/` set `windowSplashScreenBackground` + `windowSplashScreenAnimatedIcon` (`@drawable/launch_image`); `launch_background.xml` only serves Android < 12.
- **Icons/names**: app name comes from per-flavor `resValue("string","app_name",…)`. Web icon files must be lowercase (`web/icons/icon-192.png`, …) and match `web/manifest.json`; macOS `AppIcon.appiconset` needs its `Contents.json`.
- **macOS**: needs `com.apple.security.network.client` entitlement (Debug/Release) and `FLTEnableMergedPlatformUIThread=false` in `Info.plist`; deployment target 12.0.
- Local test device used in this repo: Realme RMX5566 (adb id in `launch.json` → `RealmeC85`).

## Workflow (Sera-App)

- Project key **MYB** (Oraimo Project), epic **MYB-1**. PRDs live in `docs/prd/PRD-<nnn>-<slug>.md` with a `.sera-map.json` mapping stories/tasks; follow the existing PRD format. Use the `sera-scrum:workflow` skill — no tasks without a PRD.
- Task sizing used so far: 1 task = 1 SP = 20 minutes, ~15 tasks per working day, status `Completed (Local)` when done; commits carry `Sera-Task: MYB-<n>` trailers.
- Commit only when asked; check the active branch first (`dev_myboss_v1` at the time of writing), do not push to `main` unprompted.
