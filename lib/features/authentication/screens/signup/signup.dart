import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecomm_app/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';

import 'package:get/get_utils/src/extensions/string_extensions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //Form
              TSignUpForm(),
              SizedBox(height: TSizes.spaceBtwSections),
              //Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),
              //Social buttons
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
