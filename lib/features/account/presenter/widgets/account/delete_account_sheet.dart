part of '../widgets.dart';

class DeleteAccountSheetContent extends StatelessWidget {
  const DeleteAccountSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return switch (AppSetting.deleteAccountMode) {
      DeleteAccountMode.direct => const _DirectDeleteAccount(),
      DeleteAccountMode.emailConfirmation => const _EmailConfirmationDeleteAccount(),
    };
  }
}

/// Deletes the account immediately in-app via API - no email/customer
/// service contact required. Required for App Store Guideline 5.1.1(v)
/// compliance for most apps.
class _DirectDeleteAccount extends StatelessWidget {
  const _DirectDeleteAccount();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Container(
          width: 96,
          height: 96,
          alignment: Alignment.center,
          child: ImageAssets(image: Assets.icMaskot9),
        ),

        SizedBox(height: 16),

        Text(
          LocaleKeys.akun_delete_confirm_title.tr(),
          style: AppTextStyles.title.copyWith(
            color: AppTheme.onSurface(context),
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 8),

        Text(
          LocaleKeys.akun_delete_confirm_desc.tr(),
          style: AppTextStyles.subtitleSmall.copyWith(
            color: AppTheme.onSurfaceVariant(context),
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 24),

        Buttons(
          width: double.infinity,
          isBorder: false,
          rounded: 28,
          bgColor: AppTheme.error(context),
          onTap: () {
            context.pop();
            getIt<UserBloc>().add(const UserEvent.userDeleteAccount());
          },
          child: Row(
            mainAxisAlignment: .center,
            spacing: 8,
            children: [
              Icon(
                Icons.delete_outline_rounded,
                color: getIt<ThemeBloc>().state.themeMode == ThemeMode.light
                    ? Colors.white
                    : Colors.black,
              ),
              Text(
                LocaleKeys.akun_delete_confirm_button.tr(),
                style: AppTextStyles.buttonBig.copyWith(
                  color: getIt<ThemeBloc>().state.themeMode == ThemeMode.light
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 12),

        Buttons(
          width: double.infinity,
          isBorder: false,
          bgColor: Colors.transparent,
          onTap: () => context.pop(),
          child: Text(
            LocaleKeys.button_back.tr(),
            style: AppTextStyles.buttonBig.copyWith(
              color: AppTheme.onSurfaceVariant(context),
            ),
          ),
        ),
      ],
    );
  }
}

/// Shows instructions to email support to request account deletion,
/// instead of deleting in-app.
///
/// WARNING: Apple rejects this flow under App Store Guideline 5.1.1(v)
/// for apps outside highly-regulated industries - only reachable when
/// [AppSetting.deleteAccountMode] is explicitly set to
/// [DeleteAccountMode.emailConfirmation].
class _EmailConfirmationDeleteAccount extends StatelessWidget {
  const _EmailConfirmationDeleteAccount();

  static const String _supportEmail = "weare@hayo.co.id";

  /// Builds a [TextSpan] with [bold] highlighted inside [text].
  static TextSpan _withBoldEmail(String text, String bold, TextStyle style) {
    final _index = text.indexOf(bold);

    if (_index == -1) return TextSpan(text: text, style: style);

    return TextSpan(
      style: style,
      children: [
        TextSpan(text: text.substring(0, _index)),
        TextSpan(
          text: bold,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        TextSpan(text: text.substring(_index + bold.length)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _profile = AccountFlows.profile;
    final _userEmail = _profile.email;

    final _emailBody = LocaleKeys.akun_delete_confirm_email_body.tr(
      namedArgs: {
        'name': _profile.name,
        'email': _profile.email,
        'phone': _profile.phone,
      },
    );

    final _bodyStyle = AppTextStyles.subtitle.copyWith(
      color: AppTheme.onErrorContainer(context),
    );

    return Column(
      mainAxisSize: .min,
      children: [
        Container(
          width: 96,
          height: 96,
          alignment: Alignment.center,
          child: ImageAssets(image: Assets.icMaskot9),
        ),

        SizedBox(height: 16),

        Text(
          LocaleKeys.akun_delete_confirm_title.tr(),
          style: AppTextStyles.title.copyWith(
            color: AppTheme.onSurface(context),
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 8),

        Text(
          LocaleKeys.akun_delete_confirm_desc.tr(),
          style: AppTextStyles.subtitleSmall.copyWith(
            color: AppTheme.onSurfaceVariant(context),
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 20),

        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppTheme.errorContainer(context),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: .min,
            children: [
              Text.rich(
                _withBoldEmail(
                  LocaleKeys.akun_delete_confirm_info1.tr(
                    args: [_supportEmail],
                  ),
                  _supportEmail,
                  _bodyStyle,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              Text.rich(
                _withBoldEmail(
                  LocaleKeys.akun_delete_confirm_info2.tr(args: [_userEmail]),
                  _userEmail,
                  _bodyStyle,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 24),

              Buttons(
                width: double.infinity,
                isBorder: false,
                rounded: 28,
                bgColor: AppTheme.error(context),
                onTap: () => OpenLinksHelper.launchEmail(
                  context,
                  email: _supportEmail,
                  subject: LocaleKeys.akun_delete_confirm_email_subject.tr(
                    args: [_userEmail],
                  ),
                  body: _emailBody,
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.mail_outline_rounded,
                      color:
                          getIt<ThemeBloc>().state.themeMode == ThemeMode.light
                          ? Colors.white
                          : Colors.black,
                    ),
                    Text(
                      LocaleKeys.akun_delete_confirm_email_button.tr(),
                      style: AppTextStyles.buttonBig.copyWith(
                        color:
                            getIt<ThemeBloc>().state.themeMode ==
                                ThemeMode.light
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
