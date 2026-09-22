part of 'configs.dart';

class AccessServer {
  /// Config AccessServer Singleton
  static final AccessServer shared = AccessServer._internal();

  factory AccessServer() => shared;

  AccessServer._internal();

  /// List Access Server
  static final Map _listServer = {
    1: {
      "id": Env.clientIDStag,
      "domain": Env.clientSecretDomainStag,
      "mobileAccess": Env.clientSecretStag,
    },
    2: {
      "id": Env.clientIDProd,
      "domain": Env.clientSecretDomainProd,
      "mobileAccess": Env.clientSecretProd,
    },

    /// Live (Release)
    3: {
      "id": Env.clientIDLive,
      "domain": Env.clientSecretDomainLive,
      "mobileAccess": Env.clientSecretLive,
    },
  };

  /// Access Server diambil dari
  /// [AppSetting._listServer] - set
  /// [AppSetting.getAksesServer] - get
  /// ID Server
  static int _theAccess = Env.flavor == Flavor.staging
      ? 1
      : Env.flavor == Flavor.prod
      ? 2 // !#- release ios live/prod (3), prod (2)
      : 3;

  /// Setter
  static Map _aksesServer = setServer(_theAccess);

  /// Getter
  static Map get getAksesServer => _aksesServer;

  /// Set Access Server function
  /// [_listServer] is the access we want to use.
  /// Update Akses Server
  static Map setServer(int codeServer) {
    /// Update access server
    _aksesServer = AccessServer._listServer[codeServer];

    final _id = _aksesServer['id'];
    final _domain = _aksesServer['domain'];
    final _mobileAccess = _aksesServer['mobileAccess'].toString();

    /// Try to Get server local
    final _getServer = getIt<SharedPreferencesHelper>().getServer();
    final _isChanged =
        _getServer?[0] != _id &&
        _getServer?[1] != _domain &&
        _getServer?[2] != _mobileAccess;

    PrintHelper.printWhite(
      "Setting ACCESS SERVER: ${Env.flavor} >> server isChange: ${_isChanged}...: server:$_aksesServer --> old:$_getServer",
    );

    /// If not avaiable then saved
    if (_isChanged) {
      /// Clear Access Token
      getIt<SharedPreferencesHelper>().removeAccesToken(withPhone: true);

      getIt<SharedPreferencesHelper>().setServer(
        id: _id,
        domain: _domain,
        mobileAccess: _mobileAccess,
      );
    }

    /// Print Console
    PrintHelper.printJson(
      _aksesServer,
      name: '__firs running access server: ${_aksesServer}',
    );

    /// Update Akses Server
    ///
    return _aksesServer;
  }
}
