import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/layouts/grid_layout.dart';
import 'package:babycare/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:babycare/common/widgets/products/sortable/sortable_products.dart';
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
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}


