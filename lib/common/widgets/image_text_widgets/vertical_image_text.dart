import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.text,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.white,
    this.onTap,
  });

  final String image, text;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            SizedBox(
                width: 55,
                child: Center(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.labelMedium!.apply(
                          color: textColor,
                        ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
