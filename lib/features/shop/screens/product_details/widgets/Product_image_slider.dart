import 'package:babycare/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:babycare/common/widgets/icons/Circular_icon.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TCurvedEdgesWidgets(
      child: Container(
        color: dark ? TColor.darkerGrey : TColor.light,
        child: Stack(
          children: [
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSize.productImageRadius * 2),
                  child: Image(image: AssetImage(TImages.product1)),
                )),

            ///slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSize.spaceBtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundedImages(
                    width: 80,
                    backgroundColor: dark ? TColor.dark : TColor.white,
                    border: Border.all(color: TColor.primary),
                    padding: const EdgeInsets.all(TSize.sm),
                    imgUrl: TImages.product2,
                  ),
                ),
              ),
            ),

            const TAppBar(
              showBackArrow: true,
              action: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
