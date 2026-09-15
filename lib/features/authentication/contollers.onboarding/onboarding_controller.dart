import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

//Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //move to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1; //move to the next page
      pageController.jumpToPage(page);
    }
  }

  //jump currrent Page and move to the last one, we are having index of 2 because we have 3 dots and it woudl move to the last slide which is 3 on an array is 2
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
