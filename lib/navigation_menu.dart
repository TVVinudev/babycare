import 'package:babycare/features/shop/screens/home/home.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode? TColor.black : TColor.white,
          indicatorColor: darkMode? TColor.white.withOpacity(0.1) : TColor.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Iconsax.home,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.shop,
                ),
                label: 'Shop'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.heart,
                ),
                label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.user,
                ),
                label: 'Profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
   const HomeScreen(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    )
  ];
}
