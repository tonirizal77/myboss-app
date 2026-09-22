part of 'pages.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  void initState() {
    super.initState();

    AccountFlows.getAboutUs(context);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.akun_about_us.tr(),
        onClose: () => context.pop(),
      ),
      useScrollView: true,
      top: 0,
      bottom: 0,
      body: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          if (state.respon == Respons.loading) {
            return LoadingWidget(
              absolute: true,
              bgColor: Colors.red,
              bgColorIcon: AppColors.primary,
            );
          } else {
            final _photo = state.aboutUs.photos.toList().firstOrNull;
            final _description = state.aboutUs.description;

            return Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(16, SyncUI.padTop, 16, 16),
              color: AppTheme.scaffold(context),
              child: Flex(
                mainAxisSize: .min,
                direction: Responsive.isMobile(context)
                    ? .vertical
                    : .horizontal,
                crossAxisAlignment: .start,
                spacing: 24,
                children: [
                  /// Header Image
                  CardCustom(
                    color: AppColors.primary,
                    height: 200,
                    child: ImageNetwork(
                      width: Responsive.isMobile(context) ? null : 200,
                      imageUrl: _photo?.filename ?? "",
                      boxFit: BoxFit.contain,
                    ),
                  ),

                  /// Body Html
                  Flexible(
                    child: Html(
                      data: _description,
                      style: {
                        ...AppTextStyles.htmlBodyNoPadding,
                        ...AppTextStyles.htmlParagraphNoPadding,

                        /// Force every element to follow the app's dark/light
                        /// theme, overriding any inline color coming from the CMS.
                        "*": Style(
                          color: AppTheme.onSurface(context),
                          backgroundColor: Colors.transparent,
                        ),
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
