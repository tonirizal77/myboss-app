part of 'pages.dart';

/// Terms & policy: the documents of `GET /terms-and-policy` (terms of use,
/// privacy policy, refund policy), one card each. The last answer is kept by
/// [AccountBloc] (hydrated), so it shows at once while a fresh copy loads.
class TncPage extends StatefulWidget {
  const TncPage({super.key});

  @override
  State<TncPage> createState() => _TncPageState();
}

class _TncPageState extends State<TncPage> {
  @override
  void initState() {
    super.initState();

    AccountFlows.getTnc(context);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      appBar: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.tnc_title.tr(),
        onClose: () => context.pop(),
      ),
      useScrollView: true,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 56),
      body: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          final _docs = state.tnc.visible;

          if (_docs.isNotEmpty) {
            return Column(
              key: const ValueKey('tnc_list'),
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              spacing: 16,
              children: [for (final _doc in _docs) _TncCard(doc: _doc)],
            );
          }

          if (state.respon == Respons.loading ||
              state.respon == Respons.initial) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 64),
              child: Center(
                child: CircularProgressIndicator(
                  key: const ValueKey('tnc_loading'),
                  color: MyBossColors.primary,
                ),
              ),
            );
          }

          final _failed = state.respon == Respons.failure;

          return _TncMessage(
            icon: _failed
                ? Icons.cloud_off_outlined
                : Icons.description_outlined,
            message: _failed
                ? LocaleKeys.tnc_load_failed.tr()
                : LocaleKeys.tnc_empty.tr(),
            onRetry: () => AccountFlows.getTnc(context),
          );
        },
      ),
    );
  }
}

/// One document: title + HTML body.
class _TncCard extends StatelessWidget {
  final TncItemModel doc;

  const _TncCard({required this.doc});

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      key: ValueKey('tnc_${doc.sitenavLinkTypeId}_${doc.id}'),
      color: AppTheme.surface(context),
      isBorder: true,
      borderColor: AppTheme.outline(context),
      padding: EdgeInsets.all(16),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        spacing: 8,
        children: [
          if (doc.title.trim().isNotEmpty)
            Text(
              doc.title.trim(),
              style: MyBossTextStyles.subtitleBig2.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),

          Html(
            data: doc.description,
            style: {
              ...MyBossTextStyles.htmlBodyNoPadding,
              ...MyBossTextStyles.htmlParagraphNoPadding,
              'ul': Style(
                margin: Margins.zero,
                padding: HtmlPaddings.only(left: 20),
              ),
              'ol': Style(
                margin: Margins.zero,
                padding: HtmlPaddings.only(left: 20),
              ),
              'li': Style(padding: HtmlPaddings.only(bottom: 6)),

              /// Follow the app's dark/light theme, overriding any inline
              /// color coming from the CMS.
              "*": Style(
                color: AppTheme.onSurface(context),
                backgroundColor: Colors.transparent,
              ),
            },
          ),
        ],
      ),
    );
  }
}

/// Load failed / nothing published, with a retry.
class _TncMessage extends StatelessWidget {
  final IconData icon;
  final String message;
  final VoidCallback onRetry;

  const _TncMessage({
    required this.icon,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        mainAxisSize: .min,
        spacing: 16,
        children: [
          Icon(icon, size: 64, color: MyBossColors.onSurfaceVariant),
          Text(
            message,
            textAlign: TextAlign.center,
            style: MyBossTextStyles.body.copyWith(
              color: MyBossColors.onSurfaceVariant,
            ),
          ),
          MyBossButton(
            key: const ValueKey('tnc_retry'),
            label: LocaleKeys.tnc_retry.tr(),
            role: MyBossButtonRole.secondary,
            onPressed: onRetry,
          ),
        ],
      ),
    );
  }
}
