import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecomm_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecomm_app/features/shop/screens/home/widgets/home_widgets.dart';
import 'package:flutter_ecomm_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: THomeAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  SizedBox(height: TSizes.appBarHeight * 2),
                  TSearchContainer(text: "Search in Store"),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        //Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
