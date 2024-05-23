import '../../../../../core/app_export.dart';

class HistoryScreenTabController extends GetxController {

   RxString? selecteCategory="".obs;
 
  final List<String> donateCategory = [
    "Food",
    "Clothes",
    "Money",
    "Others",
  ].obs;

}
