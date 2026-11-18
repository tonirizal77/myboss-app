import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

void main() {
  const phone = '+628123456789';
  const email = 'a@b.com';

  test(
    'login by phone, register, change phone, delete account use WhatsApp',
    () {
      for (final page in [
        FromPage.login,
        FromPage.register,
        FromPage.changeNumber,
        FromPage.changeNewNumber,
        FromPage.deleteAccount,
      ]) {
        final data = VerifyModel(fromPage: page, phone: phone, newPhone: phone);
        expect(data.channel, VerifyChannel.whatsapp, reason: '$page');
        expect(data.otpTarget, phone);
      }
    },
  );

  test('login by email uses email', () {
    const data = VerifyModel(fromPage: FromPage.login, email: email);
    expect(data.channel, VerifyChannel.email);
    expect(data.otpTarget, email);
  });

  test('change email flows use email with the right target', () {
    const old = VerifyModel(
      fromPage: FromPage.changeEmail,
      email: email,
      phone: phone,
    );
    expect(old.channel, VerifyChannel.email);
    expect(old.otpTarget, email);

    const next = VerifyModel(
      fromPage: FromPage.changeNewEmail,
      email: email,
      newEmail: 'new@b.com',
    );
    expect(next.channel, VerifyChannel.email);
    expect(next.otpTarget, 'new@b.com');
  });

  test('new phone targets newPhone', () {
    const data = VerifyModel(
      fromPage: FromPage.changeNewNumber,
      phone: '+62811',
      newPhone: phone,
    );
    expect(data.otpTarget, phone);
  });
}
