import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/texts/section_headings.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(text: 'Shipping Address',buttonText: 'change',onPress: (){},),
        Text('John',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(width: TSize.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text('+234 334 3234',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.location_city,color: Colors.grey,size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Expanded(child: Text('123 street,HBT Road,Mexico',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,))
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItems/2),
      ],
    );
  }
}
