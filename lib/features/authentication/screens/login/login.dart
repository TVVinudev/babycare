import 'package:babycare/common/styles/spacing_style.dart';
import 'package:babycare/common/widgets/login_signup/Form_divider.dart';
import 'package:babycare/common/widgets/login_signup/social_button.dart';
import 'package:babycare/features/authentication/screens/login/widget/login_form.dart';
import 'package:babycare/features/authentication/screens/login/widget/login_header.dart';

import 'package:babycare/utils/constants/sizes.dart';
import 'package:babycare/utils/constants/text_strings.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpaceingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(),
              TLoginForm(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              TLoginDivider(
                text: TTexts.orSignInWith,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),
              TLoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
