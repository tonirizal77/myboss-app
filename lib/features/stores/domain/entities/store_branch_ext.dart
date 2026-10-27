import 'package:geolocator/geolocator.dart';

import 'store_branches_model/store_branches_model.dart';

/// Branch (outlet) helpers on top of [StoreBranch].
extension StoreBranchX on StoreBranch {
  /// Distance in km from [from] (live device position), falling back to the
  /// server-computed [StoreBranch.distance]. Null when neither is known.
  double? distanceKm(Position? from) {
    final lat = double.tryParse(locationLat ?? '');
    final lon = double.tryParse(locationLon ?? '');
    if (from == null || lat == null || lon == null) return distance;

    return Geolocator.distanceBetween(
          from.latitude,
          from.longitude,
          lat,
          lon,
        ) /
        1000;
  }

  /// Branch logo, or null for the backend's generic "no photo" placeholder so
  /// the app's own branch avatar is shown instead.
  String? get logoUrl {
    final url = logo ?? '';
    if (url.isEmpty || url.contains('/no_photo/')) return null;
    return url;
  }

  /// Google Maps link built from the branch coordinates.
  String? get mapsUrl {
    final lat = double.tryParse(locationLat ?? '');
    final lon = double.tryParse(locationLon ?? '');
    if (lat == null || lon == null) return null;

    return 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
  }
}

/// "1.3 km" (one decimal below 100 km, whole number above).
String formatDistanceKm(double km) =>
    km < 100 ? '${km.toStringAsFixed(1)} km' : '${km.round()} km';

/// "Semarang · 1.3 km" / "Semarang" when the distance is unknown.
String branchSubtitle(StoreBranch branch, Position? from) {
  final city = branch.cityName ?? '';
  final km = branch.distanceKm(from);
  if (km == null) return city;

  return city.isEmpty
      ? formatDistanceKm(km)
      : '$city · ${formatDistanceKm(km)}';
}
