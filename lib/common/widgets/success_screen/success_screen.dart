import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/styles/spacing_styles.dart';

import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';
import 'package:flutter_ecomm_app/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });
  final image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //Image
              Image(
                // image: AssetImage(TImages.staticSuccessIllustration),
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //Title & Subtitle
              Text(
                // TTexts.yourAccountCreatedTitle,
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                // TTexts.yourAccountCreatedSubTitle,
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
