import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';

import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';
import 'package:get/route_manager.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //First name & last name
          Row(
            children: [
              //first name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields),
              //last name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          //Username
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          //Email
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          //Phone Number
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          //Password
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          //Terms and Conditions checkbox
          SizedBox(height: TSizes.spaceBtwInputFields),
          TTermsAndConditionsCheckbox(),
          //Sign Up button
          SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
