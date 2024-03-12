import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: TSize.spaceBtwItems,),
      itemBuilder: (_, index) => TRoundedContainer(
        shadowBorder: true,
        padding: const EdgeInsets.all(TSize.md),
        backgroundColor: dark ? TColor.dark : TColor.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                ///icon1
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: TSize.spaceBtwItems / 2,
                ),

                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///status and date
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColor.primary, fontWeightDelta: 1),
                      ),
                      Text('3 nov 2023',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                ///Icon button
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: TSize.iconSm,
                    ))
              ],
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///icon1
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: TSize.spaceBtwItems / 2,
                      ),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///status and date
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#234jk6]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ///icon1
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: TSize.spaceBtwItems / 2,
                      ),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///status and date
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('4 nov 2023',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
