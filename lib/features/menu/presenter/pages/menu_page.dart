part of 'pages.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();

    MenuFlows.getListYogurt(context);
    MenuFlows.getListToping(context);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      onRefresh: () async {
        await MenuFlows.getListYogurt(context);
        await MenuFlows.getListToping(context);
      },
      useSafeArea: true,
      body: BlocListener<MenuBloc, MenuState>(
        listener: (context, state) {
          if (state.respon == Respons.failure) {
            getIt<FlushbarHelper>().showErrorFlushbar(
              context: context,
              message: state.errorMessage,
            );
          }
        },
        child: Responsive(
          mobile: const ViewMobileHeader(),
          tablet: const ViewTabletHeader(),
        ),
      ),
    );
  }
}
