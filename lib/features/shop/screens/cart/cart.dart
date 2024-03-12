import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/features/shop/screens/cart/checkout/checkout.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/cart_items.dart';


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
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        ///items in cart
        child: CartItems(),
      ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=>Get.to(()=>const TCheckoutScreen()),
          child: const Text('checkout \$45'),),
      ),
    );
  }
}


