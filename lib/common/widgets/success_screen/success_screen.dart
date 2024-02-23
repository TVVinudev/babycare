
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.successTitle, required this.successSubTitle});

  final String image;
  final String successTitle;
  final String successSubTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBtwItems,),


              Text(successTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              Text(successSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text(TTexts.labelContinue)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
