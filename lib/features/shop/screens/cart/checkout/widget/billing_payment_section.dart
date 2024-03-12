import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';

class TBillingPaymentsSection extends StatelessWidget {
  const TBillingPaymentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(text: 'Payment Methods',buttonText: 'change',onPress: (){},),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColor.light:TColor.white,
              padding: const EdgeInsets.all(TSize.sm),
              child: const Image(image: AssetImage(TImages.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSize.spaceBtwItems/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
