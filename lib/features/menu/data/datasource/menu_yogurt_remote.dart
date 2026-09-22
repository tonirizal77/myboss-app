part of '../datas.dart';

/// Moved to folder data [datasource]
/// part of '../datas.dart';

/// 2.a [Remote] Data
abstract class MenuYogurtRemote {
  /// -
  ResultFuture<MenuYogurtModel> listMenuYogurt(DataMap params);
}

/// 2.b [Remote] Data Implementasi
class MenuYogurtRemoteImpl implements MenuYogurtRemote {
  const MenuYogurtRemoteImpl();

  @override
  ResultFuture<MenuYogurtModel> listMenuYogurt(DataMap params) async {
    final result = await DioGet.call(
      url: Endpoints.menuYogurtList,
      body: params,
    );

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(MenuYogurtModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
