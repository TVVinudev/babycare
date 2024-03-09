import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/images/t_circular_images.dart';
import 'package:babycare/common/widgets/texts/product_price_text.dart';
import 'package:babycare/common/widgets/texts/product_title_text.dart';
import 'package:babycare/common/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/enums.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price nd sale Price
        Row(
          children: [
            TRoundedContainer(
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
            const SizedBox(width: TSize.spaceBtwItems,),
            
            Text('\$48',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSize.spaceBtwItems,),
            const TProductPrice(price: '60',isLarge: true,) ,
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItems / 1.5),
        ///title
        const TProductTitleText(text: 'Blue Bird Nike'),
        const SizedBox(width: TSize.spaceBtwItems / 1.5),

        ///Stock Status
        Row(
          children: [
            const TProductTitleText(text: 'Status'),
            Text('in Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItems / 1.5),

        ///Brand
        Row(
          children: [
            TCircularImage(image: TImages.product1,width: 32,height: 32,overLayColor: dark? TColor.white:TColor.black,),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSizes: TextSizes.medium,),
          ],
        )

      ],
    );
  }
}
