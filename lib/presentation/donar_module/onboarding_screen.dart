import 'package:daan_i_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'signup_screen/cust_signup_screen.dart';

class OnbordingScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return OnboardingScreenState();
  }
}

class OnboardingScreenState extends State<StatefulWidget>{

PageController pageController =PageController();
int currentPage=0;
bool isLastPage=false;
List OnboardingImage=[

    {
      "image":"assets/images/onboardingscreen1.webp",
      "title":"Discover Food!",
      "description":"Donate surplus food effortlessly. connect with recepients in a few taps.",
    },

    {
      "image":"assets/images/onboardingscreen2.jpg",
      "title":"Donation Made Easy",
      "description":"Contribute easily, we handle pick-up ensuring NGOs recieve your food donations seamlessly.",
    },
    {
      "image":"assets/images/onboardingscreen3.webp",
      "title":"See Your Impact",
      "description":"Track your donations and witness your contributions impact the lives of those in need.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,

        padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 10.h),
        child:isLastPage
          ? CustomElevatedButton(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return const CustSignUpScreen();
              // }
              // )
              // );
            },
            text: "Get Started",
            )

          : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
             // Skip button 
                TextButton(
                onPressed: (){
                 pageController.jumpToPage(OnboardingImage.length-1);
                },
                child: const Text("Skip",style: TextStyle(fontSize: 15),)
            ),


            // indicator
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    OnboardingImage.length,
                    (index) {
                      return AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 200,
                        ),
                        height: 10,
                        width:  (index==currentPage) ? 15 :10,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index==currentPage)
                                ?  const Color.fromARGB(255, 21, 80, 107)
                                :  Colors.grey
                        ),
                      );
                    }
                    
                )
             ),
                
             // Next button
             TextButton(
             onPressed: (){
               pageController.nextPage(
                
               duration: const Duration(milliseconds: 400), 
               curve:Curves.easeIn);
             },
             child: const Text("Next",
             style: TextStyle(fontSize: 15),
             )

             ),
         
          ],
        ),
      ),
     
     body:Container(
      color: Colors.white,
       child: PageView.builder(
        onPageChanged: (index){
           isLastPage=OnboardingImage.length-1==index;
           currentPage=index;
           setState(() {
             
           });
        },

        scrollDirection: Axis.horizontal,
        controller:pageController,
        itemCount:OnboardingImage.length,
        itemBuilder: (context,index){
       
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
       
                Container(
                  margin: const EdgeInsets.only(left:60,right: 60,),
                  child: Image.asset(OnboardingImage[index]['image'])
                  ),
                  
                  const SizedBox(
                    height: 15,
                  ),
       
                Text(
                  OnboardingImage[index]['title'],
                  style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
      
                const SizedBox(
                  height: 10,
                ),
            
                Text(
                  OnboardingImage[index]['description'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          );
        },
        ),
     ) ,
    );
  }
}