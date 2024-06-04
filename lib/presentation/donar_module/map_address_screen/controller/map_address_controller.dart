import 'dart:ui' as ui;
import 'dart:async';
import 'package:daan_i_app/presentation/donar_module/select_address_screen/controller/select_address_controller.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../core/app_export.dart';
import '../../../../data/models/common_models/city_model.dart';
import '../../../../data/models/common_models/state_model.dart';
import '../../../../data/models/donar_models/address_model.dart';
import '../../../../services/permission_handler_service.dart';

class MapAddressController extends GetxController {
  //!  Map Address Screen Data

  // 25.174316, 82.798938
  final arguments = Get.arguments;
  RxBool isLoading = false.obs;
  final initialCameraPosition =
      const CameraPosition(target: LatLng(29.000082, 77.760616), zoom: 12);
  final Completer<GoogleMapController> googleMapController = Completer();
  late final CameraPosition cameraPosition;
  final Rx<EdgeInsets> mapPadding = Rx(EdgeInsets.zero);
  LatLng? selectedLocation;
  final markers = <Marker>[].obs;

  //!  Add Address Screen Data
  final addressFormKey = GlobalKey<FormState>();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController latLongController = TextEditingController();
  TextEditingController houseNoController = TextEditingController();
  TextEditingController landMarkController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  int? selectedState;
  int? selectedCity;
  RxList<Respons> stateList = <Respons>[].obs;
  RxList<CityResponse> cityList = <CityResponse>[].obs;

  @override
  void onInit() async {
    markers.add(Marker(
      markerId: const MarkerId('current_location'),
      icon: BitmapDescriptor.fromBytes(
          await getBytesFromAsset(ImageConstant.pickupMarker, 60)),
      draggable: false,
      visible: true,
      position: const LatLng(0, 0),
      infoWindow: const InfoWindow(title: 'Selected Address'),
    ));
    if (arguments != null) {
      fetchDetail(arguments as Address);
    } else {
      isLoading(true);
      await getCurrentLocation();
      isLoading(false);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    mapPadding.value =
        EdgeInsets.only(top: Get.statusBarHeight + 24, left: 8, right: 8);
  }

  Future<void> getCurrentLocation() async {
    await MyLocation.fetchCurrentLocation().then((value) {
      if (value != null && value.latitude != null && value.longitude != null) {
        updateMarkers(LatLng(value.latitude!, value.longitude!));
      } else {
        print("Location Not Fetching....");
      }
    });
  }

  Future<void> updateMarkers(LatLng latLng) async {
    print("update MArker...0");
    markers[0] = markers[0].copyWith(
        positionParam: latLng,
        visibleParam: true,
        onDragEndParam: onMapActivity);
    // markers.add(Marker(
    //     markerId: MarkerId('current_location'),
    //     icon: BitmapDescriptor.fromBytes(
    //         await getBytesFromAsset(ImageConstant.pickupMarker, 60)),
    //     draggable: false,
    //     visible: true,
    //     position: LatLng(latitude, longitude),
    //     infoWindow: InfoWindow(title: 'Pick Up Location'),
    //     onDragEnd: onMapActivity));
    await googleMapController.future.then((value) async {
      await value.hideMarkerInfoWindow(const MarkerId("current_location"));
      await value.showMarkerInfoWindow(const MarkerId("current_location"));
    });
    _updateCameraPosition(latLng);
  }

  Future<void> _updateCameraPosition(LatLng latLng) async {
    final controller = await googleMapController.future;
    selectedLocation = latLng;
    controller.animateCamera(CameraUpdate.newLatLngZoom(latLng, 18));
  }

  // Future<String> _getAddressFromLatLng(double latitude, double longitude) async {
  //   final placemarks = await placemarkFromCoordinates(latitude, longitude);
  //   final place = placemarks[0];
  //   return "${place.name}, ${place.street}, ${place.locality}, ${place.postalCode}, ${place.country}";
  // }

  void onMapActivity(LatLng latLng) async {
    selectedLocation = latLng;
    updateMarkers(latLng);
    // currentAddress.value = await _getAddressFromLatLng(latLng.latitude, latLng.longitude);
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

  void fetchDetail(Address address) {
    nameController.text = address.name ?? "";
    mobileNumberController.text = address.mobile ?? "";
    houseNoController.text = address.address ?? "";
    landMarkController.text = address.landmark ?? "";
    pinCodeController.text = address.pincode.toString();
    latLongController = TextEditingController(
        text: LatLng(address.latitude ?? 0.0, address.latitude ?? 0.0)
            .toString());
    selectedLocation = address.latitude != null && address.longitude != null
        ? LatLng(address.latitude ?? 0.0, address.longitude ?? 0.0)
        : null;
    getStateApi().then(
      (value) {
        selectedState = address.stateDetail?.id;
        if (selectedState != null) {
          getCityApi(selectedState!).then(
            (value) {
              selectedCity = address.cityDetail?.id;
            },
          );
        }
      },
    );
    // int? selectedCity;
  }

  Future<void> getStateApi() async {
    isLoading(true);
    await NetworkApiService()
        .getApi(
      url: UrlConstants.stateUrl,
    )
        .then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          stateList.value = StateModel.fromJson(value.data).response ?? [];
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

  Future<void> getCityApi(int stateId) async {
    isLoading(true);
    await NetworkApiService().getApi(
        url: UrlConstants.cityUrl, query: {'stateId': stateId}).then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          cityList.value = CityModel.fromJson(value.data).response ?? [];
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

  void addAddressApi() {
    isLoading(true);
    NetworkApiService().postApi(url: UrlConstants.addressUrl, body: {
      "name": nameController.text,
      "mobile": mobileNumberController.text,
      "latitude": selectedLocation?.latitude,
      "longitude": selectedLocation?.longitude,
      "address": houseNoController.text,
      "landmark": landMarkController.text,
      "pincode": pinCodeController.text,
      "state": selectedState,
      "city": selectedCity,
    }).then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          customSnackBar(value.data['msg'], msgType: MsgType.success);
          Get.find<SelectAddressController>().getAddressApi();
          Get.until(
              (route) => route.settings.name == AppRoutes.selectAddressScreen);
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

  void updateAddressApi(int id) {
    isLoading(true);
    NetworkApiService().putApi(url: UrlConstants.addressUrl, body: {
      'id': id,
      "name": nameController.text,
      "mobile": mobileNumberController.text,
      "latitude": selectedLocation?.latitude,
      "longitude": selectedLocation?.longitude,
      "address": houseNoController.text,
      "landmark": landMarkController.text,
      "pincode": pinCodeController.text,
      "state": selectedState,
      "city": selectedCity,
    }).then((value) {
      if (value != null) {
        if (value.data['status'] == true) {
          customSnackBar(value.data['msg'], msgType: MsgType.success);
          Get.find<SelectAddressController>().getAddressApi();
          Get.until(
              (route) => route.settings.name == AppRoutes.selectAddressScreen);
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
