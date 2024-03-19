import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:daan_i_app/core/app_export.dart';
import '../../data/apiClient/api_client.dart';
import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
