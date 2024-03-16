import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/brand/tbrand_card.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/features/shop/screens/brands/brand_products.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Brands',
          style: Theme.of(context).textTheme.headlineMedium,),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///title
              const TSectionHeading(text: 'Brands',showActionButton: false,),
              const SizedBox(height: TSize.defaultSpace,),
              ///Brands
              TGridLayout(
                  itemCount: 6,
                  mainAxisExtent: 80,
                  itemBuild: (_,index) => TBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(() => const BrandProducts()),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
