import '../../../../../core/app_export.dart';
import '../../../../data/models/donar_models/donation_history_model.dart';

class HistoryScreenTabController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Donation> donationList = <Donation>[].obs;
  var orderStatus = [
    "ongoing",
    "accept",
    "complete",
    "cancel",
    "reject",
  ];
  RxnString filter = RxnString(null);
  @override
  void onInit() {
    getDonationHistoryApi();
    super.onInit();
  }

  void getDonationHistoryApi() {
    isLoading(true);

    NetworkApiService()
        .getApi(
            url: UrlConstants.donateHistoryUrl,
            query:
                filter.value == null ? null : {"donationStatus": filter.value})
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          donationList.value =
              DonationHistoryModel.fromJson(value.data).response?.donation ??
                  [];
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
    getDonationHistoryApi();
  }
}
