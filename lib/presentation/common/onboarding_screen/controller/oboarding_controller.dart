import '../../../../core/app_export.dart';

class OnboardingController extends GetxController {
  RxInt currentPage = 0.obs;
  RxBool isLastPage = false.obs;
  PageController pageCOntroller = PageController(initialPage: 0);
  List OnboardingImage = [
    {
      "image": "assets/images/onboardingscreen1.webp",
      "title": "Discover Food!",
      "description":
          "Donate surplus food effortlessly. connect with recepients in a few taps.",
    },
    {
      "image": "assets/images/onboardingscreen2.jpg",
      "title": "Donation Made Easy",
      "description":
          "Contribute easily, we handle pick-up ensuring NGOs recieve your food donations seamlessly.",
    },
    {
      "image": "assets/images/onboardingscreen3.webp",
      "title": "See Your Impact",
      "description":
          "Track your donations and witness your contributions impact the lives of those in need.",
    }
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
