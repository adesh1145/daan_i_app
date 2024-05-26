import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/common/onboarding_screen/controller/oboarding_controller.dart';

class OnbordingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomSheet: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
            child: controller.isLastPage.value
                ? CustomElevatedButton(
                    onTap: () {
                      Get.offNamed(AppRoutes.loginScreen);
                    },
                    text: "Get Started",
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Skip button
                      TextButton(
                          onPressed: () {
                            Get.offNamed(AppRoutes.loginScreen);
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(fontSize: 15),
                          )),

                      // indicator
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                              controller.OnboardingImage.length, (index) {
                            return AnimatedContainer(
                              duration: const Duration(
                                milliseconds: 200,
                              ),
                              height: 10,
                              width: (index == controller.currentPage.value)
                                  ? 15
                                  : 10,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == controller.currentPage.value)
                                      ? const Color.fromARGB(255, 21, 80, 107)
                                      : Colors.grey),
                            );
                          })),

                      // Next button
                      TextButton(
                          onPressed: () {
                            controller.pageCOntroller.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(fontSize: 15),
                          )),
                    ],
                  ),
          ),
          body: Container(
            color: Colors.white,
            child: PageView.builder(
              onPageChanged: (index) {
                controller.isLastPage.value =
                    controller.OnboardingImage.length - 1 == index;
                controller.currentPage.value = index;
              },
              scrollDirection: Axis.horizontal,
              controller: controller.pageCOntroller,
              itemCount: controller.OnboardingImage.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 60,
                            right: 60,
                          ),
                          child: Image.asset(
                              controller.OnboardingImage[index]['image'])),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        controller.OnboardingImage[index]['title'],
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        controller.OnboardingImage[index]['description'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
