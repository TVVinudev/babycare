import 'dart:ffi';

import 'package:babycare/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';

import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:babycare/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';

import 'package:babycare/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                THomeAppBar(),

                ///app bar
                SizedBox(height: TSize.spaceBtwSections),
                TSearchContainer(
                  text: 'Search',
                ),

                ///search bar
                SizedBox(
                  height: TSize.spaceBtwSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: TSize.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        text: 'Popular Category',
                        showActionButton: false,
                        textColor: TColor.white,
                      ),

                      /// section headings
                      SizedBox(
                        height: TSize.spaceBtwItems,
                      ),
                      THomeCategories(),

                      ///categories
                    ],
                  ),
                )
              ],
            ),
          ),

          ///----------------------------------------------------///

          Padding(
            padding: EdgeInsets.all(TSize.defaultSpace),
            child: TPromoSlider(banner: [
              TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3
            ],),
          )
        ],
      ),
    ));
  }
}

