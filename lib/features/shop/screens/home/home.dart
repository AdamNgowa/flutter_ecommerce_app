import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecomm_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecomm_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';

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
              child: Column(children: const [SizedBox(height: 20)]),
            ),
          ],
        ),
      ),
    );
  }
}
