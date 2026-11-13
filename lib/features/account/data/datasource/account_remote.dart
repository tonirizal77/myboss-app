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

  /// URLs to ask for the terms & policy documents, in order: the selected
  /// branch first ([branchUrl], from [ConfigServer.branchUrl]), then the
  /// main store. No branch selected -> both are the same, asked once.
  @visibleForTesting
  static List<String> tncUrls(String branchUrl) => {
    branchUrl,
    Endpoints.termsAndPolicy,
  }.toList();

  /// The first of [tncUrls] that answers with documents to show; a branch
  /// without any (or that fails) falls back to the main store.
  @override
  ResultFuture<TncModel> getTnc() async {
    final urls = tncUrls(ConfigServer.branchUrl(Endpoints.termsAndPolicy));
    late Either<Failures, TncModel> result;

    for (final url in urls) {
      result = await _fetchTnc(url);

      final hasDocs = result.fold((_) => false, (r) => r.visible.isNotEmpty);
      if (hasDocs) break;
    }

    return result;
  }

  ResultFuture<TncModel> _fetchTnc(String url) async {
    final resp = await DioGet.call(url: url);

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
