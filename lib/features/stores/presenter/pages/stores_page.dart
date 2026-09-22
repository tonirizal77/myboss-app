part of 'pages.dart';

class StoresPage extends StatefulWidget {
  const StoresPage({super.key});

  @override
  State<StoresPage> createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

    StoreFlows.getListStore(context);
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
                  ? AppTextStyles.title
                  : AppTextStyles.titleBig1,
            ),
          ),

          Expanded(
            child: BlocBuilder<StoresListBloc, StoresListState>(
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
                  listData: state.stores.data.toList(),
                  errorString: state.error,
                  onRefresh: () async {
                    context.read<StoresListBloc>().add(
                      StoresListEvent.fetchStores(),
                    );
                  },
                  child: (data) {
                    return CardStores(data: data);
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
