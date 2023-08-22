import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:taxichrono/src/features/gps_tracking/domain/geolocation_service_failed.dart';

typedef GeolocationServiceResponse = Either<GeolocationServiceFailed, Position>;

class GeolocationService {
  static Future<GeolocationServiceResponse> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
      return left(const GeolocationServiceFailed());
    }

    return right(await Geolocator.getCurrentPosition());
  }

  static openSettings() {
    openAppSettings();
  }
}
