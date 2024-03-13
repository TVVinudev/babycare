import 'package:babycare/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/products/product_card/product_card_vertical.dart';


import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/features/shop/screens/all_products/all_products.dart';
import 'package:babycare/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:babycare/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';

import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TPrimaryHeaderContainer(
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
                    ),
                    SizedBox(height: TSize.spaceBtwSections),
                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.all(TSize.defaultSpace),
                child: Column(
                  children: [
                    ///  carousel banner  ///
                    const TPromoSlider(banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],),
                    const SizedBox(
                      height: TSize.spaceBtwItems,
                    ),
                    TSectionHeading(text: 'Popular Products',onPress: () => Get.to(() => const AllProducts() )),
                    const SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    ///grid view///

                    TGridLayout(itemCount: 4,itemBuild: (_,index) => const TProductCardVertical(),),
                  ],
                ),
              ),


            ],
          ),
        ));
  }
}

