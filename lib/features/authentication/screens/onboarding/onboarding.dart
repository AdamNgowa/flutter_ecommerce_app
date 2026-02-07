import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';

import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';
import 'package:flutter_ecomm_app/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable pages
          PageView(
            children: [
              OnboardingPage(
                image: TImages.onboardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onboardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onboardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip button
          OnboardingSkip(),
          //Dot navigation (smooth page indicator)
          OnboardingDotNavigation(),
          //Circular button
        ],
      ),
    );
  }
}
