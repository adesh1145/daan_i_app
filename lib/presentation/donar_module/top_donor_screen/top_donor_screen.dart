import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopDonorScreen extends StatefulWidget {
  const TopDonorScreen({super.key});

  @override
  State<TopDonorScreen> createState() => _TopDonorScreenState();
}

class _TopDonorScreenState extends State<TopDonorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Top Donor List",
      ),

      body: ListView.builder(
      itemCount:2,
      itemBuilder:(context,index){
      return Card(
        child: Container(
          height: MediaQuery.of(context).size.height*.15,
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: Row(
            children: [
                  
                  CustomImageView(
                    alignment: Alignment.topLeft,
                    color: Colors.red,
                    placeHolder: "assets/images/logo.jpeg",
                    radius: BorderRadius.circular(50),
                    height: 90.r,
                    url:"assets/images/logo.jpeg",
                    fit: BoxFit.fill,
                    
                  ),
             
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    padding: const EdgeInsets.only(left: 10),
                    child: const SingleChildScrollView(
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name:Nitin kumar",),
                          Text("Bio:"),
                        ],
                      ),
                    ),
                  ),
                )
          
            ],
          ),
        ),
      );
      }
      ),
    );
  }
}