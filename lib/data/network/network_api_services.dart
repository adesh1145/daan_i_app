import 'dart:io';

import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/core/utils/pref_utils.dart';
import 'package:dio/dio.dart' as dio;

import '../../core/utils/logger.dart';
import '../../core/utils/snack_bar.dart';

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart' as Dio;

class NetworkApiService extends GetxService {
  var dio = Dio.Dio();

  final Map<String, String> header = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${AppStorage.getToken}',
  };

  @override
  onInit() {
    dio.options.headers = header;
    dio.options.sendTimeout = const Duration(seconds: 30);

    super.onInit();
  }

  Future<Dio.Response?> getApi({
    required String url,
    Map<String, dynamic>? query,
    bool isverifyStatusCode = true,
    // required Map<String, int> body
  }) async {
    try {
      Logger.logPrint("==========GET API ======");
      Logger.logPrint("URL---> ${UrlConstants.baseUrl}$url");
      Logger.logPrint("QUERY---> $query");
      Logger.logPrint("HEADER---> $header");

      Dio.Response response = await dio.get(
        UrlConstants.baseUrl + url,
        queryParameters: query,
        options: Dio.Options(headers: header),
      );

      Logger.logPrint("Status Code---> ${response.statusCode}");
      Logger.logPrint("RESPONSE---> ${response.data}");
      return isverifyStatusCode ? returnResponse(response: response) : response;
    } on SocketException {
      customSnackBar("Check your internet connection", msgType: MsgType.error);
    } on TimeoutException {
      customSnackBar("Failed TimeOut", msgType: MsgType.error);
    } on Dio.DioException catch (e) {
      if (e.response != null) {
        Logger.logPrint("Status Code---> ${e.response!.statusCode}");
        Logger.logPrint("RESPONSE---> ${e.response!.data}");
        return isverifyStatusCode
            ? returnResponse(response: e.response!)
            : e.response!;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
        throw e.toString();
      }
    }
    return null;
  }

  Future<Dio.Response?> deleteApi(
      {required String url,
      Map<String, dynamic>? query,
      bool isverifyStatusCode = true}) async {
    try {
      Logger.logPrint("==========GET API ======");
      Logger.logPrint("URL---> ${UrlConstants.baseUrl}$url");
      Logger.logPrint("QUERY---> $query");
      Logger.logPrint("HEADER---> $header");

      Dio.Response response = await dio.delete(
        UrlConstants.baseUrl + url,
        queryParameters: query,
        options: Dio.Options(headers: header),
      );
      Logger.logPrint("Status Code---> ${response.statusCode}");
      Logger.logPrint("RESPONSE---> ${response.data}");
      return isverifyStatusCode ? returnResponse(response: response) : response;
    } on SocketException {
      customSnackBar("Check your internet connection", msgType: MsgType.error);
    } on Dio.DioException catch (e) {
      if (e.response != null) {
        Logger.logPrint("Status Code---> ${e.response!.statusCode}");
        Logger.logPrint("RESPONSE---> ${e.response!.data}");
        return isverifyStatusCode
            ? returnResponse(response: e.response!)
            : e.response!;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
        throw e.toString();
      }
    }
    return null;
  }

  Future<Dio.Response?> postApi(
      {required String url,
      dynamic body,
      Map<String, dynamic>? query,
      Map<String, String>? headers,
      bool isSetToken = true,
      bool isverifyStatusCode = true}) async {
    print(headers);
    print(header);
    isSetToken == false ? header.remove('Authorization') : null;
    print(headers);
    print(header);
    FocusScope.of(Get.context!).unfocus();
    Logger.logPrint("==========POST API ======");
    Logger.logPrint("URL---> ${UrlConstants.baseUrl}$url");
    Logger.logPrint("QUERY---> $query");
    Logger.logPrint("HEADER---> ${headers ?? header}");

    Logger.logPrint("BODY---> $body");

    try {
      Dio.Response response = await dio.post(
        UrlConstants.baseUrl + url,
        queryParameters: query,
        data: body,
        options: Dio.Options(headers: headers ?? header),
      );
      Logger.logPrint("Status Code---> ${response.statusCode}");
      Logger.logPrint("RESPONSE---> ${response.data}");
      return isverifyStatusCode ? returnResponse(response: response) : response;
    } on SocketException {
      customSnackBar("Check your internet connection", msgType: MsgType.error);
    } on Dio.DioException catch (e) {
      if (e.response != null) {
        Logger.logPrint("Status Code---> ${e.response?.statusCode}");
        Logger.logPrint("RESPONSE---> ${e.response?.data}");

        return isverifyStatusCode
            ? returnResponse(response: e.response!)
            : e.response!;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
        throw e.toString();
      }
    }
    return null;
  }

  Future<Dio.Response?> putApi(
      {required String url,
      dynamic body,
      Map<String, dynamic>? query,
      bool isverifyStatusCode = true}) async {
    FocusScope.of(Get.context!).unfocus();
    Logger.logPrint("==========POST API ======");
    Logger.logPrint("URL---> ${UrlConstants.baseUrl}$url");
    Logger.logPrint("QUERY---> $query");
    Logger.logPrint("HEADER---> $header");
    Logger.logPrint("BODY---> $body");
    try {
      Dio.Response response = await dio.put(
        UrlConstants.baseUrl + url,
        queryParameters: query,
        data: body,
        options: Dio.Options(headers: header),
      );
      Logger.logPrint("Status Code---> ${response.statusCode}");
      Logger.logPrint("RESPONSE---> ${response.data}");
      return isverifyStatusCode ? returnResponse(response: response) : response;
    } on SocketException {
      customSnackBar("Check your internet connection", msgType: MsgType.error);
    } on Dio.DioException catch (e) {
      if (e.response != null) {
        Logger.logPrint("Status Code---> ${e.response!.statusCode}");
        Logger.logPrint("RESPONSE---> ${e.response!.data}");
        return isverifyStatusCode
            ? returnResponse(response: e.response!)
            : e.response!;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
        throw e.toString();
      }
    }
    return null;
  }

  Future<Dio.Response?> postMultipartApi(
      {required String url,
      FormData? body,
      Map<String, dynamic>? query,
      bool isverifyStatusCode = true}) async {
    FocusScope.of(Get.context!).unfocus();
    var header = {
      'Accept': '*/*',
      'Authorization': 'Bearer  ${AppStorage.getToken}',
    };

    try {
      Logger.logPrint("========== POST API with MultiPart ======");
      Logger.logPrint("URL---> ${UrlConstants.baseUrl}$url");
      Logger.logPrint("QUERY---> $query");
      Logger.logPrint("HEADER---> $header");
      Logger.logPrint("BODY Feilds---> ${body != null ? body.fields : ""}");
      Logger.logPrint("BODY Files---> ${body != null ? body.files : ""}");
      Dio.Response response = await dio.post(
        UrlConstants.baseUrl + url,
        queryParameters: query,
        data: body,
        options: Dio.Options(
          headers: header,
          contentType: "*/*",
        ),
      );
      Logger.logPrint("Status Code---> ${response.statusCode}");
      Logger.logPrint("RESPONSE---> ${response.data}");
      return isverifyStatusCode ? returnResponse(response: response) : response;
    } on SocketException {
      customSnackBar("Check your internet connection", msgType: MsgType.error);
    } on Dio.DioException catch (e) {
      if (e.response != null) {
        Logger.logPrint("Status Code---> ${e.response!.statusCode}");
        Logger.logPrint("RESPONSE---> ${e.response!.data}");
        return isverifyStatusCode
            ? returnResponse(response: e.response!)
            : e.response!;
      } else {
        customSnackBar("Error :$e", msgType: MsgType.error);
        throw e.toString();
      }
    }
    return null;
  }

  Dio.Response? returnResponse({required Dio.Response response}) {
    switch (response.statusCode) {
      case 401:
        Get.toNamed(AppRoutes.loginScreen);
        customSnackBar(response.data['msg'] ?? "", msgType: MsgType.error);
        break;

      default:

        //! Display Msg
        return response;
    }
    return response;
  }
}

// To parse this JSON data, do
//
//     final commonModalClass = commonModalClassFromJson(jsonString);

// import 'dart:convert';

CommonModalClass commonModalClassFromJson(String str) =>
    CommonModalClass.fromJson(json.decode(str));

String commonModalClassToJson(CommonModalClass data) =>
    json.encode(data.toJson());

class CommonModalClass {
  bool status;
  String msg;

  CommonModalClass({
    required this.status,
    required this.msg,
  });

  factory CommonModalClass.fromJson(Map<String, dynamic> json) =>
      CommonModalClass(
        status: json["status"],
        msg: json["msg"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
      };
}
