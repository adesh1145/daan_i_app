import '../../../../../core/app_export.dart';

class CustProfileTabController extends GetxController {
  RxList<bool> isTapped= [true,true].obs;

    RxString? selectedState="".obs;

  final RxList<String> statesName = [
    "Andaman & Nicobar Islands",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chandigarh",
    "Chhattisgarh",
    "Dadra & Nagar Haveli & Daman & Diu",
    "Delhi", 
    "Goa",
    "Gujarat", 
    "Haryana",
    "Himachal Pradesh",
    "Jammu & Kashmir"
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra"     , 
    "Manipur",
    "Meghalaya", 
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Panducherry",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand", 
    "Uttar Pradesh",              
    "West Bengal",
  ].obs;
  
  void Tap1(){
   isTapped[0]=!isTapped[0]; // opposite store hoga isse --> true to false just opposite 

  }
  void Tap2(){
   isTapped[1]=!isTapped[1]; // opposite store hoga isse --> true to false just opposite 

  }
}
