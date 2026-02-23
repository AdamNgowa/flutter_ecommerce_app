import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecomm_app/features/personalization/screens/profile/widgets/profile.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';
import 'package:flutter_ecomm_app/utils/constants/image_strings.dart';
import 'package:flutter_ecomm_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Adam Masha",
        style: Theme.of(
          context,
        ).textTheme.headlineMedium!.apply(color: TColors.white),
      ),
      subtitle: Text(
        TTexts.dumaEmail,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(ProfileScreen()),
        icon: Icon(Iconsax.edit_copy),
      ),
    );
  }
}
