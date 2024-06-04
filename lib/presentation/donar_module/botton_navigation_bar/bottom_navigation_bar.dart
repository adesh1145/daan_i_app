import 'dart:io';
import 'package:daan_i_app/presentation/donar_module/history_screen/history-screen.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../core/app_export.dart';
import '../../ngo_module/dash_board_Screen/dashboard_screen.dart';
import '../../ngo_module/top_tab_navigation_bar/top_tab_navigation_bar.dart';
import '../cust_profile_tab_screen/cust_profile_tab_screen.dart';
import '../home_screen/home_screen.dart';
import '../top_donor_screen/top_donor_screen.dart';
import 'controller/bottom_navigation_bar_controller.dart';

class CustBottomNavigation extends StatelessWidget {
  const CustBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustBottomNavigationBarController>(
      init: CustBottomNavigationBarController(),
      builder: (controller) {
        return Obx(() => PopScope(
              canPop: false,
              onPopInvoked: (didPop) {
                if (controller.numberClick.value == 0) {
                  controller.lastTime.value = DateTime.now();
                  controller.numberClick.value++;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Press Back Button Again to Exit',
                      ),
                    ),
                  );
                  controller.canExit.value = false;
                } else if (controller.numberClick.value == 1 &&
                    DateTime.now().difference(controller.lastTime.value) <=
                        const Duration(seconds: 3)) {
                  exit(0);
                  // controller.canExit.value = true;
                  // return;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                    'Press Back Button Again to Exit',
                  )));
                  controller.numberClick.value = 0;
                  controller.lastTime.value = DateTime.now();
                  controller.numberClick.value++;
                }

                controller.canExit.value = false;
              },
              child: Scaffold(
                body: IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    //All main screen
                    HomeScreen(),
                    const HistoryScreen(),
                    const TopDonorScreen(),
                    const CustProfileTabScreen()
                  ],
                ),
                bottomNavigationBar: SalomonBottomBar(
                  currentIndex: controller.tabIndex.value,
                  onTap: controller.changeTabIndex,
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  selectedItemColor: Theme.of(context).colorScheme.primary,
                  items: [
                    /// Home
                    SalomonBottomBarItem(
                      icon: const Icon(Icons.home),
                      title: const Text("Home"),
                    ),

                    /// Likes
                    SalomonBottomBarItem(
                      icon: const Icon(Icons.history),
                      title: const Text("History"),
                    ),

                    /// Search
                    SalomonBottomBarItem(
                      icon: const Icon(Icons.search),
                      title: const Text("Top Doner"),
                    ),

                    /// Profile
                    SalomonBottomBarItem(
                      icon: const Icon(Icons.person),
                      title: const Text("Profile"),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
