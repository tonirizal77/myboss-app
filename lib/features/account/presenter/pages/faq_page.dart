part of 'pages.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBar: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.akun_faq.tr(),
        // title: 'Frequently Asked',
        onClose: () => context.pop(),
      ),
      useScrollView: true,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 56),
      body: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        spacing: 16,
        children: [
          _CardCollapsed(
            title: "${LocaleKeys.faq_1_ask.tr()}",
            body: "${LocaleKeys.faq_1_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_2_ask.tr()}",
            body: "${LocaleKeys.faq_2_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_3_ask.tr()}",
            body: "${LocaleKeys.faq_3_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_4_ask.tr()}",
            body: "${LocaleKeys.faq_4_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_5_ask.tr()}",
            body: "${LocaleKeys.faq_5_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_6_ask.tr()}",
            body: "${LocaleKeys.faq_6_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_7_ask.tr()}",
            body: "${LocaleKeys.faq_7_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_8_ask.tr()}",
            body: "${LocaleKeys.faq_8_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_9_ask.tr()}",
            body: "${LocaleKeys.faq_9_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_10_ask.tr()}",
            body: "${LocaleKeys.faq_10_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_11_ask.tr()}",
            body: "${LocaleKeys.faq_11_quest.tr()}",
          ),
          _CardCollapsed(
            title: "${LocaleKeys.faq_12_ask.tr()}",
            body: "${LocaleKeys.faq_12_quest.tr()}",
          ),

          Text(LocaleKeys.faq_title_bottom.tr(), style: AppTextStyles.body),
        ],
      ),
    );
  }
}

class _CardCollapsed extends StatefulWidget {
  final String title;
  final String body;

  const _CardCollapsed({required this.title, required this.body});

  @override
  State<_CardCollapsed> createState() => _CardCollapsedState();
}

class _CardCollapsedState extends State<_CardCollapsed> {
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      color: AppTheme.surface(context),
      isBorder: true,
      borderColor: AppTheme.outline(context),
      padding: EdgeInsets.all(16),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          InkWell(
            onTap: () => setState(() => _show = !_show),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.title,
                        style: AppTextStyles.subtitle.copyWith(height: 1.1),
                        overflow: TextOverflow.ellipsis,
                        maxLines: _show ? 4 : 2,
                      ),
                    ),
                    Icon(
                      _show
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),

                AnimatedSize(
                  duration: Duration(milliseconds: 200),
                  child: Visibility(
                    visible: _show,
                    child: Container(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        widget.body,
                        style: AppTextStyles.body.copyWith(
                          color: AppTheme.onSurface(context),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
