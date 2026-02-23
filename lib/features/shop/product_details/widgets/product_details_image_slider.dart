import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            //Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(TImages.productImage1)),
                ),
              ),
            ),
            //Image Slider
            Positioned(
              right: 0,
              left: TSizes.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(3),

                    backgroundColor: dark ? TColors.dark : TColors.white,
                    imageUrl: TImages.productImage1,
                  ),
                  separatorBuilder: (_, _) =>
                      SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
