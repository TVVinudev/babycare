
import 'package:babycare/common/widgets/chips/choice_chip.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/texts/product_price_text.dart';
import 'package:babycare/common/widgets/texts/product_title_text.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSize.md),
          backgroundColor: dark ? TColor.darkerGrey : TColor.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    text: 'Other Types',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSize.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TProductTitleText(
                        text: 'Price',
                        smallSize: true,
                      ),

                      Row(
                        children: [
                          ///Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSize.spaceBtwItems),

                          ///sales Price
                          const TProductPrice(price: '20'),
                        ],
                      ),

                      ///Stocks
                      Row(
                        children: [
                          const TProductTitleText(
                            text: 'Stock',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),

                      ///variation Description
                      const TProductTitleText(
                        text: 'Description section of the product',
                        smallSize: true,
                        maxLine: 4,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),

        const SizedBox(width: TSize.spaceBtwItems),

        ///Attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(text: 'Color',showActionButton: false,),
            const SizedBox(height: TSize.spaceBtwItems / 2),
           Wrap(
             spacing: 8,
             children: [
               TChoiceChip(text: 'Green',selected: true,onSelected: (value){},),
               TChoiceChip(text: 'Blue',selected: false,onSelected: (value){},),
               TChoiceChip(text: 'Red',selected: true,onSelected: (value){},),
             ],
           )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(text: 'Sizes'),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: '5',selected: true,onSelected: (value){},),
                TChoiceChip(text: '6',selected: false,onSelected: (value){},),
                TChoiceChip(text: '7',selected: true,onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}


