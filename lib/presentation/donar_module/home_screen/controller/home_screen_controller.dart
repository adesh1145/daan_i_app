import 'package:get/get.dart';

import '../../../../../core/app_export.dart';
import '../../../../core/utils/logger.dart';
import '../../../../data/models/common_models/banner_model.dart';
import '../../../../data/network/network_api_services.dart';

class HomeTabController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Respons> bannerList = <Respons>[].obs;
  RxString? selecteCategory = "".obs;

  final List<String> donateCategory = [
    "Food",
    "Clothes",
    "Money",
    "Others",
  ].obs;
  @override
  void onInit() {
    bannerAPi();
    // TODO: implement onInit
    super.onInit();
  }

  void bannerAPi() {
    isLoading(true);
    NetworkApiService()
        .getApi(
      url: UrlConstants.bannerUrl,
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          bannerList.value = BannerModel.fromJson(value.data).response ?? [];
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
