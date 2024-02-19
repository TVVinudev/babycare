import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? TImages.darkAppLogo : TImages.lightAppLogo),
        ),
        Text(
          TTexts.logInTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSize.sm,
        ),
        Text(
          TTexts.logInSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}