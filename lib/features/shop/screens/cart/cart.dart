import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/products/cart/cart_items.dart';
import 'package:babycare/common/widgets/products/cart/rating/add_remove_button.dart';
import 'package:babycare/common/widgets/texts/product_price_text.dart';
import 'package:babycare/utils/constants/sizes.dart';

import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TAppBar(
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(height: TSize.spaceBtwSections,),
            itemCount: 8,
            itemBuilder: (_, index) =>  const Column(
                  children: [
                    TCartItem(),
                    SizedBox(height: TSize.spaceBtwItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ///extra space
                            SizedBox(width: 70,),
                            ///Add or remove button
                            TProductQuantityWithAddOrRemoveButton(),
                          ],
                        ),

                        TProductPrice(price: '45')

                      ],
                    )
                  ],
                )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: const Text('checkout \$180'),),
      ),
    );
  }
}


