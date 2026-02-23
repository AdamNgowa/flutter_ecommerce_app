import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          //brand with product count
          TBrandCard(showBorder: false),
          //Brand top 3 product images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkGrey
          : TColors.light,
      margin: EdgeInsets.only(right: TSizes.sm),
      padding: EdgeInsets.all(3),
      child: TRoundedImage(
        imageUrl: TImages.productImage1,
        applyImageRadius: true,
      ),
    ),
  );
}
