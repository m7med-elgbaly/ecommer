import 'package:ecommerce/common/widgets/logindivider.dart';
import 'package:ecommerce/common/widgets/loginfooter.dart';
import 'package:ecommerce/features/authentication/screens/singup/widgets/signupform.dart';
import 'package:ecommerce/features/authentication/screens/singup/widgets/signupheader.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';


class SignUPScreen extends StatelessWidget {
  const SignUPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /// Title
              const SignUpHeader(),
              const SizedBox(height: AppSize.spaceBtwSections,),

              /// Form
              SignUpForm(dark: dark),

              const SizedBox(height: AppSize.spaceBtwSections,),
              /// Divider
              FormDivider(dark: dark,),
              const SizedBox(height: AppSize.spaceBtwSections,),

              /// Footer
              const FormFooter(),

            ],
          ),
        ),
      ),
    );
  }
}




