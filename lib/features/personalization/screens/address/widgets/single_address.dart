import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSize.md),
      width: double.infinity,
      shadowBorder: true,
      backgroundColor: selectedAddress ? TColor.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? TColor.darkerGrey : TColor.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? TColor.light : TColor.dark.withOpacity(0.7): null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge
              ),
              const SizedBox( height: TSize.sm/2,),
              const Text('2321 H, line 4,mexico',maxLines: 2, overflow: TextOverflow.ellipsis,),
              const SizedBox( height: TSize.sm/2,),
              const Text('+133 3555 6765',maxLines: 1, overflow: TextOverflow.ellipsis,softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
