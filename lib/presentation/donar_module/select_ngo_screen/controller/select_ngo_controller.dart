import 'dart:async';
import 'package:daan_i_app/data/models/donar_models/near_by_ngo_model.dart';
import 'package:daan_i_app/presentation/donar_module/donate_field_screen/controller/donate_field_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dio/dio.dart' as Dio;

import '../../../../../core/app_export.dart';

import 'dart:ui' as ui;

import '../../../../widgets/my_widget/confirm_donation_dialog.dart';

class SelectNGOController extends GetxController {
  RxBool isLoading = false.obs;

  final markers = <Marker>[].obs;

  final MarkerId _pickupMarkerId = const MarkerId("pickup");
  final MarkerId _dropOffMarkerId = const MarkerId("drop");
  RxString polylineData = "".obs, availabilityStatus = "".obs;
  RxInt selectedIndex = (-1).obs;
  Completer<GoogleMapController> googleMapController = Completer();
  Rx<LatLng> startLatLng = LatLng(0, 0).obs;
  Rx<LatLng> endLatLng = LatLng(0, 0).obs;
  final zoom = 15.0.obs;

  RxList<Ngo> ngoList = <Ngo>[].obs;
  final donateController = Get.find<DonateFieldController>();
  @override
  void onInit() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getNearByNgoAPi();
    });
    super.onInit();
  }

  @override
  void dispose() {
    // googleMapController.complete();
    super.dispose();
  }

  cameraBound() async {
    startLatLng.value = LatLng(0.0, 0.0);
    endLatLng.value = LatLng(0.0, 0.0);
    LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(
        startLatLng.value.latitude < endLatLng.value.latitude
            ? startLatLng.value.latitude
            : endLatLng.value.latitude,
        startLatLng.value.longitude < endLatLng.value.longitude
            ? startLatLng.value.longitude
            : endLatLng.value.longitude,
      ),
      northeast: LatLng(
        startLatLng.value.latitude > endLatLng.value.latitude
            ? startLatLng.value.latitude
            : endLatLng.value.latitude,
        startLatLng.value.longitude > endLatLng.value.longitude
            ? startLatLng.value.longitude
            : endLatLng.value.longitude,
      ),
    );
    try {
      var controller = await googleMapController.future;
      controller.moveCamera(CameraUpdate.newLatLngBounds(bounds, 50.0));
    } catch (e) {
      print("ErrorrrEEEEEEEEEEEEEEEEEEEEE");
    }
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void getNearByNgoAPi() {
    isLoading(true);
    NetworkApiService().postApi(url: UrlConstants.nearByNgoUrl, body: {
      "category": Get.find<DonateFieldController>().selectedCategory,
      "address": Get.find<DonateFieldController>().selectedAddressId
    }).then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          ngoList.value =
              NearByNgoModel.fromJson(value.data).response?.ngo ?? [];
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

  Future<void> donateAPi() async {
    isLoading(true);

    List images = [];
    for (var i = 0; i < donateController.imageList.length; i++) {
      if (donateController.imageList[i].imgFile.value != null) {
        images.add(await Dio.MultipartFile.fromFile(
          donateController.imageList[i].imgFile.value!.path,
          filename: donateController.imageList[i].imgFile.value!.path,
        ));
      }
    }
    Dio.FormData body = Dio.FormData.fromMap({
      'images': images,
      "category": donateController.selectedCategory.toString(),
      "weight": donateController.weightController.text.toString(),
      "description": donateController.descriptionController.text.toString(),
      "donar_address": donateController.selectedAddressId.toString(),
      "ngo": ngoList[selectedIndex.value].id.toString()
    });

    NetworkApiService()
        .postMultipartApi(url: UrlConstants.donateUrl, body: body)
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          DonationConfirmationDialogs(
              OnTapBookingStatus: () {},
              bookingConfirmTxt: value.data['msg'].toString(),
              checkBookingTxt: "Check Donation Status",
              onTapBackToHome: () {
                Get.until(
                  (route) =>
                      route.settings.name == AppRoutes.custBottomNavigation,
                );
              },
              backHomeTxt: "Back To Home",
              subTilttle: "Donation Successful");
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
