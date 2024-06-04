import 'package:daan_i_app/core/utils/logger.dart';
import 'package:dio/dio.dart' as dio;

import '../../../../../core/app_export.dart';
import '../../../../data/models/donar_models/donar_profile_deail_model.dart';
import '../../../../data/network/network_api_services.dart';
import '../../../../widgets/my_widget/custom_image_picker.dart';

class NgoTabController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<Respons> donarDetail = Respons().obs;
  TextEditingController nameCOntroller = TextEditingController();
  TextEditingController emailCOntroller = TextEditingController();
  TextEditingController mobileCOntroller = TextEditingController();
  TextEditingController bioCOntroller = TextEditingController();
  CustomImagePicker image = CustomImagePicker();
  RxnString profileImageUrl = RxnString();
  @override
  void onInit() {
    getDetailApi();
    super.onInit();
  }

  void getDetailApi() {
    isLoading(true);
    NetworkApiService()
        .getApi(
      url: UrlConstants.donarSignUpUrl,
    )
        .then((value) {
      if (value?.data['status'] == true) {
        donarDetail.value =
        DonarProfileDetailModel.fromJson(value?.data).response ?? Respons();
        emailCOntroller.text = donarDetail.value.email ?? "";
        nameCOntroller.text = donarDetail.value.name ?? "";
        mobileCOntroller.text = donarDetail.value.mobile ?? "";
        bioCOntroller.text = donarDetail.value.bio ?? "";
        profileImageUrl.value = donarDetail.value.profileImage;
      } else {
        customSnackBar(value?.data['msg'], msgType: MsgType.error);

        // print(value?.data);
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }

  void updateProfileApi() {
    isLoading(true);
    dio.FormData body = dio.FormData();
    body.fields.addAll([
      MapEntry("name", nameCOntroller.text),
      MapEntry("bio", bioCOntroller.text),
    ]);
    if (image.imgFile.value != null) {
      body.files.add(MapEntry(
        'profile_image',
        dio.MultipartFile.fromBytes(image.imgFile.value!.readAsBytesSync(),
            filename: image.imgFile.value!.path),
      ));
    }
    NetworkApiService()
        .putMultipartApi(url: UrlConstants.donarSignUpUrl, body: body)
        .then((value) {
      if (value?.data['status'] == true) {
        customSnackBar(value?.data['msg'], msgType: MsgType.success);
        getDetailApi();
        image.imgFile.value = null;
        Get.back();
        // donarDetail.value =
        //     DonarProfileDetailModel.fromJson(value?.data).response ?? Respons();
        // emailCOntroller.text = donarDetail.value.email ?? "";
        // nameCOntroller.text = donarDetail.value.name ?? "";
        // mobileCOntroller.text = donarDetail.value.mobile ?? "";
        // bioCOntroller.text = donarDetail.value.bio ?? "";
      } else {
        customSnackBar(value?.data['msg'], msgType: MsgType.error);

        // print(value?.data);
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }

  RxList<bool> isTapped = [true, true].obs;

  RxString? selectedState = "".obs;

  final RxList<String> statesName = [
    "Andaman & Nicobar Islands",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chandigarh",
    "Chhattisgarh",
    "Dadra & Nagar Haveli & Daman & Diu",
    "Delhi",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu & Kashmir"
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Panducherry",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
  ].obs;

  void Tap1() {
    isTapped[0] = !isTapped[
        0]; // opposite store hoga isse --> true to false just opposite
  }

  void Tap2() {
    isTapped[1] = !isTapped[
        1]; // opposite store hoga isse --> true to false just opposite
  }
}



  // void DummyApi() {
  //   isLoading(true);
  //   NetworkApiService()
  //       .getApi(
  //     url: UrlConstants.donarSignUpUrl,
  //   )
  //       .then((value) {
        // if(Value!=null){
  //     if (value?.data['status'] == true) {
      //  ! Logic Part


  //     } else {
  //       customSnackBar(value?.data['msg'], msgType: MsgType.error);

  //       // print(value?.data);
  //     }
        // }
  //     isLoading(false);
  //   }).onError((error, stackTrace) {
  //     isLoading(false);
  //     customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
  //     Logger.logPrint(error.toString(), stackTrace: stackTrace);
  //   });
  // }