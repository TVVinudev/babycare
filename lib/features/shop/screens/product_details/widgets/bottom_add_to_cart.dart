import 'package:babycare/common/widgets/icons/Circular_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColor.darkerGrey : TColor.light,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(TSize.cardRadiusLg),
            topLeft: Radius.circular(TSize.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColor.darkerGrey,
                width: 40,
                height: 40,
                color: TColor.white,
              ),
              const SizedBox(width: TSize.spaceBtwItems,),
              Text('2',style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: TSize.spaceBtwItems,),
              const TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColor.black,
                width: 40,
                height: 40,
                color: TColor.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: (){}, child:const Text('Add to cart'),style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(TSize.md),
            backgroundColor: TColor.black,
            side: BorderSide(color: TColor.black)
          ), )
        ],
      ),
    );
  }
}
