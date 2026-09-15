import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart'; // reaches into GetX internals just for `Get`
import 'package:get/get_instance/src/extension_instance.dart'; // ...and just for `.put()`
import 'package:t_store/features/authentication/contollers.onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/onboarding/onboarding_page.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/onboarding/onboarding_skip.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/onboarding/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/onboarding/onboarding_next_button.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
        OnBoardingController()); // creates + registers the shared controller

    return Scaffold(
      body: Stack(
        // layers pages + overlay buttons on top of each other
        children: [
          //Horizonttal Scrollable Pages
          PageView(
            controller: controller
                .pageController, // let the controller drive this PageView
            onPageChanged:
                controller.updatePageIndicator, // fires on every swipe
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          //Skip Button
          OnboardingSkip(),

          //Dot Navigation
          OnBoardingDotNavigation(),

          //Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
