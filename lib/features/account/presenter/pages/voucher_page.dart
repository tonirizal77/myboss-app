part of 'pages.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  @override
  void initState() {
    super.initState();

    AccountFlows.getVouchers(context);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBar: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.akun_voucher_title.tr(),
        onClose: () => context.pop(),
      ),
      useScrollView: false,
      useSafeArea: true,
      alignment: Alignment.topLeft,
      body: BlocConsumer<AccountBloc, AccountState>(
        listener: (context, state) {
          if (state.respon == Respons.failure) {
            getIt<FlushbarHelper>().showErrorFlushbar(
              context: context,
              message: state.errorMessage,
            );
          }
        },
        builder: (context, state) {
          final _listData = state.vouchers.data?.toList() ?? _listDummy;
          return ResponsiveGridOrWrap(
            mobile: 1,
            tablet: 2,
            desktop: 3,
            spacing: 16,
            runSpacing: 8,
            useScrollView: true,
            padding: EdgeInsets.all(16),
            tipe: TipeView.gridview,
            maxHeight: 127,
            isLoading: state.respon == Respons.loading,
            isFailure: state.respon == Respons.failure,
            onRefresh: () async => await AccountFlows.getVouchers(context),
            listData: _listData,
            child: (data) => CardVoucher(data: data, height: 120),
          );
        },
      ),
    );
  }

  final _listDummy = [
    VoucherModel(
      id: 1,
      code: "ABC1212",
      title: "Promo 12.12",
      discountRate: 0.50,
      expiryDate: "2006-06-27T19:00:00Z",
    ),
    VoucherModel(
      id: 1,
      code: "ABC1313",
      title: "Promo HUT",
      discountRate: 0.25,
      expiryDate: "2006-06-27T19:00:00Z",
    ),
    VoucherModel(
      id: 1,
      code: "ABC1212",
      title: "Promo New Member",
      discountRate: 0.25,
      expiryDate: "2006-06-27T19:00:00Z",
    ),
  ];
}
