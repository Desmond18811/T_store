import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login.dart';
import 'package:t_store/features/authentication/screens/sucess.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TVerifyEmailContent extends StatelessWidget {
  const TVerifyEmailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Image
        Image(
            image: const AssetImage(TImages.deliveredEmailIllustration),
            width: THelperFunctions.screenWidth() * 0.6),

        const SizedBox(height: TSizes.spaceBtwSections),

        //Title
        Text(
          TTexts.confirmEmail,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        //Email
        const SizedBox(height: TSizes.spaceBtwSections),
        Text(
          'support@codingwitht.com',
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        //Confirm Email Subtitle
        const SizedBox(height: TSizes.spaceBtwSections),
        Text(
          TTexts.confirmEmailSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        //Buttons
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.deliveredEmailIllustration,
                  title: TTexts.yourAccountCreatedTitle,
                  subTitle: TTexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(() =>
                      const LoginScreen()))), //We have to ad the home screen here
              child: const Text(TTexts.tContinue)),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        TextButton(
          onPressed: () {},
          child: const Text(TTexts.resendEmail),
        )
      ],
    );
  }
}
