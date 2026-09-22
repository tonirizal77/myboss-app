part of '../datas.dart';

/// 2.a [Remote] Data
abstract class MenuTopingRemote {
  /// -
  ResultFuture<MenuTopingModel> listMenuToping(DataMap param);
}

/// 2.b [Remote] Data Implementasi
class MenuTopingRemoteImpl implements MenuTopingRemote {
  const MenuTopingRemoteImpl();

  @override
  ResultFuture<MenuTopingModel> listMenuToping(DataMap param) async {
    final result = await DioGet.call(
      url: Endpoints.menuTopingList,
      body: param,
    );

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(MenuTopingModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
