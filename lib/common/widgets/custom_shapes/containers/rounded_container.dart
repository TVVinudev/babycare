import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = TSize.cardRadiusLg,
      this.child,
      this.shadowBorder = false,
      this.borderColor = TColor.borderPrimary,
      this.backgroundColor= TColor.white,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool shadowBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: shadowBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
