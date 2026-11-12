part of 'widgets.dart';

/// Loads the promo content of the branch selected in the header for the
/// current session, and reloads it when the branch or the login state
/// changes (rewards + vouchers for guests and signed-in users). Wraps every
/// screen that shows promo content (Promo tab, Home); [PromoCubit] skips
/// params that are already loaded.
class PromoBranchSync extends StatefulWidget {
  const PromoBranchSync({super.key, required this.child});

  final Widget child;

  @override
  State<PromoBranchSync> createState() => _PromoBranchSyncState();
}

class _PromoBranchSyncState extends State<PromoBranchSync> {
  void _load() => context.read<PromoCubit>().load(
    storeDomain: context.read<StoreBranchCubit>().state.selected?.urlId ?? '',
    isLoggedIn: UserFlows.isLoggedIn(context),
  );

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<StoreBranchCubit, StoreBranchState>(
          listenWhen: (a, b) => a.selected?.urlId != b.selected?.urlId,
          listener: (_, _) => _load(),
        ),
        // Login / logout: switch between guest and signed-in content.
        BlocListener<UserBloc, UserState>(
          listenWhen: (a, b) =>
              (a.statusLogin == Status.success) !=
              (b.statusLogin == Status.success),
          listener: (_, _) => _load(),
        ),
      ],
      child: widget.child,
    );
  }
}
