import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/common/widgets/images/t_circular_images.dart';
import 'package:babycare/common/widgets/texts/section_headings.dart';
import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widget/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(image: TImages.user,width: 80,height: 80,),
                  TextButton(onPressed: (){}, child: const Text('change profile picture')),
                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSize.spaceBtwItems),
            const TSectionHeading(text: 'Profile Information', showActionButton: false,),
            const SizedBox(height: TSize.spaceBtwItems),
            TProfileMenu(title:'Name' ,value:'John',onTap: (){},),
            TProfileMenu(title:'User Name' ,value:'John231',onTap: (){},),

            const SizedBox(height: TSize.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSize.spaceBtwItems),

            const TSectionHeading(text: 'Personal Information', showActionButton: false,),
            const SizedBox(height: TSize.spaceBtwItems),
            TProfileMenu(title:'UserID' ,value:'13465',icon: Iconsax.copy,onTap: (){}, ),
            TProfileMenu(title:'Email' ,value:'abc@gmail.com',onTap: (){},),
            TProfileMenu(title:'Phone Number' ,value:'123 456 7890',onTap: (){},),
            TProfileMenu(title:'Gender' ,value:'Male',onTap: (){},),
            TProfileMenu(title:'DOB' ,value:'10 Jan 1997',onTap: (){},),

            const Divider(),
            const SizedBox(height: TSize.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: (){},
                child: const Text('Delete Account',style: TextStyle(color: Colors.red),),
              ),
            )
          ],
        ),
      ),
    );
  }
}


