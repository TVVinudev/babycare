import 'package:babycare/common/widgets/brand/tbrand_card.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      shadowBorder: true,
      borderColor: TColor.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSize.defaultSpace),
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: true),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String img, context) {
    return Expanded(
        child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSize.md),
      margin: const EdgeInsets.only(right: TSize.sm),
      backgroundColor: THelperFunction.isDarkMode(context)
          ? TColor.darkerGrey
          : TColor.white,
      child: Image(
        image: AssetImage(img),
      ),
    ));
  }
}
