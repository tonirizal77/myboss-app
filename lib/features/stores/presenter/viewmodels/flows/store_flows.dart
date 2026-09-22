part of 'flows.dart';

class StoreFlows {
  const StoreFlows._();

  static StoreModel get store => getIt<StoreBloc>().state.store;

  static MobileSetting get setting {
    final _setting =
        getIt<StoreBloc>().state.store.mobileSetting ?? MobileSetting();

    PrintHelper.inspectx(getIt<StoreBloc>().state.store);

    return _setting;
  }

  static StoreListModel get storeList => getIt<StoresListBloc>().state.stores;

  static FutureOr<void> getStore(BuildContext context) async {
    context.read<StoreBloc>().add(StoreEvent.getStore());
  }

  /// Fetch store data and wait until it resolves (success or failure).
  ///
  /// [AppSetting.isGuestModeEnabled] reads [store.mobileSetting], but on a
  /// cold app restart that data hasn't been fetched yet - [getStore] is only
  /// dispatched (fire-and-forget) once [MainPage] mounts, which is *after*
  /// the guest-mode gate in [AuthFlowsListen] already ran on the default
  /// (empty) [StoreState]. Call and await this before that gate (in
  /// [SplashPage]) so the real server setting is in place in time.
  static Future<void> ensureStoreLoaded(BuildContext context) async {
    final _bloc = context.read<StoreBloc>();
    final _respon = _bloc.state.respon;

    if (_respon == Respons.success || _respon == Respons.failure) return;

    if (_respon == Respons.initial) {
      _bloc.add(StoreEvent.getStore());
    }

    await _bloc.stream.firstWhere(
      (s) => s.respon == Respons.success || s.respon == Respons.failure,
    );
  }

  static FutureOr<void> getListStore(BuildContext context) async {
    context.read<StoresListBloc>().add(StoresListEvent.fetchStores());
  }
}
