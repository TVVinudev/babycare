import 'package:babycare/common/styles/shadows.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/icons/Circular_icon.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/common/widgets/texts/product_price_text.dart';
import 'package:babycare/common/widgets/texts/product_title_text.dart';
import 'package:babycare/common/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ? TColor.darkerGrey : TColor.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColor.dark : TColor.light,
              child: Stack(
                children: [
                  const TRoundedImages(
                    imgUrl: TImages.product1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSize.sm,
                      backgroundColor: TColor.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColor.black),
                      ),
                    ),
                  ),

                  ///icon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    text: 'Blue Bird Nike',
                    smallSize: true,
                  ),
                  const SizedBox(height: TSize.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),

                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const TProductPrice(price: '45.8',),

                  Container(
                    decoration: const BoxDecoration(
                        color: TColor.dark,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSize.cardRadiusMd))),
                    child: const SizedBox(
                        width: TSize.iconLg * 1.2,
                        height: TSize.iconLg * 1.2,
                        child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColor.white,
                            ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



