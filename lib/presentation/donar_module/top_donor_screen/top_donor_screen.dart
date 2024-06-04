import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/dashed_divider.dart';

class TopDonorScreen extends StatefulWidget {
  const TopDonorScreen({super.key});

  @override
  State<TopDonorScreen> createState() => _TopDonorScreenState();
}

class _TopDonorScreenState extends State<TopDonorScreen> {
  int rank = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          tittle: "Top Donor List",
        ),

        // body
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  top: 10.h,
                  left: 10.w,
                  right: 10.w,
                ),
                margin: EdgeInsets.only(
                  left: 15.w,
                  bottom: 13.h,
                  right: 15.w,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: Theme.of(context).colorScheme.background,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.r,
                        spreadRadius: 0.1,
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(0, 5),
                        color: Theme.of(context).colorScheme.onBackground,
                      )
                    ]
                    ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // for status part
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("Status"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w, top: 2.h),
                          child: CustomImageView(
                            width: 16.w,
                            height: 16.w,
                            svgPath: ("assets/images/success.svg"),
                          ),
                        ),

                        //for spacing
                        const Spacer(),

                        const Icon(
                          Icons.emoji_events,
                          color: Color.fromARGB(255, 246, 190, 24),
                          size: 25,
                        ),
                      ],
                    ),

                    // for dotted line
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, bottom: 10.h),
                      child: DashedDivider(
                        color: Theme.of(context).colorScheme.outline,
                        thickness: 1,
                        height: 1,
                      ),
                    ),

                    // for image part
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CustomImageView(
                              alignment: Alignment.topLeft,
                              radius: BorderRadius.circular(35.r),
                              height: 70.r,
                              width: 70.r,
                              imagePath: "assets/images/img1.jpg",
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.h, top: 3.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Donation",
                                    style: AppStyle.montserrat11textOne400,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "100",
                                    style: AppStyle.roboto13onBackgroundw500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Name section
                                    RichText(
                                      // for default color
                                      text: TextSpan(
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          children: <TextSpan>[
                                            // TextSpan(
                                            //   text: "Name : ",
                                            //   style: AppStyle
                                            //       .montserrat12textOne400,
                                            // ),
                                            TextSpan(
                                              text: "Shivam Kumar",
                                              style: AppStyle
                                                  .roboto13onBackgroundw500,
                                            )
                                          ]),
                                    ),

                                    const SizedBox(
                                      height: 2,
                                    ),
                                    // Email section
                                    RichText(
                                      text: TextSpan(
                                          style: const TextStyle(fontSize: 17),
                                          children: <TextSpan>[
                                            // TextSpan(
                                            //   text: "Email : ",
                                            //   style: AppStyle
                                            //       .montserrat12textOne400,
                                            // ),
                                            TextSpan(
                                              text: "shivamkmr084@gmail.com",
                                              style: AppStyle
                                                  .roboto13onBackgroundw500
                                                  .copyWith(color: Colors.blue),
                                            )
                                          ]),
                                    ),

                                    const SizedBox(
                                      height: 2,
                                    ),
                                    // Bio Section
                                    RichText(
                                      // for default color
                                      text: TextSpan(
                                        style: AppStyle.montserrat12textOne400,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Bio: ",
                                            style:
                                                AppStyle.roboto13onBackgroundw500,
                                          ),
                                          TextSpan(
                                            text:
                                                "Hello my name is shiavm kumar i am from meerut and curently i am pursuing b.tech degree.",
                                            style: AppStyle
                                                .montserrat12textOne400,
                                          )
                                        ],
                                      ),
                                    ),
                                  ])),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 2.h, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          Expanded(
                              child: Text(
                            "District : Meerut-250001",
                            style: AppStyle.roboto13onBackgroundw500.copyWith(
                                color: const Color.fromARGB(255, 233, 19, 3)),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
