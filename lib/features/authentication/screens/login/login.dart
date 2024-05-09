import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/common/styles/spacing_styles.dart';
import 'package:shopping_app/common/widgets/login_signup/form_divider.dart';
import 'package:shopping_app/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title, subtitle
              const TLoginheader(),

              ///Form
              const TLoginForm(),

              ///Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
