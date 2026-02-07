import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Variables
  //Update page index when page scroll
  void updatePageIndicator(int index) {}
  //Jump to the specific dot selected page
  void dotNavigationClick(int index) {}
  //Update current index and jump to the next page
  void nextPage() {}
  //update current index and jump to the last page
  void skipPage() {}
}
