import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Products',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Drop Down
              DropdownButtonFormField(
                  decoration:
                      const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  onChanged: (value) {},
                  items: [
                    'Name',
                    'Higher price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Popular'
                  ].map((option) => DropdownMenuItem(value: option ,child: Text(option))).toList()),
              const SizedBox(height: TSize.spaceBtwSections,),
              TGridLayout(
                  itemCount: 11,
                  itemBuild: (_,index) => const TProductCardVertical()
              )
            ],
          ),
        ),
      ),
    );
  }
}
