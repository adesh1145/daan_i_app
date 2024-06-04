import 'package:get/get_rx/get_rx.dart';

import '../../../../core/app_export.dart';

import '../../../../data/models/donar_models/address_model.dart';

class SelectAddressController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Address> addressList = <Address>[].obs;
  RxString selectedIndex = "".obs;
  @override
  void onInit() {
    getAddressApi();
    super.onInit();
  }

  void getAddressApi() {
    isLoading(true);
    NetworkApiService()
        .getApi(
      url: UrlConstants.addressUrl,
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          addressList.value =
              AddressModel.fromJson(value.data).response?.address ?? [];
        } else {
          // print(value?.data);
          customSnackBar(value.data['msg'], msgType: MsgType.error);
        }
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }

  void deleteAddressApi(int index) {
    isLoading(true);
    NetworkApiService()
        .deleteApi(
      url: "${UrlConstants.addressUrl}/${addressList[index].id.toString()}",
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          addressList.removeAt(index);
          customSnackBar(value.data['msg'], msgType: MsgType.success);
        } else {
          // print(value?.data);
          customSnackBar(value.data['msg'], msgType: MsgType.error);
        }
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }
}
