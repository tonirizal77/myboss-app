part of '../widgets.dart';

/// Signed-in Home top block (Figma `Home Signed-in`): avatar + settings
/// shortcut, the points balance and a swipeable reward card.
class MemberHero extends StatelessWidget {
  const MemberHero({super.key, required this.rewards});

  final List<RewardPreview> rewards;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyBossColors.surfaceContainerLowest,
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _AvatarRow(),
                const SizedBox(height: 16),
                BlocBuilder<PointsCubit, PointsState>(
                  buildWhen: (a, b) => a.summary != b.summary,
                  builder: (context, state) =>
                      MemberPointsText(summary: state.summary, size: 36),
                ),
              ],
            ),
          ),
          if (rewards.isNotEmpty) ...[
            const SizedBox(width: 12),
            _RewardPager(rewards: rewards),
          ],
        ],
      ),
    );
  }
}

class _AvatarRow extends StatelessWidget {
  const _AvatarRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar -> Membership Card (barcode)
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () => MainPageFlow.showBarcodeMember(context),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            buildWhen: (a, b) => a.profile.favatar != b.profile.favatar,
            builder: (context, state) {
              final avatar = state.profile.favatar;

              return Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                clipBehavior: Clip.antiAlias,
                child: avatar.isEmpty
                    ? Icon(Icons.person, size: 32, color: Colors.grey.shade500)
                    : Image.network(
                        avatar,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.grey.shade500,
                        ),
                      ),
              );
            },
          ),
        ),
        const SizedBox(width: 8),
        // Settings -> Account tab
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () => MainPageFlow.onChangeTab(context, 3),
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyBossColors.surfaceContainer,
            ),
            child: Icon(
              Icons.settings,
              size: 28,
              color: MyBossColors.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

class _RewardPager extends StatefulWidget {
  const _RewardPager({required this.rewards});

  final List<RewardPreview> rewards;

  @override
  State<_RewardPager> createState() => _RewardPagerState();
}

class _RewardPagerState extends State<_RewardPager> {
  static const _interval = Duration(seconds: 3);

  final _controller = PageController();
  Timer? _timer;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_interval, (_) => _next());
  }

  /// Auto slide, looping back to the first card.
  void _next() {
    final count = widget.rewards.take(3).length;
    if (!mounted || count < 2 || !_controller.hasClients) return;

    final next = (_page + 1) % count;
    _controller.animateToPage(
      next,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.rewards.take(3).toList();

    return SizedBox(
      width: 112,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 124,
            child: PageView.builder(
              controller: _controller,
              itemCount: items.length,
              onPageChanged: (i) => setState(() => _page = i),
              itemBuilder: (_, i) => _RewardMini(reward: items[i]),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < items.length; i++)
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i == _page
                        ? MyBossColors.primary
                        : MyBossColors.primary.withValues(alpha: 0.3),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RewardMini extends StatelessWidget {
  const _RewardMini({required this.reward});

  final RewardPreview reward;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: MyBossColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(reward.image, fit: BoxFit.contain)),
          const SizedBox(height: 4),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              LocaleKeys.guest_home_points_value.tr(args: ['${reward.points}']),
              maxLines: 1,
              style: MyBossTextStyles.subtitle.copyWith(
                color: MyBossColors.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
