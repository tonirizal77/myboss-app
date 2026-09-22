part of 'pages.dart';

/// The main entry point for the navigation-enabled section of the app.
///
/// Wraps 4 feature pages in a [PageView] and manages tab switching
/// via [BottomNavCubit] and [MainBottomNavigationBar].
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();

    /// Initialize Page Controller
    _pageController = PageController();

    /// Reset bottom nav index to Home
    context.read<BottomNavCubit>().changeTab(0);

    /// Get Data Store (Contact Us / Follow Us) - not gated behind login,
    /// this is public merchant contact info shown to guests too.
    StoreFlows.getStore(context);

    /// Add widgets binding observer
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      /// For Mobile Only, for Web and Desktop all mode orientation
      if (Responsive.isMobile(context)) {
        getIt<GeneralHelper>().setOrientationPortraitOnly();
      } else {
        getIt<GeneralHelper>().setOrientationAllMode();
      }
    });
  }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncIndex();
  }

  /// !Need to delete
  void _syncIndex() {
    final location = GoRouterState.of(context).uri.path;
    PrintHelper.printError("__location _syncIndex: $location");
    int index = 0; // Home

    if (location.contains(RouteNames.menu)) {
      index = 1;
    } else if (location.contains(RouteNames.stores)) {
      index = 2;
    } else if (location.contains(RouteNames.account)) {
      index = 3;
    }

    if (context.read<BottomNavCubit>().state.currentIndex != index) {
      context.read<BottomNavCubit>().changeTab(index);

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      // onWillPop: () async => await _onWillPop(context),
      onPopInvokedWithResult: (didPop, result) async {
        PrintHelper.printError("__didPop: $didPop, result: $result");

        /// Do nothing if screen successfully popped
        if (didPop) return;

        await _onPopInvokedDefault(context);

        /// On Pop Invoked callbacks.
        // if (widget.onPopInvoked != null) {
        //   await widget.onPopInvoked!();
        // } else {
        // }
      },
      child: Scaffold(
        body: BlocListener<BottomNavCubit, BottomNavState>(
          listenWhen: (previous, current) =>
              previous.currentIndex != current.currentIndex,
          listener: (context, state) => _navigate(state.currentIndex),
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const HomePage(),
              const MenuPage(),
              const StoresPage(),
              const AccountPage(),
            ],
          ),
        ),
        bottomNavigationBar: Responsive.isMobile(context)
            ? const MainBottomNavigationBar()
            : null,
        floatingActionButton: Responsive.isMobile(context)
            ? const ButtonQrcode()
            : null,
        floatingActionButtonLocation: .centerDocked,
      ),
    );
  }

  void _navigate(int index) {
    final location = GoRouterState.of(context).uri.path;
    PrintHelper.printError("__mainpage navigate: $location - index: $index");

    if (_pageController.hasClients && _pageController.page?.toInt() != index) {
      _pageController.jumpToPage(index);

      ThemeFlow.switchModeApp();
    }
  }

  /// Handle on will pop for Close App
  Future<bool> _onPopInvokedDefault(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) {
        return getIt<DialogHelper>().buildExitDialog(context);
      },
    );

    PrintHelper.printError("__ MainPage onWillpop: $exitResult");

    if (exitResult ?? false) {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    }

    return exitResult ?? false;
  }
}
