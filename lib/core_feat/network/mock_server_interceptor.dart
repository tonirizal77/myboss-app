part of 'configs.dart';

/// Answers HTTP requests from `assets/mock/<method>/<path>.json` when
/// [ServerAccess.useMock] says so; every other request goes to the server
/// untouched.
///
/// Installed last on [DioHttp3.shared.request] (see `main.dart`), so the
/// logger still prints the request and - because the mock response is
/// resolved with `callFollowingResponseInterceptor` - the response too.
///
/// File naming: one folder per method (lower case), file = endpoint path
/// normalized by [ServerAccess.normalizePath] with `/` -> `.` (Flutter
/// asset folders are not recursive, so this keeps pubspec to 4 entries):
/// - `GET  /store/branches?lat=..` -> `assets/mock/get/store.branches.json`
/// - `GET  /catalog/show/12`       -> `assets/mock/get/catalog.show._id.json`
/// - `POST /client/login`          -> `assets/mock/post/client.login.json`
class MockServerInterceptor extends Interceptor {
  MockServerInterceptor({
    Future<String> Function(String key)? loadAsset,
    bool Function(String path)? useMock,
    this.delay = const Duration(milliseconds: 300),
  }) : _loadAsset = loadAsset ?? rootBundle.loadString,
       _useMock = useMock ?? ServerAccess.useMock;

  final Future<String> Function(String key) _loadAsset;
  final bool Function(String path) _useMock;

  /// Simulated network latency.
  final Duration delay;

  static const String root = 'assets/mock';

  /// Asset key for a request, e.g. `assets/mock/get/store.branches.json`.
  static String assetKey(String method, String path) {
    final name = ServerAccess.normalizePath(
      path,
    ).substring(1).replaceAll('/', '.');
    return '$root/${method.toLowerCase()}/$name.json';
  }

  /// Endpoint path of [options], relative to the base URL
  /// (`/store/branches`), even when the request was made with a full URL.
  static String endpointPath(RequestOptions options) {
    final raw = options.path;
    if (!raw.startsWith('http')) return raw;

    final path = Uri.parse(raw).path;
    final basePath = Uri.tryParse(options.baseUrl)?.path ?? '';

    return basePath.isNotEmpty && path.startsWith(basePath)
        ? path.substring(basePath.length)
        : path;
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final path = endpointPath(options);
    if (!_useMock(path)) return handler.next(options);

    final key = assetKey(options.method, path);
    if (delay > Duration.zero) await Future<void>.delayed(delay);

    final String raw;
    try {
      raw = await _loadAsset(key);
    } catch (_) {
      return handler.reject(
        _error(options, 'Mock not found: ${options.method} $path ($key)'),
        true,
      );
    }

    final Object? data;
    try {
      data = jsonDecode(raw);
    } on FormatException catch (e) {
      return handler.reject(
        _error(options, 'Invalid mock JSON: $key (${e.message})'),
        true,
      );
    }

    PrintHelper.printWarning('__mock ${options.method} $path <- $key');

    handler.resolve(
      Response(
        requestOptions: options,
        data: data,
        statusCode: 200,
        statusMessage: 'OK (mock)',
        headers: Headers.fromMap({
          'x-mock-file': [key],
        }),
      ),
      true,
    );
  }

  /// 404 so the retry interceptor (timeouts only) never repeats it.
  static DioException _error(RequestOptions options, String message) {
    PrintHelper.printError('__mock $message');

    return DioException(
      requestOptions: options,
      type: DioExceptionType.badResponse,
      message: message,
      response: Response(
        requestOptions: options,
        statusCode: 404,
        statusMessage: message,
        data: {'status': 404, 'error': 1, 'message': message},
      ),
    );
  }
}
