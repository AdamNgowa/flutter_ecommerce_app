import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecomm_app/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_ecomm_app/features/shop/product_details/widgets/product_details_image_slider.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TAppBar(
        showBackArrow: true,
        actions: [TCircularIcon(icon: Iconsax.heart, color: Colors.red)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            TProductImageSlider(),
            //Product Details Slider
          ],
        ),
      ),
    );
  }
}
