

import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/controller/cust_profile_tab_controller.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/cust_profile_tab_change_password_screen.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/cust_profile_tab_edit_profile_screen.dart';
import 'package:daan_i_app/presentation/donar_module/home_screen/home_screen.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'cust_profile_tab_address_screen.dart';


class CustProfileTabScreen extends GetWidget<CustProfileTabController> {
   const CustProfileTabScreen({super.key});

   static const List<String> CustProfileTabList =["Edit Profile","Address","Change Password","Language","Logout"];
   
    static const List<IconData> CustProfileTabIconList = [
    Icons.manage_accounts,
    Icons.location_city,
    Icons.lock_open,
    Icons.language,
    Icons.logout,
    
  ];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   appBar: const CustomAppBar(
      tittle: "My Profile",
      isBackBtnVisible: false,
   ),
 
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h),
          child: CircleAvatar(
           
            radius: 40.r,
            child:  CustomImageView(imagePath: ImageConstant.appLogo,
            
            ),
          ),
        ),
    
      //  const Column(
      //     children: [
      //       Text("Shivam Kumar"),
      //       Text("9696599965")
      //     ],
      //   ),
    
    
        Container(
          decoration: const BoxDecoration() ,
           child: InkWell(
            onTap: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (context){
    
                return const CustProfileTabEditProfileScreen();
              }));
            },
             child: const ListTile(
              leading: Icon( Icons.manage_accounts,),
              title: Text("Edit Profile"),
              trailing: Icon(
                Icons.chevron_right),
           ),
           ),
         ),
          
        Container(
          decoration: const BoxDecoration() ,
           child: InkWell(
            onTap: (){
              Get.to(CustProfileTabAddressScreen());
              
            },
             child: const ListTile(
              leading: Icon(Icons.location_on,),
              title: Text("Address"),
              trailing: Icon(
                Icons.chevron_right),
           ),
           ),
         ),
     
        Container(
          decoration: const BoxDecoration() ,
           child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                
                return  CustProfileTabChangePasswordScreen();
              }
              )
              );
    
            },
             child: const ListTile(
              leading: Icon( Icons.lock_open,),
              title: Text("Change Password"),
              trailing: Icon(
                Icons.chevron_right),
           ),
           ),
         ),
    
        Container(
          decoration: const BoxDecoration() ,
           child: InkWell(
            onTap: (){
             
    
            },
             child: const ListTile(
              leading: Icon( Icons.language,),
              title: Text("Language"),
              trailing: Icon(
                Icons.chevron_right),
                          ),
           ),
         ),
    
        Container(
          decoration: const BoxDecoration() ,
           child: InkWell(
            onTap: (){
             
    
            },
             child: const ListTile(
              leading: Icon(Icons.logout,),
              title: Text("Logout"),
              trailing: Icon(
                Icons.chevron_right),
                          ),
           ),
         ),
        
        
      ],
    ),
      
    );
  }
}