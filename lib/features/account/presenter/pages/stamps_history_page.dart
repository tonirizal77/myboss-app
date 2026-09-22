part of 'pages.dart';

class StampsHistoryPage extends StatefulWidget {
  const StampsHistoryPage({super.key});

  @override
  State<StampsHistoryPage> createState() => _StampsHistoryPageState();
}

class _StampsHistoryPageState extends State<StampsHistoryPage> {
  int _selected = 0;

  late StampsHistory _stampsHistory;

  @override
  void initState() {
    super.initState();

    AccountFlows.historyStamps(context, param: LoadListData(refresh: true));
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.stamps_title.tr(),
        onClose: () => context.pop(),
      ),
      // useSafeArea: true,
      alignment: Alignment.topCenter,
      body: BlocListener<StampsDetailCubit, StampsDetailState>(
        listener: (context, state) {
          // PrintHelper.inspectx(state);

          if (state.status == Status.loading) {
            getIt<LoadingHelper>().turnOnLoading();
          } else {
            getIt<LoadingHelper>().turnOffLoading();

            if (state.status == Status.failed) {
              getIt<FlushbarHelper>().showErrorFlushbar(
                context: context,
                message: state.errorMessage,
              );
            } else {
              final _isBonus =
                  _stampsHistory.type == "UPGRADE_BONUS" ||
                  _stampsHistory.type.contains("BONUS");

              ResponsiveDialog.sheetOrDialog(
                context,
                title: Text(
                  _isBonus
                      ? LocaleKeys.stamps_bonus.tr()
                      : LocaleKeys.stamps_earned.tr(),
                  style: AppTextStyles.title,
                ),
                colorFrame: AppTheme.surface(context),
                colorBody: AppTheme.surface(context),
                child: BottomsheetStamps(
                  history: _stampsHistory,
                  data: state.stampsDetail,
                ),
              );
            }
          }
        },
        child: BlocConsumer<AccountBloc, AccountState>(
          listener: (context, state) {
            if (state.respon == Respons.failure) {
              getIt<FlushbarHelper>().showErrorFlushbar(
                context: context,
                message: state.errorMessage,
              );
            }
          },
          builder: (context, state) {
            final _listHistory = state.stampsHistory.data?.toList() ?? [];
            final _meta = state.stampsHistory.meta;

            return Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [
                /// Info Stamps
                _boxInfoStamps(context),

                /// Filter Button
                _buttonFilter(context, state),

                /// List data
                Flexible(
                  child: ResponsiveGridOrWrap(
                    useScrollView: true,
                    tipe: TipeView.gridview,
                    maxHeight: 60,
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 24 + 56),
                    isLoading: state.respon == Respons.loading,
                    isFailure: state.respon == Respons.failure,
                    handleLoadMore: true,
                    isLoadmore: state.respon == Respons.loadmore,
                    onRefresh: () async {
                      await AccountFlows.historyStamps(
                        context,
                        param: LoadListData(refresh: true),
                      );
                    },
                    listData: _listHistory,
                    meta: _meta,
                    loadListData: LoadListData(
                      loadMore: _meta.totalPage > _meta.page,
                      selectPage: _meta.page,
                      filters: state.filter.filters,
                    ),
                    callbackLoadMore: (p0) {
                      PrintHelper.printState("__loadmore: $p0");
                      _loadListData(filter: p0);
                    },
                    respons: state.respon,
                    runSpacing: Responsive.isMobile(context) ? 0 : 8,
                    spacing: 8,
                    isSeperator: Responsive.isMobile(context),
                    child: (w) {
                      return CardStampsItem(
                        data: w,
                        onTap: () {
                          setState(() => _stampsHistory = w);
                          context.read<StampsDetailCubit>().getDetail(
                            w.salesOrderId,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _loadListData({required LoadListData filter}) async {
    await AccountFlows.historyStamps(context, param: filter);
  }

  Visibility _buttonFilter(BuildContext context, AccountState state) {
    return Visibility(
      // visible: !Responsive.isMobile(context) && state.respon == Respons.success,
      visible: false,
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 8,
            children: List.generate(4, (i) {
              final _label = ["All", "Earned", "Redeemed", "Expired"];
              return ButtonSelected(
                isSelected: _selected == i,
                child: Text(
                  _label[i],
                  style: AppTextStyles.subtitle.copyWith(
                    color: _selected == i
                        ? AppTheme.surface(context)
                        : AppTheme.onSurface(context),
                  ),
                ),
                onTap: () {
                  setState(() => _selected = i);
                },
              );
            }),
          ),
        ),
      ),
    );
  }

  Flex _boxInfoStamps(BuildContext context) {
    return Flex(
      mainAxisAlignment: .center,
      mainAxisSize: .min,
      direction: Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: const CardStampsTop(),
          ),
        ),

        /// Info Expired
        Visibility(
          // visible: !Responsive.isMobile(context),
          visible: false,
          child: Flexible(
            child: CardCustom(
              alignment: Alignment.center,
              height: Responsive.isMobile(context) ? 56 : 80,
              margin: Responsive.isMobile(context)
                  ? EdgeInsets.fromLTRB(16, 8, 16, 8)
                  : EdgeInsets.fromLTRB(16, 16, 16, 8),
              color: AppTheme.errorContainer(context),
              child: const CardStampsWarning(),
            ),
          ),
        ),
      ],
    );
  }
}
