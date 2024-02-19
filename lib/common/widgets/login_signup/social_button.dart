import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TLoginFooter extends StatelessWidget {
  const TLoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border:Border.all(color: TColor.grey),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(onPressed: (){}, icon: const Image(
            width: TSize.iconMd,
            height: TSize.iconMd,
            image: AssetImage(TImages.google),

          )),
        )
      ],
    );
  }
}