import 'package:babycare/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:babycare/common/widgets/images/t_circular_images.dart';
import 'package:babycare/common/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/enums.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        shadowBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: TCircularImage(image: TImages.categoryItem1,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overLayColor: dark ? TColor.white: TColor.black,),
            ),

            const SizedBox(height: TSize.spaceBtwItems,),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Kids',brandTextSizes: TextSizes.large,),
                  Text('256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}