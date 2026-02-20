import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecomm_app/utils/constants/enums.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.facebook,
                backgroundColor: Colors.transparent,
                // overlayColor: dark
                //     ? TColors.white
                //     : TColors.black,
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 Products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
