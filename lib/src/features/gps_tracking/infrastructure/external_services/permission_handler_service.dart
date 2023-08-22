import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerService {
  static const Permission gpsPermission = Permission.location;

  Future<PermissionStatus> requestPermission(Permission permission) async {
    final status = await permission.request();

    return status;
  }
}
