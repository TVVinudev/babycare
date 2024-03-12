import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$45',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$5',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$1',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,), Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Price',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$51',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),
      ],
    );
  }
}
