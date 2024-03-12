import 'package:babycare/common/widgets/icons/Circular_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddOrRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddOrRemoveButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSize.md,
          color: dark ? TColor.white:TColor.dark,
          backgroundColor: dark ? TColor.darkerGrey : TColor.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSize.spaceBtwItems,),
        const TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSize.md,
          color: TColor.white,
          backgroundColor: TColor.primary,
        ),
      ],
    );
  }
}