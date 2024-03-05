import 'package:babycare/common/widgets/brand/brand_ShowCase.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/product_card/product_card_vertical.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[
        Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///brands
              const TBrandShowCase(images: [TImages.product1,TImages.product2,TImages.product3],),
              const TBrandShowCase(images: [TImages.product1,TImages.product2,TImages.product3],),
              const SizedBox(height: TSize.spaceBtwItems,),
              TSectionHeading(text: 'you might like', showActionButton: true, onPress: (){},),
              const SizedBox(height: TSize.spaceBtwItems,),

              TGridLayout( itemCount: 4,itemBuild: (_,index)=> const TProductCardVertical())
            ],
          ),
        ),
      ]
    );
  }
}
