import '../core/app_export.dart';

TextScaler get customTextScaler =>
// TextScaler.linear(MediaQuery.of(Get.context!).textScaler);
    const TextScaler.linear(1);
