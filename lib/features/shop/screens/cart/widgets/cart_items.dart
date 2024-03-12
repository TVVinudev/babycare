import 'package:babycare/common/widgets/products/cart/cart_items.dart';
import 'package:babycare/common/widgets/products/rating/add_remove_button.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/product_price_text.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(height: TSize.spaceBtwSections,),
        itemCount: 1,
        itemBuilder: (_, index) =>  Column(
          children: [

            ///cart item
            const TCartItem(),
            if(showAddRemoveButtons) const SizedBox(height: TSize.spaceBtwItems,),

            ///price
            if(showAddRemoveButtons)
              const Row(
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
        ));
  }
}
