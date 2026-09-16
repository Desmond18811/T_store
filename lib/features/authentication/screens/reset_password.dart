import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login.dart';
import 'package:t_store/features/authentication/screens/sucess.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessScreen(
      image: TImages.deliveredEmailIllustration,
      title: TTexts.changeYourPasswordTitle,
      subTitle: TTexts.changeYourPasswordSubTitle,
      onPressed: () => Get.offAll(() => const LoginScreen()),
    );
  }
}
