import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/success/success_content.dart';
import 'package:t_store/utils/helpers/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
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
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyles.paddingWithAppBarHeight(),
            child: TSuccessContent(
              image: image,
              title: title,
              subTitle: subTitle,
              onPressed: onPressed,
            ),
          ),
        ));
  }
}
