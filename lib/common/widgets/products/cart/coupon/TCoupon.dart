
import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TRoundedContainer(
      shadowBorder: true,
      backgroundColor: dark ? TColor.dark : TColor.white,
      padding: const EdgeInsets.only(
          top: TSize.sm,
          bottom: TSize.sm,
          right: TSize.sm,
          left: TSize.md),
      child: Row(
        children: [
          ///TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a promo code?",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          ///Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark? TColor.white.withOpacity(0.5):TColor.dark.withOpacity(0.5),
                      backgroundColor: TColor.grey.withOpacity(0.2),
                      side: BorderSide(color:TColor.grey.withOpacity(0.1), )
                  ),
                  onPressed: () {}, child: const Text('Apply')))
        ],
      ),
    );
  }
}
