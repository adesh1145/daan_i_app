import '../../../../../core/app_export.dart';

class HomeScreenTabController extends GetxController {

   RxString? selecteCategory="".obs;
 
  final List<String> donateCategory = [
    "Food",
    "Clothes",
    "Money",
    "Others",
  ].obs;

}
