import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:babycare/common/widgets/images/t_circular_images.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/common/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/enums.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme
            .of(context)
            .textTheme
            .headlineMedium,),
        action: [
          TCartCounterIcon(onPress: () {},)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
        return [
          SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunction.isDarkMode(context) ? TColor
                  .black : TColor.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: TSize.spaceBtwItems,),
                    const TSearchContainer(text: 'Search',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,),
                    const SizedBox(height: TSize.spaceBtwSections,),
                    TSectionHeading(text: 'Brands', onPress: () {},),
                    const SizedBox(height: TSize.spaceBtwItems,),

                    TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuild: (_,index){
                      return  GestureDetector(
                        onTap: (){},
                        child: TRoundedContainer(
                          padding: const EdgeInsets.all(TSize.sm),
                          shadowBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: TCircularImage(image: TImages.categoryItem1,
                                  isNetworkImage: false,
                                  backgroundColor: Colors.transparent,
                                  overLayColor: dark ? TColor.white: TColor.black,),
                              ),

                              const SizedBox(height: TSize.spaceBtwItems,),

                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TBrandTitleWithVerifiedIcon(title: 'Kido',brandTextSizes: TextSizes.large,),
                                    Text('256 products',
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })



                  ],
                ),
              ))
        ];
      }, body: Container()),
    );
  }
}


