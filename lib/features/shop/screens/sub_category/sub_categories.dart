import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Premium'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///banner image
              const TRoundedImages(imgUrl: TImages.promoBanner3,width: double.infinity,applyImageRadius: true,),
              const SizedBox(height: TSize.spaceBtwSections,),
              ///Sub category
              Column(
                children: [
                  TSectionHeading(text: 'Sports Shirts',onPress: (){},),
                  const SizedBox(height: TSize.spaceBtwItems/2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context,index)=> const TProductCardHorizontal(),
                      itemCount: 3,
                      separatorBuilder: (_,__) =>  const SizedBox(width: TSize.spaceBtwItems),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
