import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart'; // icon pack, used for the arrow icon
import 'package:t_store/features/authentication/contollers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget { // circular "next" button, bottom-right
  final controller = OnBoardingController.instance;

  OnBoardingNextButton({ // not const, same reason as the other overlay widgets
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(), // advance one page
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), // makes the button perfectly round
            ),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
