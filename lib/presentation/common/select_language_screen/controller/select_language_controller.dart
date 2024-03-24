import '../../../../../core/app_export.dart';

class SelectLanguageController extends GetxController {
  RxBool loading = false.obs;
  RxList<LanguageModel> languageList = <LanguageModel>[
    LanguageModel(
        title: AppLocalizations.of(Get.context!)!.english,
        locale: const Locale("en", 'US')),
    LanguageModel(
        title: AppLocalizations.of(Get.context!)!.hindi,
        locale: const Locale('hi')),
  ].obs;
  Rx<Locale> selectedLanguage = const Locale("en", 'US').obs;

  void changeLanguage() {
    Get.updateLocale(selectedLanguage.value);
  }
}

class LanguageModel {
  LanguageModel({required this.title, required this.locale});
  final String title;
  final Locale locale;
}
