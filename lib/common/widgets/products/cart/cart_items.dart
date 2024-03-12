
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/common/widgets/texts/product_title_text.dart';
import 'package:babycare/common/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_function.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImages(
          imgUrl: TImages.product1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor:
          THelperFunction.isDarkMode(context)
              ? TColor.darkerGrey
              : TColor.light,
        ),

        const SizedBox(width: TSize.spaceBtwItems,),

        ///title and price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TProductTitleText(text: 'Blue bird nike',maxLine: 1,)),

              Text.rich(
                  TextSpan(

                      children: [
                        TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: '6',style: Theme.of(context).textTheme.bodyLarge),

                      ]
                  )
              )
            ],
          ),
        )

      ],
    );
  }
}
