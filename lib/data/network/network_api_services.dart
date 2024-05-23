import 'dart:io';

import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/core/utils/pref_utils.dart';
import 'package:dio/dio.dart' as dio;

import '../../core/utils/logger.dart';
import '../../core/utils/snack_bar.dart';

class NetworkApiService extends GetxController {
  final dioObj = dio.Dio();
  var header = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${AppStorage.getToken}',
  };
  @override
  onInit() {
    dioObj.options.baseUrl = UrlConstants.baseUrl;
    // header = {
    //   'Authorization': "Bearer ${AppStorage.getToken}",
    // };
    super.onInit();
  }

  Future<dio.Response?> getApi(
      {required String url,
      Map<String, dynamic>? query,
      data,
      bool isSetToken = true}) async {
    !isSetToken
        ? header = {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }
        : null;
    Logger.logPrint("------------GET API--------------------------");
    Logger.logPrint("URL==>${UrlConstants.baseUrl + url}");
    Logger.logPrint("HEADER==>$header");
    Logger.logPrint("QUERY==>$query");

    try {
      dio.Response response = await dioObj.get(UrlConstants.baseUrl + url,
          data: data,
          queryParameters: query,
          options: dio.Options(headers: header));

      Logger.logPrint("STATUS CODE====>${response.statusCode}");
      Logger.logPrint("RESPONSE====>${response.data}");

      return response;
    } on SocketException {
      customSnackBar("Check your internet connection",
          msgType: MsgType.warning);
    } on dio.DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        Logger.logPrint("STATUS CODE====>${e.response!.statusCode}");
        Logger.logPrint("RESPONSE====>${e.response!.data}");
        return e.response;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
      }
    }
    return null;
  }

  Future<dio.Response?> postApi(
      {required String url,
      Map<String, dynamic>? query,
      data,
      bool isSetToken = true}) async {
    !isSetToken
        ? header = {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }
        : null;
    Logger.logPrint("------------POST API--------------------------");
    Logger.logPrint("URL==>${UrlConstants.baseUrl + url}");
    Logger.logPrint("HEADER==>$header");
    Logger.logPrint("BODY==>$data");
    Logger.logPrint("QUERY==>$query");

    try {
      dio.Response response = await dioObj.post(UrlConstants.baseUrl + url,
          data: data,
          queryParameters: query,
          options: dio.Options(headers: header));

      Logger.logPrint("STATUS CODE====>${response.statusCode}");
      Logger.logPrint("RESPONSE====>${response.data}");
      Logger.logPrint("RESPONSE====>${response.realUri}");
      return response;
    } on SocketException {
      customSnackBar("Check your internet connection",
          msgType: MsgType.warning);
      return null;
    } on dio.DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        Logger.logPrint("STATUS CODE====>${e.response!.statusCode}");
        Logger.logPrint("RESPONSE====>${e.response!.data}");
        return e.response;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
        return null;
      }
    }
  }
}
