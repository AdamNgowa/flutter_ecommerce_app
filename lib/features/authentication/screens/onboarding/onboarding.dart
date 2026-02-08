import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ecomm_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';

import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
