import 'package:babycare/features/authentication/screens/onboarding/widget/onboarding_next_page.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding/onboarding_controller.dart';
import 'widget/onboard_page.dart';
import 'widget/onboard_skip.dart';
import 'widget/onboarding_dot_navigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizondal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardPage(
                image: TImages.onBoardImage1,
                title: TTexts.onBoardingSubTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardPage(
                image: TImages.onBoardImage2,
                title: TTexts.onBoardingSubTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardPage(
                image: TImages.onBoardImage3,
                title: TTexts.onBoardingSubTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          const OnBoardSkip(),

          //Smooth page indicator
          const onBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

