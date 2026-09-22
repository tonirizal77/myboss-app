part of 'pages.dart';

class VerificationProfilePage extends StatefulWidget {
  const VerificationProfilePage({super.key});

  @override
  State<VerificationProfilePage> createState() =>
      _VerificationProfilePageState();
}

class _VerificationProfilePageState extends State<VerificationProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyBloc, VerifyState>(
      listenWhen: (previous, current) =>
          current.action == ActionVerify.getOtp ||
          current.action == ActionVerify.getNewOtp,
      listener: VerifyFlowsListener.getOtpCodeListen,
      builder: (context, state) {
        final List<String?> _changeLabelFor;

        final _data = state.verifyData;

        if (_data.fromPage == FromPage.changeNumber) {
          _changeLabelFor = [
            LocaleKeys.label_phone.tr(),
            getIt<GeneralHelper>().maskPhone(_data.phone, isMaskContact: AppSetting.isMaskContact.value),
          ];
        } else if (_data.fromPage == FromPage.changeEmail) {
          _changeLabelFor = [
            LocaleKeys.edit_profile_email_label.tr(),
            getIt<GeneralHelper>().maskEmail(_data.email, isMaskContact: AppSetting.isMaskContact.value),
          ];
        } else if (_data.fromPage == FromPage.changeNewEmail) {
          _changeLabelFor = [
            LocaleKeys.edit_profile_email_label.tr(),
            getIt<GeneralHelper>().maskEmail(_data.newEmail, isMaskContact: AppSetting.isMaskContact.value),
          ];
        } else if (_data.fromPage == FromPage.changeNewNumber) {
          _changeLabelFor = [
            LocaleKeys.label_phone.tr(),
            getIt<GeneralHelper>().maskPhone(_data.newPhone, isMaskContact: AppSetting.isMaskContact.value),
          ];
        } else {
          _changeLabelFor = ['', ''];
        }

        String _info = LocaleKeys.verify_otp_instruction.tr();

        if (_data.fromPage == FromPage.changeEmail ||
            _data.fromPage == FromPage.changeNewEmail) {
          _info = LocaleKeys.verify_otp_instruction_with_phone.tr(
            args: [getIt<GeneralHelper>().maskPhone(_data.phone, isMaskContact: AppSetting.isMaskContact.value)],
          );
        }

        return ResponsivePage(
          useSafeArea: true,
          appBarCustom: AppBarCustom(
            isBlur: false,
            title: LocaleKeys.verify_change_title.tr(args: [_changeLabelFor[0] ?? '']),
            onClose: () {
              context.read<VerifyBloc>().add(VerifyEvent.reset());

              context.pop();
            },
          ),
          padding: EdgeInsets.zero,
          body: BlocBuilder<VerifyBloc, VerifyState>(
            builder: (context, state) {
              return Flex(
                direction:
                    Responsive.isMobile(context) ||
                        Responsive.isPotrait(context)
                    ? .vertical
                    : .horizontal,
                mainAxisSize: .min,
                mainAxisAlignment: Responsive.isMobile(context)
                    ? .start
                    : .center,
                children: [
                  Expanded(child: _imageTop()),

                  Expanded(
                    child: Flex(
                      direction: .vertical,
                      mainAxisSize: .min,
                      mainAxisAlignment: .start,
                      children: [
                        _contentBody(context, _changeLabelFor, _info, state),

                        SizedBox(height: 16),

                        _buttonSendOtp(context, state: state),
                      ],
                    ),
                  ),

                  // _oldDesign(context),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Container _contentBody(
    BuildContext context,
    List<String?> _changeLabelFor,
    String _info,
    VerifyState state,
  ) {
    return Container(
      padding: Responsive.isMobile(context)
          ? const EdgeInsets.fromLTRB(16, 0, 16, 0)
          : EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: Responsive.isMobile(context) ? .start : .center,
        crossAxisAlignment: .start,
        children: [
          Text(
            LocaleKeys.verify_change_instruction.tr(args: [_changeLabelFor[0] ?? '']),
            style: AppTextStyles.subtitleHuge2,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 16),

          CardCustom(
            isBorder: true,
            alignment: Alignment.center,
            borderColor: AppColors.primary,
            borderWidth: 1,
            height: 60,
            color: AppTheme.surfaceContainer(context),
            child: Text(
              "${_changeLabelFor[1]}",
              style: AppTextStyles.subtitleBig1,
            ),
          ),

          SizedBox(height: 16),

          Text(
            _info,
            style: AppTextStyles.bodyBig2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container _imageTop() {
    return Container(
      alignment: .center,
      padding: EdgeInsets.all(16),
      height: 200,
      child: ImageAssets(image: Assets.imgShieldKey, width: 200, height: 200),
    );
  }

  ButtonsWidget _buttonSendOtp(
    BuildContext context, {
    required VerifyState state,
  }) {
    // final _key = VerifyFlows.state.result;
    // final _from = state.verifyData.fromPage;
    // final _needValid = _key.isNotEmpty && (_from == FromPage.changeNewNumber);

    return ButtonsWidget(
      margin: EdgeInsets.symmetric(horizontal: 16),
      // color: _needValid ? AppTheme.primary(context) : AppTheme.outline(context),
      // disable: _needValid,
      onTap: () async {
        await VerifyFlows.getOtpCode(context);
      },
      child: Row(
        mainAxisAlignment: .center,
        spacing: 8,
        children: [
          Image.asset(Assets.icWaBlack, color: AppTheme.surface(context)),

          Text(
            LocaleKeys.verify_send_otp.tr(),
            style: AppTextStyles.button.copyWith(
              color: AppTheme.surface(context),
            ),
          ),
        ],
      ),
    );
  }

  CardCustom _oldDesign(BuildContext context) {
    return CardCustom(
      alignment: Alignment.center,
      padding: EdgeInsets.all(4),
      child: Column(
        spacing: 16,
        children: [
          Text(LocaleKeys.verify_send_otp.tr(), style: AppTextStyles.bodyBig2),

          /// Confirm by Phone Number
          _buttonPhoneNumber(context),

          /// Confirm by Email
          _buttonEmail(context),
        ],
      ),
    );
  }

  ButtonsWidget _buttonEmail(BuildContext context) {
    return ButtonsWidget(
      color: AppTheme.surface(context),
      rounded: 10,
      padding: EdgeInsets.symmetric(horizontal: 16),
      isShadow: true,
      onTap: () {
        /// Goto Confirm OTP / Verify OTP
        // AuthFlows.goToConfirmOtp(
        //   context,
        //   fromPage: FromPage.changePhoneNumberByEmail,
        // );
      },
      child: Row(
        mainAxisAlignment: .spaceBetween,
        spacing: 12,
        children: [
          Icon(Icons.email_outlined, color: AppTheme.onSurface(context)),

          Expanded(
            child: Text(
              LocaleKeys.edit_profile_email_label.tr(),
              style: AppTextStyles.button.copyWith(
                color: AppTheme.onSurface(context),
              ),
            ),
          ),

          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppTheme.onSurface(context),
          ),
        ],
      ),
    );
  }

  ButtonsWidget _buttonPhoneNumber(BuildContext context) {
    return ButtonsWidget(
      color: AppTheme.surface(context),
      rounded: 10,
      isShadow: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      onTap: () {
        /// Goto Confirm OTP / Verify OTP
        // AuthFlows.goToConfirmOtp(
        //   context,
        //   fromPage: FromPage.confirmPhoneNumberByPhone,
        // );
      },
      child: Row(
        mainAxisAlignment: .spaceBetween,
        spacing: 12,
        children: [
          Icon(Icons.phone_android, color: AppTheme.onSurface(context)),

          Expanded(
            child: Text(
              LocaleKeys.label_phone.tr(),
              style: AppTextStyles.button.copyWith(
                color: AppTheme.onSurface(context),
              ),
            ),
          ),

          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppTheme.onSurface(context),
          ),
        ],
      ),
    );
  }
}
