import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/login/login_divider.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/login/login_footer.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/login/login_form.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/login/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
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
              TLoginHeader(),

              /// Form
              TLoginForm(),

              /// Divider
              TFormDivider(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
