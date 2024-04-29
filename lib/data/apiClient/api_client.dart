// ignore_for_file: unused_element, unused_import

import '../../core/app_export.dart';
import '../../core/errors/exceptions.dart';
import '../../core/network/network_info.dart';

class ApiClient extends GetConnect {
  var url = "https://dev.cabmed.in";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    // if (!await Get.find<NetworkInfo>().isConnected()) {
    //   throw NoInternetException('No Internet Found!');
    // }
    return;
  }

  bool _isSuccessCall(response) {
    return response.statusCode == 200;
  }
}
