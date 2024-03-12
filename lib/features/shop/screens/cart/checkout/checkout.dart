import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/success_screen/success_screen.dart';
import 'package:babycare/features/shop/screens/cart/checkout/widget/billing_address_section.dart';
import 'package:babycare/features/shop/screens/cart/checkout/widget/billing_amount_section.dart';
import 'package:babycare/features/shop/screens/cart/checkout/widget/billing_payment_section.dart';
import 'package:babycare/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:babycare/navigation_menu.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/products/cart/coupon/TCoupon.dart';

class TCheckoutScreen extends StatelessWidget {
  const TCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///cart Items
              const CartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///coupon
              const TCouponCode(),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              TRoundedContainer(
                shadowBorder: true,
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: dark ? TColor.black : TColor.white,
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    ///payment methods
                    TBillingPaymentsSection(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    ///address
                    TBillingAddressSection(),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfullyPayment,
              successTitle: 'Payment Success',
              successSubTitle: 'Your item will be shipped soon',
              onPress: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('checkout \$51'),
        ),
      ),
    );
  }
}
