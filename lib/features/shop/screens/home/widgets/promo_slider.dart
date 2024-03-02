import 'package:babycare/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:babycare/common/widgets/images/t_round_images.dart';
import 'package:babycare/features/shop/controllers/home_controller.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.2,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)
          ),
          items: banner.map((url) => TRoundedImages(imgUrl: url)).toList(),
        ),
        const SizedBox(height: TSize.defaultSpace,),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banner.length; i++) TCircularContainer(width: 20,
                  height: 7,
                  margin: const EdgeInsets.all(8),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? TColor.primary: TColor.grey,),
              ],
            ),
          ),
        )
      ],

    );
  }
}
