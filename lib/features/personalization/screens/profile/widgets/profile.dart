import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecomm_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecomm_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/sizes.dart';
import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Profile"), showBackArrow: false),
      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: Text("Change Profile picture"),
                    ),
                  ],
                ),
              ),
              //Details
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: "Profile Information"),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Duma Technologies',
              ),
              TProfileMenu(
                title: 'Username',
                value: 'Adam Masha',
                onPressed: () {},
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'User ID', value: '45689', onPressed: () {}),
              TProfileMenu(
                title: 'E-mail',
                value: TTexts.dumaEmail,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+92-317-8059528',
                onPressed: () {},
              ),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                title: 'Date of Birth',
                value: '15 May, 2005',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
