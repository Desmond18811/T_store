import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/contollers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  final controller = OnBoardingController.instance;

  OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
            ),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
