import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/contollers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget { // the "Skip" button, top-right
  final controller = OnBoardingController.instance; // grabs the shared controller

  OnboardingSkip({ // not const: controller field is resolved at runtime, not compile time
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned( // Positioned only works directly inside a Stack
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(), // jump to last page
          child: const Text('Skip'),
        ));
  }
}
