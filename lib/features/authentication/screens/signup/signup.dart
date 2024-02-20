import 'package:babycare/common/widgets/login_signup/Form_divider.dart';
import 'package:babycare/common/widgets/login_signup/social_button.dart';
import 'package:babycare/features/authentication/screens/signup/widget/signupform.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

            ///Title
            Text(TTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSize.spaceBtwSections,),

            ///form
            TSignupForm(),

            const SizedBox(height: TSize.spaceBtwItems,),

            ///divider
            TFormDivider(text: TTexts.orSignInWith.capitalize!),

            const SizedBox(height: TSize.spaceBtwItems,),
            ///Social button
            TSocialButtons()
          ]),
        ),
      ),
    );
  }
}
