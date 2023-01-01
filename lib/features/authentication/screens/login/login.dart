import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/logindivider.dart';
import '../../../../common/widgets/loginfooter.dart';
import 'Widgts/loginform.dart';
import 'Widgts/loginheader.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            /// Logo , Title & Sub Title
            children: [
              LoginHeader(dark: dark),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dark: dark),

              const SizedBox(
                height: AppSize.spaceBtwItems,
              ),

              /// Footer
              const FormFooter(),
            ],
          ),
        ),
      ),
    ));
  }
}








