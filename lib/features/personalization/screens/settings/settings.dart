import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:babycare/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:babycare/common/widgets/list_tiles/user-Profile_tile.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/features/personalization/screens/profile/profile.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColor.white)),
                  ),
                  TUserProfileTile(onPress: ()=> Get.to(() => const ProfileScreen()),),
                  const SizedBox(height: TSize.spaceBtwSections),
                ],
              ),
            ),
            //body
           Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  //Account settings
                  const TSectionHeading(text: 'Account Settings',showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  TSettingMenuTile(icon: Iconsax.safe_home, title: 'My Address', subtitle: 'Set shopping delivery address',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My cart', subtitle: 'Add, remove product and move checkout',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subtitle: 'In-progress and complete orders',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered Bank account',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of All the discount Coupons',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.notification, title: 'Notification', subtitle: 'Set any kind of notification',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and Connected accounts',onTap: (){},),
                  //app settings
                  const SizedBox(height: TSize.spaceBtwSections,),
                  const TSectionHeading(text: 'App Settings',showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  TSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'upload data to your cloud database',onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.location, title: 'Location', subtitle: 'set recommended based on location',trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingMenuTile(icon: Iconsax.security_user, title: 'Safe mode', subtitle: 'search result is safe for all ages',trailing: Switch(value: false, onChanged: (value){}),),
                  TSettingMenuTile(icon: Iconsax.image, title: 'HD image quality', subtitle: 'set image quality to be seen',trailing: Switch(value: true, onChanged: (value){}),),

                  //logout button
                  const SizedBox(height: TSize.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSize.spaceBtwSections * 2),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
