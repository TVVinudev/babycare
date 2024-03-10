import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/products/cart/rating/rating_bar_indicator.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/rating_progress_indicator.dart';
import 'package:babycare/features/shop/screens/product_review/widget/user_review_card.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Review And Rating'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Reviews and Ratings are verified and from people who use the same type of product that you use'),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///overall product details
            const TOverAllProductRating(),
            const TRatingBarIndicator(rating: 4.3,),
            Text('12,345',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),

            ///User review
            const UserReviewCard(),
            const UserReviewCard(),

          ],
        ),
      ),
    );
  }
}


