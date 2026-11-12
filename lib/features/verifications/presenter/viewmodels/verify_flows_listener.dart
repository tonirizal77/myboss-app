// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/auth/auth_ft.dart';
import 'package:myboss_app/features/features.dart' show AccountFlows;
import 'verify_bloc/verify_bloc.dart';

class VerifyFlowsListener {
  const VerifyFlowsListener._();

  /// Error text of a failed OTP request. Register says so explicitly
  /// ("Registration failed: {server reason}", or a generic retry text when
  /// the server sends none); other flows keep the server message.
  @visibleForTesting
  static String errorMessage(VerifyState state) {
    if (state.verifyData.fromPage != FromPage.register) {
      return state.errorMessage;
    }

    return state.errorMessage.trim().isEmpty
        ? LocaleKeys.auth_register_failed.tr()
        : LocaleKeys.auth_register_failed_reason.tr(
            args: [state.errorMessage.trim()],
          );
  }

  /// "Registration successful" once the account is created. Shown on the
  /// root navigator: the OTP page owning the listener is gone after the
  /// redirect to the Main Page.
  static Future<void> _showRegisterSuccess(BuildContext context) async {
    final root = NavigatorKey.rootNavigatorKey.currentContext;
    final target = root != null && root.mounted ? root : context;
    if (!target.mounted) return;

    await getIt<FlushbarHelper>().showNormalFlushbar(
      context: target,
      message: LocaleKeys.auth_register_success.tr(),
    );
  }

  /// === Listener ===
  /// 1. Listener get otp (Verifikasi)
  static FutureOr<void> getOtpCodeListen(
    BuildContext context,
    VerifyState state,
  ) {
    if (state.statusGetOtp == Status.loading) {
      getIt<LoadingHelper>().turnOnLoading();
    } else {
      getIt<LoadingHelper>().turnOffLoading();
      if (state.statusGetOtp == Status.failed) {
        getIt<FlushbarHelper>().showErrorFlushbar(
          context: context,
          message: errorMessage(state),
        );
      } else {
        /// Goto Confirm Page
        PrintHelper.printData(
          "__goto Page confirm OTP: ${state.statusSendOtp}",
        );
        context.pushNamed(RouteNames.confirmationsPage);
      }
    }
  }

  /// 2. Listener send otp (Verify)
  static FutureOr<void> sendOtpCodeListen(
    BuildContext context,
    VerifyState state,
  ) async {
    /// Listen Confirm Page
    PrintHelper.printData("__listen action confirm OTP: ${state.action}");

    if (state.statusSendOtp == Status.loading) {
      getIt<LoadingHelper>().turnOnLoading();
    } else {
      if (state.statusSendOtp == Status.failed) {
        getIt<LoadingHelper>().turnOffLoading();
        await getIt<FlushbarHelper>().showErrorFlushbar(
          context: context,
          message: errorMessage(state),
        );
      } else {
        final _fromPage = state.verifyData.fromPage;
        final _phone = state.verifyData.phone;
        final _result = state.result;

        PrintHelper.printData("__goto Next Page >>> ${state.result}");

        context.read<TimerCubit>().reset();

        /// Goto Next Page
        /// - serahkan ke UserFlows, AccountFLows
        ///

        if (_fromPage == .login) {
          await UserFlows.goToMainPage(context);
        } else if (_fromPage == .register) {
          await UserFlows.goToMainPage(context);
        } else if (_fromPage == .changeNumber) {
          AccountFlows.goToNewPhonePage(context);
        } else if (_fromPage == .changeEmail) {
          AccountFlows.goToNewEmailPage(context);
        } else if (_fromPage == .changeNewNumber) {
          await AccountFlows.onChangedProfile(context, state.result);
        } else if (_fromPage == .changeNewEmail) {
          await AccountFlows.onChangedProfile(context, state.result);
        }

        getIt<LoadingHelper>().turnOffLoading();

        if (_fromPage == .register) await _showRegisterSuccess(context);
      }
    }
  }
}
