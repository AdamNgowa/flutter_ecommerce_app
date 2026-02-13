import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecomm_app/features/shop/screens/home/widgets/home_appbar.dart';

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
