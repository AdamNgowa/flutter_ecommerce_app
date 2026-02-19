import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecomm_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecomm_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/enums.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.labelMedium),

        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: dark ? TColors.dark : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    //search bar
                    SizedBox(height: TSizes.spaceBtwItems),
                    TSearchContainer(
                      text: "Search in store",
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Featured brands
                    TSectionHeading(title: "Featured Brands", onPressed: () {}),
                    SizedBox(height: TSizes.spaceBtwItems / 1.5),
                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TRoundedContainer(
                            padding: EdgeInsets.all(TSizes.sm),
                            showBorder: true,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TBrandTitleWithVerifiedIcon(
                                        title: "Text",
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        "256 Products",
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
