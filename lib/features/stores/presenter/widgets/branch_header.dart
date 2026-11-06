part of 'widgets.dart';

/// Branch header: "Oraimo Semarang ⌄", open/closed chip and
/// "City · distance". Tapping it opens [BranchSelectorSheet].
///
/// - Phone: pinned on top of Home ([appBar]).
/// - Tablet/desktop: [compact] in the main header, left of the theme switch
///   (`RmdMainHeaderChild`).
class BranchHeader extends StatefulWidget {
  const BranchHeader({super.key, this.compact = false});

  /// Fits the 80px main header: no fixed size, own background or wide
  /// padding.
  final bool compact;

  /// Fixed height (without the status bar) so it can sit in a page header.
  static const double height = 86;

  /// Page header version: pinned above the scrolling body, below the status
  /// bar. Use as `ResponsivePage(appBar: BranchHeader.appBar(context))`.
  static PreferredSizeWidget appBar(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return PreferredSize(
      preferredSize: Size.fromHeight(height + top),
      child: ColoredBox(
        color: MyBossColors.surfaceContainerLowest,
        child: const SafeArea(bottom: false, child: BranchHeader()),
      ),
    );
  }

  @override
  State<BranchHeader> createState() => _BranchHeaderState();
}

class _BranchHeaderState extends State<BranchHeader> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      final cubit = context.read<StoreBranchCubit>();
      cubit.ensureSelection(StoreFlows.storeBranches.data);
      StoreFlows.getStoreBranches(context);

      // Fetch again with lat/lon once known: the API sorts by distance.
      await cubit.loadPosition();
      if (!mounted || cubit.state.position == null) return;
      StoreFlows.getStoreBranches(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoreBranchesBloc, StoreBranchesState>(
      listenWhen: (previous, current) =>
          previous.branches != current.branches &&
          current.branches.data.isNotEmpty,
      listener: (context, state) =>
          context.read<StoreBranchCubit>().ensureSelection(state.branches.data),
      child: BlocBuilder<StoreBranchCubit, StoreBranchState>(
        builder: (context, state) {
          final branch = state.selected;
          final compact = widget.compact;

          return InkWell(
            key: const ValueKey('branch_header'),
            borderRadius: compact ? BorderRadius.circular(12) : null,
            onTap: () => BranchSelectorSheet.show(context),
            child: Container(
              width: compact ? null : double.infinity,
              height: compact ? null : BranchHeader.height,
              alignment: Alignment.centerLeft,
              padding: compact
                  ? const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
                  : const EdgeInsets.fromLTRB(32, 16, 32, 16),
              color: compact ? null : MyBossColors.surfaceContainerLowest,
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                        colorFilter: ColorFilter.mode(
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
                        /// Status Buka or Tutup
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
