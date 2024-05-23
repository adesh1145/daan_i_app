import 'dart:async';

import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/donar_module/home_screen/home_screen_donate.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';
import '../cust_profile_tab_screen/cust_profile_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <String> SliderImageList=[ 

    "assets/font/img1.jpg",
    "assets/font/img2.jpg",
    "assets/font/img3.jpg",
    "assets/font/img4.jpg",
  ]; 
  
  int totalDonation=50;
  //int OverallStreaks=100;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(

        tittle: "Home",
        titleStyle: AppStyle.roboto16w500,
        centerTitle: true,
        isBackBtnVisible: false,
      ),
       
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 6.h,
          ),

          CustomImageSlider(
            viewportFraction: .89,
            isAutoSlide: true,
            bannerImageList:<ImageSliderList> [
                    ImageSliderList(imgUrl:"https://www.shutterstock.com/image-photo/donate-wooden-letters-on-cork-600w-450955078.jpg"),
                    ImageSliderList(imgUrl: "https://img.freepik.com/free-vector/hand-drawn-flat-charity-event-twitch-banner_23-2149398133.jpg?w=1380&t=st=1715277203~exp=1715277803~hmac=86e9bc70d8a0f2520d40d55a9339256a3dc72b191f573f689a8d3d51396e907e"),
                    ImageSliderList(imgUrl: "https://img.freepik.com/free-vector/fundraising-event-template-design_23-2150806464.jpg?w=1380&t=st=1715277380~exp=1715277980~hmac=075d17aa38b567f6d2c83c07d3837c3eee1fbf4a611dffe0570001e8181915d"),
                    ImageSliderList(imgUrl: "https://as1.ftcdn.net/v2/jpg/04/42/50/10/1000_F_442501008_y9L3PGVgRlGSAt6wNvAJpd3GQ4aTtgUp.jpg"),
            ]
          
            ),

            SizedBox(
            height: 10.h,
           ),


           // Donate Now section //

           Padding(
            padding: EdgeInsets.symmetric(horizontal:10.w),
             child: CustomElevatedButton(
              onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomeDonateScreen ();
                }
                )
                );
              },
              padding: EdgeInsets.symmetric(vertical: 10.h),
              text: "Donate Now",
             ),
           ),

           SizedBox(
            height: 10.h,
           ),


          //! ----- Categoreis section ----->
           Container(
            margin: const EdgeInsets.only(left: 15,bottom:10),
            child: const Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
           ),
           
            Container(
              margin: const EdgeInsets.only(left: 15,right: 15),
              child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                         
              //! 1st category
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    InkWell(
                      child: Container(
                        decoration: const BoxDecoration(
                        color:Color.fromARGB(255, 245, 228, 248),
                        shape: BoxShape.circle,
                        ),
                        width: 60.w,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(image: AssetImage("assets/icons/freshFood_icon.png")),
                        ),  
                      ),
                    ),
                    const Text("Food"),
                   ],
                ),
                
                //! 2nd category
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  InkWell(
                      child: Container(
                        decoration: const BoxDecoration(
                        color:Color.fromARGB(255, 200, 244, 206),
                        shape: BoxShape.circle,
                        ),
                        width: 60.w,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(image: AssetImage("assets/icons/vegetable2_icon.png")),
                        ),  
                      ),
                    ),
                    const Text("Vegetables"),
                   ],
                ),

                //! 3rd category
                 Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                   InkWell(
                      child: Container(
                        decoration: const BoxDecoration(
                        color:Color.fromARGB(255, 250, 207, 176),
                        shape: BoxShape.circle,
                        ),
                        width: 60.w,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(image: AssetImage("assets/icons/cloth_icon.png")),
                        ),  
                      ),
                    ),
                    const Text("Clothes"),
                   ],
                ),


                //! 4th category
               Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                      InkWell(
                      child: Container(
                        decoration: const BoxDecoration(
                        color:Color.fromARGB(255, 226, 230, 173),
                        shape: BoxShape.circle,
                        ),
                        width: 60.w,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Image(image: AssetImage("assets/icons/others_icon.png")),
                        ),  
                      ),
                    ),
                    const Text("Others",style: TextStyle(fontWeight: FontWeight.w400),),
                   ],
                ),
              
              ],
              ),
            ),


          SizedBox(
            height: 10.h,
           ),
            //!--------------- Insight Section ---------->
            Expanded(
              child:
                Stack(
                  children:[
                  Container(
                   color:const Color.fromARGB(255, 241, 230, 244),
                    height:MediaQuery.of(context).size.height,
                  
                   child:  Row(
                    children: [
                  
                      //! 1st partition for insight part
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.9/2,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                              height:115.h ,
                              child: const Image(image: AssetImage("assets/icons/insight_icon.png"))
                              
                              ),
                  
                              const Text("Insights",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,letterSpacing: .5),
                              ),
                  
                              const Center(child: Text("Data-driven act of ",style: TextStyle(fontSize: 12),)
                              ),
                  
                               const Center(child: Text("kindness",style: TextStyle(fontSize: 12),)
                              ),  
                          ],
                        ),
                      ),
                  
                      //! 2nd part 
                      Expanded(
                        child:
                            GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount:2,
                            children: [
                  
                             //! 1st box
                              Container(
                                margin: const EdgeInsets.only(top: 20,left: 10,bottom: 3,right: 6),
                                decoration: BoxDecoration(
                                  boxShadow:const [

                                    BoxShadow(

                                    blurRadius: 1,
                                    )
                                  ] ,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                 
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 2),
                                      padding: const EdgeInsets.only(top: 10,),
                                      child: Text("${totalDonation}",style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Center(child: Text("     Total\n Donations",style:TextStyle(height: 1.1,fontSize: 13,fontWeight: FontWeight.w400))),
                                  ],
                                )
                              ),
                  
                              //! 2nd box
                              Container(
                                margin: const EdgeInsets.only(top: 20,left: 6,bottom: 3,right: 10),
                                decoration: BoxDecoration(
                                   boxShadow:const [
                                    BoxShadow(
                                    blurRadius: 1,
                                    )
                                  ] ,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                 
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 2),
                                      padding: const EdgeInsets.only(top: 10,),
                                      child: const Text("100",
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Center(child: Text("     Total\n Donations",style:TextStyle(height: 1.1,fontSize: 13,fontWeight: FontWeight.w400))),
                                  ],
                                )
                              ),

                              //! 3rd box
                              Container(
                                margin: const EdgeInsets.only(top: 8,left: 10,bottom: 15,right: 6),
                                decoration: BoxDecoration(
                                     boxShadow:const [
                                    BoxShadow(
                                    blurRadius: 1,
                                    )
                                  ] ,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                 
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 2),
                                      padding: const EdgeInsets.only(top: 10,),
                                      child: const Text("20",
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Center(child: Text(" Overall\n Streaks",style:TextStyle(height: 1.1,fontSize: 13,fontWeight: FontWeight.w400))),
                                  ],
                                )
                              ),


                              //! 4th box
                              Container(
                                margin: const EdgeInsets.only(top: 8,left: 6,bottom: 15,right: 10),
                                decoration: BoxDecoration(
                                     boxShadow:const [
                                    BoxShadow(
                                    blurRadius: 1,
                                    )
                                  ] ,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                 
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 2),
                                      padding: const EdgeInsets.only(top: 10,),
                                      child: const Text("100",
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Center(child: Text("     Total\n Donations",style:TextStyle(height: 1.1,fontSize: 13,fontWeight: FontWeight.w400))),
                                  ],
                                )
                              ),
                              
                            ],
                          ),
                      )
                    ],
                   ),
                  ),
                ],
                ),
            )

        ],
       ),
    );
  }
}