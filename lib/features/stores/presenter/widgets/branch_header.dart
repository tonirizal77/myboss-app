part of 'widgets.dart';

/// Branch header shown at the top of Home: "Oraimo Semarang ⌄", open/closed
/// chip and "City · distance". Tapping it opens [BranchSelectorSheet].
class BranchHeader extends StatefulWidget {
  const BranchHeader({super.key});

  @override
  State<BranchHeader> createState() => _BranchHeaderState();
}

class _BranchHeaderState extends State<BranchHeader> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      StoreFlows.getListStore(context);
      context.read<BranchCubit>().loadPosition();
      context.read<BranchCubit>().ensureSelection(StoreFlows.storeList.data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoresListBloc, StoresListState>(
      listenWhen: (previous, current) =>
          previous.stores != current.stores && current.stores.data.isNotEmpty,
      listener: (context, state) =>
          context.read<BranchCubit>().ensureSelection(state.stores.data),
      child: BlocBuilder<BranchCubit, BranchState>(
        builder: (context, state) {
          final branch = state.selected;

          return InkWell(
            onTap: () => BranchSelectorSheet.show(context),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(32, 24, 32, 16),
              color: MyBossColors.surfaceContainerLowest,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          branch?.name ?? LocaleKeys.branch_title.tr(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: MyBossTextStyles.subtitle.copyWith(
                            color: MyBossColors.primary,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.icChevronDown,
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                          MyBossColors.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                  if (branch != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        MyBossStatusChip(
                          label: branch.isOpen
                              ? LocaleKeys.branch_open.tr()
                              : LocaleKeys.branch_closed.tr(),
                          kind: branch.isOpen
                              ? MyBossChipKind.success
                              : MyBossChipKind.danger,
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            branchSubtitle(branch, state.position),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: MyBossTextStyles.caption.copyWith(
                              color: MyBossColors.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
