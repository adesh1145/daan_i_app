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
  int rank = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Top Donor List",
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            color: Colors.white,
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    alignment: Alignment.topLeft,
                    radius: BorderRadius.circular(35.r),
                    height: 70.r,
                    width: 70.r,
                    imagePath: "assets/images/img1.jpg",
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.amber,
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // for name section
                          RichText(
                            // for default color
                            text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Name :",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                          color: Color.fromARGB(
                                              255, 23, 152, 212))),
                                  TextSpan(
                                      text: "Shivam Kumar",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1)),
                                ]),
                          ),

                          const SizedBox(
                            height: 5,
                          ),

                          // Email section
                          RichText(
                            text: const TextSpan(
                                style: TextStyle(fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Email :",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 23, 152, 212),
                                      )),
                                  TextSpan(
                                      text: "shimr07714@gmail.com",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ]),
                          ),

                          const SizedBox(
                            height: 5,
                          ),
                          // for bio section

                          RichText(
                            // for default color
                            text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Bio:",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                          color: Color.fromARGB(
                                              255, 23, 152, 212))),
                                  TextSpan(
                                      text:
                                          "Hello my name is shiavm shivam kumar i am from siatpur and curently i am pursuing b.tech degree.",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.emoji_events,
                    color: Color.fromARGB(255, 246, 190, 24),
                    size: 25,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
