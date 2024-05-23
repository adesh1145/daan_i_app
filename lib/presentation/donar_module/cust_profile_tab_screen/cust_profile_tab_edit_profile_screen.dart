import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/core/utils/image_constant.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/controller/cust_profile_tab_controller.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/custom_button.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustProfileTabEditProfileScreen extends GetWidget<CustProfileTabController> {
  const CustProfileTabEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(
        tittle: "Edit Profile",
      ),


      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 135.w),
            child: CircleAvatar(
             
              radius: 40.r,
              child:  CustomImageView(
                imagePath: ImageConstant.appLogo,             
              ),
            ),
          ),
        
            //! 1st textfield 
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            child: TextFormField(
              decoration: InputDecoration(
               
                labelText: "Email",
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                )
            
              ),
            ),
          ),
          
          //! 2nd textfield 
        
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            
              ),
            ),
          ),
        
          //! 3rd textfield 
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            child: SizedBox(
              height: 150.h,
              child: TextFormField(
                maxLines: 6,
              
                decoration:  InputDecoration(
                  
                  hintText: "Write bio here........",
                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            ),
          ),
      
        Padding(
          padding: const EdgeInsets.all(10),
          child: CustomElevatedButton( 
            padding: EdgeInsets.symmetric(vertical: 10.w),
              onTap: () {
              },
              
              text: "Update Profile",
             ),
        ),
         
           
          ],
        ),
      ),
    );
  }
}