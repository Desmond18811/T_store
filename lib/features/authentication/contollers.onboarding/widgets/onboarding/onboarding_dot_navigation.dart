import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // gives us SmoothPageIndicator
import 'package:t_store/features/authentication/contollers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget { // the row of page-indicator dots
  final controller = OnBoardingController.instance;

  OnBoardingDotNavigation({ // not const, same reason as OnboardingSkip
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context); // pick a dot color visible in both themes
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController, // dots animate off real scroll position, not currentPageIndex
          onDotClicked: controller.dotNavigationClick,
          count: 3, // hardcoded to match the 3 onboarding slides
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark,
            dotHeight: 6,
          ),
        ));
  }
}
