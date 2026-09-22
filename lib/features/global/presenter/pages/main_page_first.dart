part of 'pages.dart';

/// The main entry point for the navigation-enabled section of the app.
///
/// Wraps 2 feature pages in a [PageView] and manages tab switching
/// via [BottomNavCubit] and [MainBottomNavigationBar].
class MainPageFirst extends StatefulWidget {
  const MainPageFirst({super.key});

  @override
  State<MainPageFirst> createState() => _MainPageFirstState();
}

class _MainPageFirstState extends State<MainPageFirst>
    with WidgetsBindingObserver {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();

    PrintHelper.print("__initstate Main Page First");

    /// Initialize Page Controller
    _pageController = PageController();

    /// Reset bottom nav index to Home
    context.read<BottomNavCubit>().changeTab(0);

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

  // @override
  // void didUpdateWidget(MainPageFirst oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   // _syncIndex();
  // }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavCubit, BottomNavState>(
      listenWhen: (previous, current) =>
          previous.currentIndex != current.currentIndex,
      listener: (context, state) => _navigate(state.currentIndex),
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [const LoginPage(), const RegisterPage()],
        ),
      ),
    );
  }

  void _navigate(int index) {
    final location = GoRouterState.of(context).uri.path;
    PrintHelper.printError("__mainpage navigate: $location - index: $index");

    if (_pageController.hasClients && _pageController.page?.toInt() != index) {
      _pageController.jumpToPage(index);
    }
  }
}
