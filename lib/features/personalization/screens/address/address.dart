import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/features/personalization/screens/address/add_new_address.dart';
import 'package:babycare/features/personalization/screens/address/widgets/single_address.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: TColor.primary,
        child: const Icon(Iconsax.add,color: TColor.white,),
      ),
      appBar: TAppBar(showBackArrow: true,
      title: Text('Addresses',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
             TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
          ],
        ),
        ),
      ),
    );
  }
}
