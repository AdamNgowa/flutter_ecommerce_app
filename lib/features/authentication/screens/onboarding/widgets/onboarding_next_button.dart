import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/device/device_utility.dart';
import 'package:flutter_ecomm_app/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: OnboardingController.instance.nextPage,
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          iconSize: 28,
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
