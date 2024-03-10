import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/products/cart/rating/rating_bar_indicator.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.profileUser1),
                ),
                const SizedBox(
                  width: TSize.spaceBtwItems,
                ),
                Text(
                  'john',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        ///reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Text(
              '10 nov 2022',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        const ReadMoreText(
          ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'shoe less',
          trimCollapsedText: 'shoe more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColor.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColor.primary),
        ),

        const SizedBox(
          width: TSize.spaceBtwItems,
        ),
        ///company review
        TRoundedContainer(
          backgroundColor: dark? TColor.darkerGrey:TColor.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSize.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('nike md',style: Theme.of(context).textTheme.bodyLarge,),
                    Text('02 nov 2023',style: Theme.of(context).textTheme.bodyLarge,),
                  ],
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                const ReadMoreText(
                  ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'shoe less',
                  trimCollapsedText: 'shoe more',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColor.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColor.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBtwSections,
        ),
      ],
    );
  }
}
