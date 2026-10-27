part of 'pages.dart';

class StoreBranchesPage extends StatefulWidget {
  const StoreBranchesPage({super.key});

  @override
  State<StoreBranchesPage> createState() => _StoreBranchesPageState();
}

class _StoreBranchesPageState extends State<StoreBranchesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

    StoreFlows.getStoreBranches(context);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ResponsivePage(
      useSafeArea: true,
      body: Column(
        mainAxisSize: .min,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Text(
              LocaleKeys.stores_title.tr(),
              style:
                  context.locale.toString() == 'id' &&
                      Responsive.isMobile(context)
                  ? MyBossTextStyles.title
                  : MyBossTextStyles.titleBig1,
            ),
          ),

          Expanded(
            child: BlocBuilder<StoreBranchesBloc, StoreBranchesState>(
              builder: (context, state) {
                return ResponsiveGridOrWrap(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 48),
                  // tipe: TipeView.gridview,
                  useScrollView: true,
                  // maxHeight: 421 + 16,
                  mobile: 1,
                  tablet: 2,
                  desktop: 3,
                  stylingCard: true,
                  radius: 24,
                  shadow: true,
                  isLoading: state.isLoading,
                  listData: state.branches.data.toList(),
                  errorString: state.error,
                  onRefresh: () async {
                    StoreFlows.getStoreBranches(context);
                  },
                  child: (data) {
                    return CardStoreBranch(data: data);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
