import 'package:babycare/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPress, required this.iconColor,
  });

  final VoidCallback onPress;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          IconButton(onPressed: onPress, icon: Icon(Iconsax.shopping_bag,color: iconColor,)),
          Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: TColor.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColor.white,fontSizeFactor: 0.8)),
              ),
            ),
          )
        ] );
  }
}