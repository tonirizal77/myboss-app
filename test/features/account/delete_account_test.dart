import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({'phone': '+628111'});
    final prefs = SharedPreferencesHelper();
    await prefs.init();
    getIt.registerSingleton<SharedPreferencesHelper>(prefs);
  });
  tearDown(() => getIt.reset());

  test('endpoints follow the fixed hayo delete-account API', () {
    expect(Endpoints.deleteAccountReal, '/profile/hayo/delete-account');
    expect(Endpoints.deleteAccountSendOtp, '/customer/hayo/delete/send-otp');
    expect(Endpoints.deleteAccountVerifyOtp, '/customer/hayo/delete/request');
    expect(Endpoints.deleteAccountCancel, '/customer/hayo/delete/cancel');
    expect(Endpoints.deleteReason, '/customer/hayo/delete/reasons');
  });

  test('release defaults: direct deletion with reason + OTP, no mock', () {
    expect(AppSetting.deleteAccountMode, DeleteAccountMode.direct);
    expect(AppSetting.needConfirmOTP, isTrue);
    expect(ServerAccess.mode, DataSourceMode.api);
  });

  test('markPending stores a 30-day deadline and notifies', () async {
    expect(DeleteAccountLocalState.isPending, isFalse);

    await DeleteAccountLocalState.markPending();

    expect(DeleteAccountLocalState.isPending, isTrue);
    expect(DeleteAccountLocalState.isPendingNotifier.value, isTrue);
    final deadline = DateTime.parse(DeleteAccountLocalState.scheduledAt);
    expect(
      deadline.difference(DateTime.now()).inDays,
      inInclusiveRange(29, 30),
    );

    await DeleteAccountLocalState.clearPending();
    expect(DeleteAccountLocalState.isPending, isFalse);
    expect(DeleteAccountLocalState.isPendingNotifier.value, isFalse);
  });

  test('syncForAccount drops a flag that belongs to another account', () async {
    await DeleteAccountLocalState.markPending();

    await DeleteAccountLocalState.syncForAccount('+628111');
    expect(DeleteAccountLocalState.isPending, isTrue, reason: 'same owner');

    await DeleteAccountLocalState.syncForAccount('+628999');
    expect(DeleteAccountLocalState.isPending, isFalse);
  });
}
