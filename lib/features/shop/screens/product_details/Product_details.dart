import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:babycare/common/widgets/icons/Circular_icon.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/Product_image_slider.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:babycare/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product detail head
            TProductImageSlider(),

            ///product details
            Padding(
                padding: EdgeInsets.only(
                    right: TSize.defaultSpace,
                    left: TSize.defaultSpace,
                    bottom: TSize.defaultSpace),
            child: Column(
              children: [
                ///Ratings &share
                TRatingAnsSharing(),
                TProductMetaData()
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}


