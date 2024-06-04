import '../../../../../core/app_export.dart';
import '../../../../data/models/common_models/acheive_model.dart';
import '../../../../data/models/common_models/banner_model.dart';
import '../../../../data/models/common_models/category_model.dart';

class HomeScreenTabController extends GetxController {
  RxnString selecteCategory = RxnString();
  RxBool isLoading = false.obs;
  RxList<Respons> bannerList = <Respons>[].obs;
  RxList<CategoryResponse> categoryList = <CategoryResponse>[].obs;
  RxList<AcheiveResponse> acheiveList = <AcheiveResponse>[].obs;

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
      getCategoryAPi();
    }).onError((error, stackTrace) {
      isLoading(false);
      getCategoryAPi();
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }

  void getCategoryAPi() {
    isLoading(true);
    NetworkApiService()
        .getApi(
      url: UrlConstants.categoryUrl,
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          categoryList.value =
              CategoryModel.fromJson(value.data).response ?? [];
        } else {
          // print(value?.data);
          customSnackBar(value.data['msg'], msgType: MsgType.error);
        }
      }
      isLoading(false);
      getAcheiveAPi();
    }).onError((error, stackTrace) {
      isLoading(false);
      getAcheiveAPi();
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }

  void getAcheiveAPi() {
    isLoading(true);
    NetworkApiService()
        .getApi(
      url: UrlConstants.acheiveUrl,
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          acheiveList.value = AcheiveModel.fromJson(value.data).response ?? [];
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

  Future<void> onRefresh() async {
    bannerAPi();
  }
}
