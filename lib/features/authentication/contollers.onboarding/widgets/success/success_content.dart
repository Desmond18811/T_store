import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSuccessContent extends StatelessWidget {
  const TSuccessContent({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Image
        Image(
            image: AssetImage(image),
            width: THelperFunctions.screenWidth() * 0.6),
        const SizedBox(height: TSizes.spaceBtwSections),

        //Title
        Text(title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center),
        //Subtitle
        const SizedBox(height: TSizes.spaceBtwSections),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        //Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: onPressed, child: const Text(TTexts.tContinue)),
        ),
      ],
    );
  }
}
