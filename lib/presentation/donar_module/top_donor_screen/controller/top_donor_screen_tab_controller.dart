import '../../../../../core/app_export.dart';

class TopDonorScreenTabController extends GetxController {

   RxString? selecteCategory="".obs;
 
  final List<String> donateCategory = [
    "Food",
    "Clothes",
    "Money",
    "Others",
  ].obs;

}
