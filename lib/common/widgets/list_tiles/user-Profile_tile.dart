
import 'package:babycare/common/widgets/images/t_circular_images.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.user, width: 50, height: 50, padding: 0,),
      title: Text('John',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColor.white)),
      subtitle: Text('abc@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColor.white)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColor.white,)),
    );
  }
}