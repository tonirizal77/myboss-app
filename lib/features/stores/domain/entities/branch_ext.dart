import 'package:geolocator/geolocator.dart';

import 'store_list_model/store_list_model.dart';

/// Branch (outlet) helpers on top of [StoreList].
extension BranchX on StoreList {
  /// Whether the branch is open right now.
  ///
  /// TODO(backend): the contract of `status` is unconfirmed - treat common
  /// "open" values as open until the MyBoss API is final.
  bool get isOpen {
    final v = (status ?? '').toLowerCase().trim();
    return v == 'open' || v == '1' || v == 'buka' || v == 'active';
  }

  /// Distance in km from [from], or null when either side has no coordinates.
  double? distanceKm(Position? from) {
    final lat = double.tryParse(locationLat ?? '');
    final lon = double.tryParse(locationLon ?? '');
    if (from == null || lat == null || lon == null) return null;

    return Geolocator.distanceBetween(
          from.latitude,
          from.longitude,
          lat,
          lon,
        ) /
        1000;
  }
}

/// "1.3 km" (one decimal below 100 km, whole number above).
String formatDistanceKm(double km) =>
    km < 100 ? '${km.toStringAsFixed(1)} km' : '${km.round()} km';

/// "Semarang · 1.3 km" / "Semarang" when the distance is unknown.
String branchSubtitle(StoreList branch, Position? from) {
  final city = branch.city ?? '';
  final km = branch.distanceKm(from);
  if (km == null) return city;

  return city.isEmpty
      ? formatDistanceKm(km)
      : '$city · ${formatDistanceKm(km)}';
}
