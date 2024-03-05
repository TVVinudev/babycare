import 'package:babycare/features/authentication/screens/signup/verification_email.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(
                  width: TSize.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            ///user name
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.userName,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            ///email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            ///phone number
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.phoneNumber,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            ///password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            ///terms and conditions
            Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {})),
                const SizedBox(width: TSize.spaceBtwItems,),
                Text.rich(TextSpan(
                    children: [
                      TextSpan(text: '${TTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: '${TTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark? TColor.white : TColor.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark? TColor.white : TColor.primary,
                      )),
                      TextSpan(text: '${TTexts.and} ',style: Theme.of(context).textTheme.bodySmall,),
                      TextSpan(text: '${TTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark? TColor.white : TColor.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark? TColor.white : TColor.primary,
                      )),
                    ]
                ))
              ],
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),
            ///sign up button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.to(()=> const VerificationEmail()),child:const Text(TTexts.createAccount),),)
          ],
        ));
  }
}