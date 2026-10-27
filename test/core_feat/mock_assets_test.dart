import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Every request the app makes, as `(method, endpoint)`.
const _requests = [
  ('POST', Endpoints.clientAuth),
  ('POST', Endpoints.refreshToken),
  ('POST', Endpoints.signIn),
  ('POST', Endpoints.signInSendCode),
  ('POST', Endpoints.signUp),
  ('POST', Endpoints.signUpSendCode),
  ('POST', Endpoints.signOut),
  ('GET', Endpoints.profileInfo),
  ('GET', Endpoints.avatarList),
  ('POST', Endpoints.generateCode),
  ('PUT', Endpoints.updateProfile),
  ('POST', Endpoints.verifyOldGetOtp),
  ('POST', Endpoints.verifyOldSendOtp),
  ('POST', Endpoints.verifyNewGetOtpPhone),
  ('POST', Endpoints.verifyNewGetOtpEmail),
  ('POST', Endpoints.verifyNewSendOtp),
  ('GET', Endpoints.storeData),
  ('GET', Endpoints.storeBranches),
  ('GET', Endpoints.voucherList),
  ('GET', Endpoints.aboutUs),
  ('GET', Endpoints.faq),
  ('POST', Endpoints.deleteAccountSendOtp),
  ('POST', Endpoints.deleteAccountVerifyOtp),
  ('POST', Endpoints.deleteAccountCancel),
  ('GET', Endpoints.deleteReason),
  ('DELETE', Endpoints.deleteAccountReal),
];

Map<String, dynamic> _mock(String method, String endpoint) {
  final file = File(MockServerInterceptor.assetKey(method, endpoint));
  return jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
}

Map<String, dynamic> _data(String method, String endpoint) =>
    _mock(method, endpoint)['data'] as Map<String, dynamic>;

void main() {
  test('every request the app makes has a mock file', () {
    final missing = [
      for (final (method, endpoint) in _requests)
        if (!File(
          MockServerInterceptor.assetKey(method, endpoint),
        ).existsSync())
          '$method $endpoint',
    ];
    expect(missing, isEmpty);
  });

  test('every mock file belongs to a request (no stale files)', () {
    final expected = {
      for (final (method, endpoint) in _requests)
        MockServerInterceptor.assetKey(method, endpoint),
    };
    final files = Directory(MockServerInterceptor.root)
        .listSync(recursive: true)
        .whereType<File>()
        .map((f) => f.path.replaceAll(r'\', '/'))
        .toSet();
    expect(files.difference(expected), isEmpty);
  });

  test('mock files are registered in pubspec.yaml', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final folders = {
      for (final (method, _) in _requests)
        '${MockServerInterceptor.root}/${method.toLowerCase()}/',
    };
    for (final folder in folders) {
      expect(pubspec, contains('- $folder'), reason: folder);
    }
  });

  group('mock data parses with the app models', () {
    test('client token / sign-in / sign-up', () {
      expect(
        TokenModel.fromJson(_mock('POST', Endpoints.clientAuth)).accessToken,
        isNotEmpty,
      );
      expect(
        TokenModel.fromJson(_mock('POST', Endpoints.refreshToken)).accessToken,
        isNotEmpty,
      );
      final login = LoginModel.fromJson(_data('POST', Endpoints.signIn));
      expect(login.accessToken, isNotEmpty);
      expect(login.customer?.name, 'Mock User');
      expect(
        TokenModel.fromJson(_data('POST', Endpoints.signUp)).accessToken,
        isNotEmpty,
      );
    });

    test('profile, avatar, member code', () {
      expect(
        ProfileModel.fromJson(_data('GET', Endpoints.profileInfo)).name,
        'Mock User',
      );
      expect(
        ProfileModel.fromJson(_data('PUT', Endpoints.updateProfile)).id,
        isPositive,
      );
      expect(
        AvatarListModel.fromJson(_mock('GET', Endpoints.avatarList)).data,
        isNotEmpty,
      );
      expect(
        GenCodeModel.fromJson(_data('POST', Endpoints.generateCode)).code,
        isNotEmpty,
      );
    });

    test('update phone/email returns the verify key', () {
      expect(_data('POST', Endpoints.verifyOldSendOtp)['key'], isNotEmpty);
    });

    test('store and branches', () {
      final store = StoreModel.fromJson(_data('GET', Endpoints.storeData));
      expect(store.mobileSetting?.isGuestMode, isTrue);
      expect(store.signinRequired, 0);

      final branches = StoreBranchesModel.fromJson(
        _mock('GET', Endpoints.storeBranches),
      );
      expect(branches.data, hasLength(3));
      expect(branches.data.where((b) => b.isOpen), isNotEmpty);
      expect(branches.data.where((b) => !b.isOpen), isNotEmpty);
    });

    test('voucher, about us, faq, delete reasons', () {
      expect(
        VoucherListModel.fromJson(_mock('GET', Endpoints.voucherList)).data,
        isNotEmpty,
      );
      expect(
        AboutUsModel.fromJson(_data('GET', Endpoints.aboutUs)).title,
        isNotEmpty,
      );
      expect(
        () => FaqModel.fromJson(_mock('GET', Endpoints.faq)),
        returnsNormally,
      );
      expect(
        () => TncModel.fromJson(_mock('GET', Endpoints.faq)),
        returnsNormally,
      );
      expect(
        ReasonsModel.fromJson(_mock('GET', Endpoints.deleteReason)).data,
        isNotEmpty,
      );
    });

    test('plain success responses carry a data map', () {
      for (final (method, endpoint) in [
        ('POST', Endpoints.signInSendCode),
        ('POST', Endpoints.signUpSendCode),
        ('POST', Endpoints.signOut),
        ('POST', Endpoints.verifyOldGetOtp),
        ('POST', Endpoints.verifyNewGetOtpPhone),
        ('POST', Endpoints.deleteAccountSendOtp),
        ('POST', Endpoints.deleteAccountVerifyOtp),
        ('POST', Endpoints.deleteAccountCancel),
        ('DELETE', Endpoints.deleteAccountReal),
      ]) {
        expect(_mock(method, endpoint)['data'], isA<Map>(), reason: endpoint);
      }
    });
  });
}
