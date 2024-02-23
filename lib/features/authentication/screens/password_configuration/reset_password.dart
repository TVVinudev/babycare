import 'package:babycare/utils/constants/image_string.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImages.onBoardImage2),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBtwItems,),


              Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              Text(TTexts.changeYourPasswordSubTitte,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text(TTexts.submit)),
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){}, child: Text(TTexts.resendEmail)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
