part of '../widgets.dart';

class ListMenuBonus extends StatelessWidget {
  const ListMenuBonus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        final _vouchers = state.vouchers.data?.toList() ?? [];

        return CardCustom(
          radius: 24,
          isShadow: true,
          color: AppTheme.surface(context),
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              BlocBuilder<StampsCubit, StampsState>(
                builder: (context, state) {
                  final _totalStamp = state.stamps.filledStamp;
                  return ButtonMenuAkun(
                    height: 56,
                    icon: Image.asset(Assets.menuStamps),
                    title: Text(
                      "${_totalStamp} ${LocaleKeys.akun_stamps.tr()}",
                      style: AppTextStyles.title,
                    ),
                    arrowRight: true,
                    onTap: () {
                      AccountFlows.goToStampPage(context);
                    },
                  );
                },
              ),
              ButtonMenuAkun(
                height: 56,
                icon: Image.asset(Assets.menuVoucher),
                title: Text(
                  LocaleKeys.akun_voucher_count.tr(args: [_vouchers.length.toString()]),
                  style: AppTextStyles.title,
                ),
                arrowRight: true,
                onTap: () {
                  AccountFlows.goToVoucherPage(context);
                },
              ),
              //
            ],
          ),
        );
      },
    );
  }
}
