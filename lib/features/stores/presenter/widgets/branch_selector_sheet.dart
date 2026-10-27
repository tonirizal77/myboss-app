part of 'widgets.dart';

/// Bottom sheet to pick the active branch (Figma `Branch Selector`).
class BranchSelectorSheet {
  const BranchSelectorSheet._();

  static Future<void> show(BuildContext context) {
    /// Make sure the list is fresh and the distance labels can be computed.
    StoreFlows.getStoreBranches(context);
    context.read<StoreBranchCubit>().loadPosition();

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
    return BlocBuilder<StoreBranchesBloc, StoreBranchesState>(
      builder: (context, listState) {
        final branches = listState.branches.data;

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
                      LocaleKeys.branch_subtitle.tr(
                        args: ['${branches.length}'],
                      ),
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
    StoreBranchesState listState,
    List<StoreBranch> branches,
  ) {
    if (branches.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(48),
        child: listState.isLoading
            ? CircularProgressIndicator(color: MyBossColors.primary)
            : Text(
                LocaleKeys.branch_empty.tr(),
                style: MyBossTextStyles.body.copyWith(
                  color: MyBossColors.onSurfaceVariant,
                ),
              ),
      );
    }

    return BlocBuilder<StoreBranchCubit, StoreBranchState>(
      builder: (context, branchState) {
        return ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          itemCount: branches.length,
          separatorBuilder: (_, _) => const SizedBox(height: 16),
          itemBuilder: (context, i) {
            final branch = branches[i];

            return BranchCard(
              data: branch,
              selected: branch.id == branchState.selected?.id,
              position: branchState.position,
              onSelect: () {
                context.read<StoreBranchCubit>().select(branch);
                Navigator.of(context).maybePop();
              },
            );
          },
        );
      },
    );
  }
}
