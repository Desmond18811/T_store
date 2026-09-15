import 'package:flutter/material.dart'; // gives us PageController
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login.dart'; // gives us GetxController, Get.find(), .obs

class OnBoardingController extends GetxController {
  // holds all onboarding state/logic
  static OnBoardingController get instance =>
      Get.find(); // shortcut to the shared instance

//Variables
  final pageController =
      PageController(); // drives which page the PageView shows
  Rx<int> currentPageIndex = 0.obs; // reactive current-page number, starts at 0

  void updatePageIndicator(index) =>
      currentPageIndex.value = index; // fixed: update the value inside the Rx box, not the box itself

  void dotNavigationClick(index) {
    currentPageIndex.value = index; // correct way to update a reactive value
    pageController.jumpToPage(index); // snap PageView straight to that page
  }

  //move to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // 2 = last page (0,1,2 for 3 slides)
      Get.to(
          LoginScreen()); // not wired up yet, so tapping next here does nothing
    } else {
      int page = currentPageIndex.value + 1; //move to the next page
      pageController.jumpToPage(page);
    }
  }

  //jump currrent Page and move to the last one, we are having index of 2 because we have 3 dots and it woudl move to the last slide which is 3 on an array is 2
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2); // fixed: jumpTo() took a pixel offset, not a page index
    Get.to(LoginScreen()); // skip goes straight to the login screen
  }
}
