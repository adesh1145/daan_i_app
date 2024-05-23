import 'package:daan_i_app/core/app_export.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/custom_image_view.dart';
import 'controller/cust_profile_tab_controller.dart';

// ignore: must_be_immutable
class CustProfileTabChangePasswordScreen extends GetWidget<CustProfileTabController> {
  CustProfileTabChangePasswordScreen({super.key});
  
  CustProfileTabController controller = Get.put(CustProfileTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(
        tittle: "Change Password",
      ),


      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
            obscureText: true,
             decoration: InputDecoration(
               prefixIcon: const Icon(Icons.lock),
              
               hintText: "Old Password",
               border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
               )
           
             ),
           ),
                    ),
                    
           //! 2nd textfield 
                  
          Padding(
                   padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                   child: Obx(() => TextFormField(

                   obscureText:controller.isTapped[0],
                   decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.lock),
                   suffixIcon:IconButton(
                  onPressed:controller.Tap1,

                 icon:controller.isTapped[0]?const Icon(Icons.visibility_off):const Icon(Icons.remove_red_eye_sharp),                 
               ),
               hintText: "New Password",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
               )
           
             ),
           ),
           )
                    ),
                  
        //! 3rd textfield 
          Padding(
           padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
           child: SizedBox(
             height: 100.h,
             child: Obx(() => TextFormField(
              obscureText: controller.isTapped[1],
               decoration:  InputDecoration(
               prefixIcon: const Icon(Icons.lock),
               suffixIcon:IconButton(
                 onPressed: controller.Tap2,
                 icon:Icon(controller.isTapped[1]?Icons.visibility_off:Icons.remove_red_eye_sharp),
                 
               ),
                 hintText: "Confirm Password",
               
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                 )
               ),
             ),)
           ),
                    ),
                
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CustomElevatedButton( 
           padding: EdgeInsets.symmetric(vertical: 10.w),
             onTap: () {

              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                      content: const Text("Are you sure",style: TextStyle(fontSize: 20),),
                      actions: [
                        // yes button
                      TextButton(onPressed: (){},
                      child:const Text("Yes",style: TextStyle(fontSize: 18))
                      ),

                      // no button 
                      TextButton(onPressed: (){

                        Get.back();
                      },
                      child:const Text("No",style: TextStyle(fontSize: 18))
                      ),

                      ],
                  
                  );
                });
             },
             
             text: "Update Password",
            ),
           )
           
          ],
        ),
      ),
    );
  }
}