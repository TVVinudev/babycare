///Notes:
///use Material widget to add background color for tab
///to do that we need PreferredSizeWidget widget and that's why created custom class.

import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/devices/device_utility.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({super.key, required this.tabs});


  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Material(
      color: dark ? TColor.black:TColor.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSize.md),
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: TColor.primary,
          unselectedLabelColor: TColor.darkerGrey,
          labelColor: dark ? TColor.white : TColor.dark,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
