// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/core/utils/pref_utils.dart';

import '../../data/network/network_api_services.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkApiService());

    // Connectivity connectivity = Connectivity();
    // Get.put(NetworkInfo(connectivity));
  }
}
