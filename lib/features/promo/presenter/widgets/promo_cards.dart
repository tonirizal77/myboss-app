part of 'widgets.dart';

/// Signed-in top card: opens the member barcode for redeeming at the
/// cashier.
class PromoRedeemCard extends StatelessWidget {
  const PromoRedeemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyBossColors.surfaceContainerLowest,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => MainPageFlow.showBarcodeMember(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Icon(Icons.qr_code_2, size: 32, color: MyBossColors.primary),
              const SizedBox(height: 12),
              Text(
                LocaleKeys.promo_redeem_title.tr(),
                textAlign: TextAlign.center,
                style: MyBossTextStyles.title.copyWith(
                  color: MyBossColors.onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                LocaleKeys.promo_redeem_subtitle.tr(),
                textAlign: TextAlign.center,
                style: MyBossTextStyles.body.copyWith(
                  color: MyBossColors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Guest top card: branch name with Sign up / "I already have an account".
class PromoGuestCard extends StatelessWidget {
  const PromoGuestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: const GuestHero(),
    );
  }
}

/// Section title + subtitle used by the panels and the Points / Voucher tabs.
class PromoHeading extends StatelessWidget {
  const PromoHeading({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: MyBossTextStyles.title.copyWith(color: MyBossColors.onSurface),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: MyBossTextStyles.body.copyWith(
            color: MyBossColors.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class PromoSeeMore extends StatelessWidget {
  const PromoSeeMore({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MyBossButton(
      label: LocaleKeys.product_see_more.tr(),
      role: MyBossButtonRole.secondary,
      trailing: Icon(
        Icons.arrow_forward,
        size: 20,
        color: MyBossColors.onSurface,
      ),
      onPressed: onPressed,
    );
  }
}
