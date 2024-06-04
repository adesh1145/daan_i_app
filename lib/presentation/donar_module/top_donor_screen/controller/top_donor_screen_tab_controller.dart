import '../../../../../core/app_export.dart';
import '../../../../data/models/donar_models/top_donar_model.dart';

class TopDonorTabController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<TopDonar> toDonar = <TopDonar>[].obs;
  @override
  void onInit() {
    getTopDonarApi();
    super.onInit();
  }

  void getTopDonarApi() {
    isLoading(true);
    NetworkApiService()
        .getApi(
      url: UrlConstants.topDonarUrl,
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          toDonar.value = TopDonarModel.fromJson(value.data).response ?? [];
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
    getTopDonarApi();
  }
}
