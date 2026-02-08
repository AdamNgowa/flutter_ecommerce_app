import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/login/login.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Variables
  //   Controls a PageView widget.
  // Allows you to:
  // Jump to pages
  // Animate between pages
  // Listen to page changes
  final pageController = PageController();
  //   A reactive integer using GetX.
  // 0.obs means:
  // Initial value = 0
  // Wrapped in an Rx object so the UI can automatically rebuild when it changes.
  // Stores the currently visible onboarding page index.
  Rx<int> currentPageIndex = 0.obs;
  //Update page index when page scroll, Called when user swipes between pages
  void updatePageIndicator(index) => currentPageIndex.value = index;
  //Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
