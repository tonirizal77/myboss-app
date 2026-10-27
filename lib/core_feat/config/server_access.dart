part of 'configs.dart';

/// Where the app's HTTP data comes from.
enum DataSourceMode {
  /// Local JSON files in `assets/mock/`, served by [MockServerInterceptor].
  mock,

  /// The real server (default).
  api,
}

/// MARK: Control of Server Access (Change HERE)
///
/// Single switch for the data source of every HTTP request:
/// - [DataSourceMode.api]: the real server for the current flavor.
/// - [DataSourceMode.mock]: `assets/mock/<method>/<path>.json` - nothing
///   reaches the network, so the app runs without a backend.
///
/// Pick the mode at run/build time (default `api`):
/// ```
/// flutter run --flavor staging --dart-define=DATA_SOURCE=mock
/// ```
///
/// Flavor `live` and release builds are locked to [DataSourceMode.api]:
/// [DATA_SOURCE] and [mockOverrides] are ignored and the mock interceptor
/// is never installed.
abstract final class ServerAccess {
  /// Raw `--dart-define=DATA_SOURCE=...` value.
  static const String _requested = String.fromEnvironment(
    'DATA_SOURCE',
    defaultValue: 'api',
  );

  /// Endpoints answered by mock even in [DataSourceMode.api], because their
  /// backend is not ready yet. Use [Endpoints] constants; `{id}`-style
  /// parameters match any value.
  static const Set<String> mockOverrides = {};

  /// `true` when mock data must never be used (live flavor / release build).
  static bool get isLocked => kReleaseMode || Env.flavor == Flavor.live;

  /// Active data source.
  static DataSourceMode get mode =>
      resolveMode(requested: _requested, locked: isLocked);

  static bool get isMock => mode == DataSourceMode.mock;

  /// Whether any request may be served from mock - decides if
  /// [MockServerInterceptor] is installed at all.
  static bool get canMock => !isLocked && (isMock || mockOverrides.isNotEmpty);

  /// Whether the request to [path] (e.g. `/store/branches`) is served from
  /// mock instead of the server.
  static bool useMock(String path) =>
      shouldMock(path, mode: mode, locked: isLocked, overrides: mockOverrides);

  /// Datasource for the active mode, for features that are not plain HTTP
  /// remotes (e.g. the `*Static` sources). Register them through this so the
  /// switch to a real remote is one line in the feature's `*_ft.dart`.
  static T pick<T>({required T Function() mock, required T Function() api}) =>
      isMock ? mock() : api();

  /// Print the active data source once on app start.
  static void logMode() {
    PrintHelper.printWarning(
      "__server access: ${mode.name} (requested: $_requested, "
      "flavor: ${Env.flavor.name}, locked: $isLocked, "
      "overrides: ${mockOverrides.length})",
    );
  }

  /// [DATA_SOURCE] value -> mode; [locked] always wins.
  @visibleForTesting
  static DataSourceMode resolveMode({
    required String requested,
    required bool locked,
  }) {
    if (locked) return DataSourceMode.api;

    return requested.trim().toLowerCase() == DataSourceMode.mock.name
        ? DataSourceMode.mock
        : DataSourceMode.api;
  }

  @visibleForTesting
  static bool shouldMock(
    String path, {
    required DataSourceMode mode,
    required bool locked,
    Set<String> overrides = const {},
  }) {
    if (locked) return false;
    if (mode == DataSourceMode.mock) return true;

    final normalized = normalizePath(path);
    return overrides.any((o) => normalizePath(o) == normalized);
  }

  /// `/catalog/show/{id}` and `/catalog/show/12?x=1` -> `/catalog/show/_id`.
  ///
  /// Drops the query string, then replaces `{param}` placeholders and
  /// numeric segments with `_id`, so a template and a concrete URL map to
  /// the same mock file / override entry.
  static String normalizePath(String path) {
    final noQuery = path.split('?').first;
    final segments = noQuery
        .split('/')
        .where((s) => s.isNotEmpty)
        .map(
          (s) =>
              (s.startsWith('{') && s.endsWith('}')) || int.tryParse(s) != null
              ? '_id'
              : s,
        );

    return '/${segments.join('/')}';
  }
}
