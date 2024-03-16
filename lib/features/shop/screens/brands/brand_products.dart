import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/brand/tbrand_card.dart';
import 'package:babycare/common/widgets/products/sortable/sortable_products.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(height: TSize.spaceBtwSections,),
              TSortableProducts()
            ],
          ),
        ),
      )
    );
  }
}
