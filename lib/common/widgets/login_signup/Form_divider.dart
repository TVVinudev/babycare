import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TLoginDivider extends StatelessWidget {
  const TLoginDivider({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ?TColor.darkerGrey : TColor.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text),
        Flexible(
          child: Divider(
            color: dark ?TColor.darkerGrey : TColor.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}