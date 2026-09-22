part of '../domains.dart';

/// 1. Menu Yogurt Group
abstract class MenuYogurtRepo {
  const MenuYogurtRepo();

  ResultFuture<MenuYogurtModel> listMenuYogurt(DataMap params);
}

/// 2. Menu Toping
abstract class MenuTopingRepo {
  const MenuTopingRepo();

  ResultFuture<MenuTopingModel> listMenuToping(DataMap param);
}
