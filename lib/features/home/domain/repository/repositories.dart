part of '../domains.dart';

/// 1. Repo [Interface] - guest Home content
abstract class GuestHomeRepo {
  const GuestHomeRepo();

  ResultFuture<GuestHome> getGuestHome();
}
