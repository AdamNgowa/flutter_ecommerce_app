import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_ecomm_app/features/shop/models/home_controller.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: [
            TRoundedImage(imageUrl: TImages.promoBanner1),
            TRoundedImage(imageUrl: TImages.promoBanner2),
            TRoundedImage(imageUrl: TImages.promoBanner3),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            children: [
              for (int i = 0; i < 3; i++)
                TCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
