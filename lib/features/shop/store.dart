import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/tabbar.dart';
import 'package:flutter_ecomm_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecomm_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecomm_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecomm_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                      TSectionHeading(
                        title: "Featured Brands",
                        onPressed: () {},
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: TTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
