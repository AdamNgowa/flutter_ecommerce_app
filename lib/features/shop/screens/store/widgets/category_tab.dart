import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/brands/brand_show_case.dart';
import 'package:flutter_ecomm_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecomm_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage1,
                  TImages.productImage1,
                ],
              ),
              //Products
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                title: "You might also like",
                showActionButton: true,
                onPressed: () {},
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => TProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
