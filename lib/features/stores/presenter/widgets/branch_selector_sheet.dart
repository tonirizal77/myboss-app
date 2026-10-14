part of 'widgets.dart';

/// Bottom sheet to pick the active branch (Figma `Branch Selector`).
class BranchSelectorSheet {
  const BranchSelectorSheet._();

  static Future<void> show(BuildContext context) {
    /// Make sure the list is fresh and the distance labels can be computed.
    StoreFlows.getListStore(context);
    context.read<BranchCubit>().loadPosition();

    return MyBossBottomSheet.show<void>(
      context,
      builder: (_) => const _BranchSelectorBody(),
    );
  }
}

class _BranchSelectorBody extends StatelessWidget {
  const _BranchSelectorBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresListBloc, StoresListState>(
      builder: (context, listState) {
        final branches = listState.stores.data;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 18, 24, 16),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.branch_title.tr(),
                    textAlign: TextAlign.center,
                    style: MyBossTextStyles.titleBig2.copyWith(
                      color: MyBossColors.onSurface,
                    ),
                  ),
                  if (branches.isNotEmpty)
                    Text(
                      LocaleKeys.branch_subtitle.tr(args: ['${branches.length}']),
                      style: MyBossTextStyles.caption.copyWith(
                        color: MyBossColors.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ),
            Flexible(child: _list(context, listState, branches)),
          ],
        );
      },
    );
  }

  Widget _list(
    BuildContext context,
    StoresListState listState,
    List<StoreList> branches,
  ) {
    if (branches.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(48),
        child: listState.isLoading
            ? const CircularProgressIndicator(color: MyBossColors.primary)
            : Text(
                LocaleKeys.branch_empty.tr(),
                style: MyBossTextStyles.body.copyWith(
                  color: MyBossColors.onSurfaceVariant,
                ),
              ),
      );
    }

    return BlocBuilder<BranchCubit, BranchState>(
      builder: (context, branchState) {
        return ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          itemCount: branches.length,
          separatorBuilder: (_, _) => const SizedBox(height: 0),
          itemBuilder: (context, i) {
            final branch = branches[i];

            return BranchCard(
              data: branch,
              selected: branch.id == branchState.selected?.id,
              position: branchState.position,
              onSelect: () {
                context.read<BranchCubit>().select(branch);
                Navigator.of(context).maybePop();
              },
            );
          },
        );
      },
    );
  }
}
