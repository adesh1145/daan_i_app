import 'package:flutter/material.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';

class HomeScreenDonateSelectAddress extends StatefulWidget {
  const HomeScreenDonateSelectAddress ({super.key});

  @override
  State<HomeScreenDonateSelectAddress > createState() => HomeScreenDonateSelectAddressState();
}

class HomeScreenDonateSelectAddressState extends State<HomeScreenDonateSelectAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Donate Now",
      ),

      body: Column(
        children: [
          
        ],
      ),
    );
  }
}