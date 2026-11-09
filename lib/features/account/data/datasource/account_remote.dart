part of '../datas.dart';

/// 2.a [Remote] Data
abstract class AccountRemote {
  /// -
  ResultFuture<AboutUsModel> getAboutUs();

  ResultFuture<FaqModel> getFaq();

  ResultFuture<TncModel> getTnc();

  ResultFuture<ReasonsModel> getReasons();
}

/// 2.b [Remote] Data Implementasi
class AccountRemoteImpl implements AccountRemote {
  const AccountRemoteImpl();

  @override
  ResultFuture<AboutUsModel> getAboutUs() async {
    final result = await DioGet.call(url: Endpoints.aboutUs);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(AboutUsModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<FaqModel> getFaq() async {
    final resp = await DioGet.call(url: Endpoints.faq);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(FaqModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<TncModel> getTnc() async {
    final resp = await DioGet.call(url: Endpoints.faq);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(TncModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<ReasonsModel> getReasons() async {
    final resp = await DioGet.call(url: Endpoints.deleteReason);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(ReasonsModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
