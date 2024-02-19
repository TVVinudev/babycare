
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: TSize.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSize.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(
                height: TSize.spaceBtwInputFields / 2,
              ),

              ///Remember_me and forget password

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(TTexts.rememberMe),
                    ],
                  ),

                  ///forget password
                  TextButton(
                      onPressed: () {},
                      child: Text(TTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///sign in Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(TTexts.signIn))),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              ///create account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Text(TTexts.createAccount))),

            ],
          ),
        ));
  }
}