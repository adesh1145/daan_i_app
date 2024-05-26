import 'package:daan_i_app/core/app_export.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as permission;

class MyLocation {
  static Location location = Location.instance;
  static Future<bool> permissionHandler() async {
    PermissionStatus status = await location.requestPermission();
    if (status == PermissionStatus.deniedForever) {
      customSnackBar("Please Allow Location Permission",
          msgType: MsgType.error);
      Future.delayed(
        const Duration(seconds: 1),
        () => permission.openAppSettings(),
      );

      return false;
    } else if (status == PermissionStatus.denied) {
      customSnackBar("Please Allow Location Permission",
          msgType: MsgType.error);
      return await permissionHandler();
    } else if (status == PermissionStatus.grantedLimited ||
        status == PermissionStatus.granted) {
      return await locationService(2);
    }
    return false;
  }

  static Future<bool> locationService(int count) async {
    return count == 0
        ? false
        : await location.requestService()
            ? true
            : await locationService(count - 1);
  }

  static Future<LocationData?> fetchCurrentLocation() async {
    return await permissionHandler().then((value) async {
      if (value) {
        return await location.getLocation();
      }
      return null;
    });
  }
}
