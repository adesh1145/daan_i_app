import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/ngo_module/order_screen/order_screen.dart';
import 'package:daan_i_app/presentation/ngo_module/top_tab_navigation_bar/controller/top_tab_navigation_bar_controller.dart';

import '../dash_board_Screen/dashboard_screen.dart';
import '../more_tab_screen/ngo_profile_tab_screen.dart';
import '../ngo_signup_screen/ngo_first_step_signup_screen.dart';


class TopTabNavigationBarScreen extends GetWidget<TopTabNavigationBarController>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
         appBar: AppBar(
          title: Text("Daan - i NGO"
          ,style: TextStyle(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          bottom : const TabBar(
                tabs: <Tab>[
                  Tab( text: 'Order'),
                  Tab( text: 'Dashboard'),
                  Tab( text: 'More'),
                ],
              ),
           ),

        body: TabBarView(
          children:[
           
           NgoFirstStepSignUpScreen(),
           DashBoardScreen(),
           const NgoProfileTabScreen(),

        ]
      )
      ),
    );
  }
}