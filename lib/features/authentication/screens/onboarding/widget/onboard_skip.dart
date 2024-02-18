import 'package:babycare/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: Text('Skip'),
        ));
  }
}
