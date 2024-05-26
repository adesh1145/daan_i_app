import 'dart:ui' as ui;
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../core/app_export.dart';
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
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController houseNoController = TextEditingController();
  TextEditingController landMarkController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController searchCityController = TextEditingController(text: "");
  TextEditingController selectCityController = TextEditingController(text: "");

  @override
  void onInit() async {
    isLoading(true);
    markers.add(Marker(
      markerId: const MarkerId('current_location'),
      icon: BitmapDescriptor.fromBytes(
          await getBytesFromAsset(ImageConstant.pickupMarker, 60)),
      draggable: false,
      visible: true,
      position: const LatLng(0, 0),
      infoWindow: const InfoWindow(title: 'Selected Address'),
    ));
    await getCurrentLocation();
    isLoading(false);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    mapPadding.value =
        EdgeInsets.only(top: Get.statusBarHeight + 24, left: 8, right: 8);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> getCurrentLocation() async {
    await MyLocation.fetchCurrentLocation().then((value) {
      if (value != null && value.latitude != null && value.longitude != null) {
        _updateMarkers(LatLng(value.latitude!, value.longitude!));
      } else {
        print("Location Not Fetching....");
      }
    });
  }

  Future<void> _updateMarkers(LatLng latLng) async {
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
    _updateMarkers(latLng);
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
}
