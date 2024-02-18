import 'package:babycare/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        right: TSize.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor: dark ? TColor.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
