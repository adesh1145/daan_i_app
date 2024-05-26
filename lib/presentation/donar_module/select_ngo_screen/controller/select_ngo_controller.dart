import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../../core/app_export.dart';

import 'dart:ui' as ui;

class SelectNGOController extends GetxController {
  RxBool isLoading = false.obs;
  RxnInt isSelectedIndex = RxnInt();
  final markers = <Marker>[].obs;

  final MarkerId _pickupMarkerId = const MarkerId("pickup");
  final MarkerId _dropOffMarkerId = const MarkerId("drop");
  RxString polylineData = "".obs, availabilityStatus = "".obs;
  RxInt selectedIndex = 0.obs;
  Completer<GoogleMapController> googleMapController = Completer();
  Rx<LatLng> startLatLng = LatLng(0, 0).obs;
  Rx<LatLng> endLatLng = LatLng(0, 0).obs;
  final zoom = 15.0.obs;

  @override
  void onInit() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
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
}
