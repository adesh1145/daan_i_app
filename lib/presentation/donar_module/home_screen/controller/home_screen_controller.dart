import '../../../../../core/app_export.dart';

class HomeScreenTabController extends GetxController {

   RxnString selecteCategory=RxnString();
 
  final List<String> donateCategory = [
    "Food",
    "Clothes",
    "Money",
    "Others",
  ].obs;

}
