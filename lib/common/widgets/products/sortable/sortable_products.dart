import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../layouts/grid_layout.dart';
import '../product_card/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}