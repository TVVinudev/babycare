import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/common/widgets/texts/product_price_text.dart';
import 'package:babycare/common/widgets/texts/product_title_text.dart';
import 'package:babycare/common/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../icons/Circular_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSize.productImageRadius),
        color: dark ? TColor.darkerGrey : TColor.lightContainer,
      ),
      child: Row(
        children: [
          ///thumbnail image
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSize.sm),
            backgroundColor: dark ? TColor.dark : TColor.light,
            child: Stack(
              children: [
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImages(
                      imgUrl: TImages.product1,
                      applyImageRadius: true,
                    )),
                ///discount tag
                Positioned(
                  top: 10,
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

          ///Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSize.sm,left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(text: 'Blue Bird Nike',smallSize: true,),
                      SizedBox(height: TSize.spaceBtwItems/2,),
                      TBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///pricing
                     const Flexible(child: TProductPrice(price: '45')) ,
                      ///add to cart
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
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
