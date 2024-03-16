import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/appbar/tabbar.dart';
import 'package:babycare/common/widgets/brand/tbrand_card.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/features/shop/screens/brands/all_brands.dart';
import 'package:babycare/features/shop/screens/store/widgets/category_tab.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            TCartCounterIcon(
              onPress: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunction.isDarkMode(context)
                      ? TColor.black
                      : TColor.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSize.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSize.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSize.spaceBtwSections,
                        ),
                        TSectionHeading(
                          text: 'Brands',
                          onPress: () => Get.to(()=>const AllBrandsScreen()),
                        ),
                        const SizedBox(
                          height: TSize.spaceBtwItems,
                        ),
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuild: (_, index) {
                              return const TBrandCard(
                                showBorder: false,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const TTabBar(tabs: [
                    Tab(
                      child: Text('shoes'),
                    ),
                    Tab(
                      child: Text('Girls'),
                    ),
                    Tab(
                      child: Text('Boys'),
                    ),
                    Tab(
                      child: Text('Kids'),
                    ),
                    Tab(
                      child: Text('Baby'),
                    ),
                  ]),
                )
              ];
            },
            body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
