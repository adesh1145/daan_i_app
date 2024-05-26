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
                    ImageSliderList(imgUrl:"https://img.freepik.com/free-vector/donation-concept-illustration-idea-gift-support-charity_613284-1588.jpg?w=1060&t=st=1716531515~exp=1716532115~hmac=7507837f89583df2bf9b94a3d0aa3ad34a061311fb382ebaef5a733aeee77517"),
                    ImageSliderList(imgUrl: "https://img.freepik.com/free-vector/fundraising-event-template-design_23-2150806464.jpg?w=1380&t=st=1715277380~exp=1715277980~hmac=075d17aa38b567f6d2c83c07d3837c3eee1fbf4a611dffe0570001e8181915d"),
                    ImageSliderList(imgUrl: "https://img.freepik.com/free-vector/hand-drawn-charity-event-template-design_23-2149506441.jpg?t=st=1716531967~exp=1716535567~hmac=44da748dd347e70f0769abccfb08cb9690ec78bf2e0c37d8a99ab4e8e7eb86f6&w=1380"),
                    ImageSliderList(imgUrl: "https://img.freepik.com/free-vector/charity-flat-concept-with-smiling-volunteers-holding-donation-boxes-big-heart-vector-illustration_1284-79449.jpg?w=1380&t=st=1716532350~exp=1716532950~hmac=f012207cb5713ef1fee8648381e917df101f7e08bdc9727ae05769eaf0b8a7fa")
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
                          child: Image(
                            
                            image: AssetImage("assets/icons/money5.png"),
                           // color: Color.fromARGB(255, 219, 17, 17),
                        ),
                        ),  
                      ),
                    ),
                    const Text("Money"),
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