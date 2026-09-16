import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:t_store/common/wigdets/login_signup/form_divider.dart';
import 'package:t_store/common/wigdets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/login/login_form.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/login/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/spacing_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight(),
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
