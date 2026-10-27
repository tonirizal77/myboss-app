part of 'flows.dart';

class StoreFlows {
  const StoreFlows._();

  static StoreModel get store => getIt<StoreBloc>().state.store;

  static MobileSetting get setting {
    final _setting =
        getIt<StoreBloc>().state.store.mobileSetting ?? MobileSetting();

    // PrintHelper.inspectx(getIt<StoreBloc>().state.store);

    return _setting;
  }

  static StoreBranchesModel get storeBranches =>
      getIt<StoreBranchesBloc>().state.branches;

  static FutureOr<void> getStore(BuildContext context) async {
    context.read<StoreBloc>().add(StoreEvent.getStore());
  }

  /// Fetch store data and wait until it resolves (success or failure).
  ///
  /// Called and awaited in [SplashPage] (loading & data step) so the store
  /// data (mobileSetting, branches setting) is in place before the app
  /// opens - [getStore] is otherwise only dispatched (fire-and-forget) once
  /// [MainPage] mounts.
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

  /// Fetch the branch list, sorted by distance from the last known device
  /// position (see [StoreBranchCubit.loadPosition]) when there is one.
  static FutureOr<void> getStoreBranches(BuildContext context) async {
    final position = context.read<StoreBranchCubit>().state.position;

    context.read<StoreBranchesBloc>().add(
      StoreBranchesEvent.fetchBranches({
        if (position != null) ...{
          'lat': position.latitude,
          'lon': position.longitude,
        },
      }),
    );
  }
}
