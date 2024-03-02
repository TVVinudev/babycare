import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColor.black.withOpacity(0.8)
                : TColor.white.withOpacity(0.8),
      ),
      child: IconButton(onPressed: onPressed, icon:  Icon(icon,color: color,size: size,)),
    );
  }
}
