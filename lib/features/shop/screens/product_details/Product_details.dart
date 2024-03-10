
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/Product_image_slider.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:babycare/features/shop/screens/product_review/product_review.dart';

import 'package:babycare/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product detail head
            const TProductImageSlider(),

            ///product details
            Padding(
                padding: const EdgeInsets.only(
                    right: TSize.defaultSpace,
                    left: TSize.defaultSpace,
                    bottom: TSize.defaultSpace),
            child: Column(
              children: [
                ///Ratings &share
                const TRatingAnsSharing(),
                const TProductMetaData(),
                ///Attributes
                const ProductAttributes(),
                const SizedBox(height: TSize.spaceBtwItems,),
                ///check out button
                SizedBox(width:double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text('check out'))),
                ///heading
                const TSectionHeading(text: 'Description',showActionButton: false,),
                const SizedBox(height: TSize.spaceBtwItems,),
                const ReadMoreText(
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  trimLength: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more...',
                  trimExpandedText: 'Less',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                ),
                ///Review section
                const Divider(),
                const SizedBox(height: TSize.spaceBtwItems,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(text: 'Review(199)',showActionButton: false,),
                    IconButton(
                        onPressed: ()=>Get.to(()=>const ProductReviewScreen()),
                        icon: const Icon(Iconsax.arrow_right_3,size: 18))
                  ],
                ),
                const SizedBox(height: TSize.spaceBtwSections,),

              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}


