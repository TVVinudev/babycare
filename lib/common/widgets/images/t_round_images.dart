import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImages extends StatelessWidget {
  const TRoundedImages({
    super.key,
    this.width,
    this.height,
    this.border,
    this.applyImageRadius = true,
    required this.imgUrl,
    this.backgroundColor = TColor.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPress,
    this.borderRadius = TSize.md,
  });

  final double? width, height;
  final String imgUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPress;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(TSize.md),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
            child: Image(image: isNetworkImage ? NetworkImage(imgUrl) : AssetImage(imgUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
