import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecomm_app/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_ecomm_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecomm_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecomm_app/features/shop/screens/home/home.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FavouriteScreeen extends StatelessWidget {
  const FavouriteScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.labelMedium),
        actions: [
          TCircularIcon(
            icon: Iconsax.add_copy,
            onPressed: () => Get.to(() => HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
