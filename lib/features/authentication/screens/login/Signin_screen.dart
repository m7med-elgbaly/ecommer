import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/texet_string.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: AppSpacingStyles.paddingWithAppBarHeight,
        child: Column(

          children: <Widget>[
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  height: 150,
                  image: AssetImage( dark? AppImages.appLogo : AppImages.appLogo),
                fit: BoxFit.contain,
                ),
                Text(
                  AppText.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: AppSize.sm,
                ),
                Text(
                  AppText.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),

            Form(child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.spaceBtwSections,
              ),
              child: Column(
                children: <Widget>[
                  /// Email
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.direct_right,
                      ),
                      labelText: AppText.email,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.spaceBtwFilds,
                  ),
                  /// password
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.password_check,
                      ),
                      labelText: AppText.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.spaceBtwFilds / 2,
                  ),

                  /// remember me & Forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Row(
                       /// Remember me
                       children: [
                         Checkbox(value: true, onChanged: (value) {}),
                         const Text(AppText.rememberMe),
                       ],
                     ),
                     const SizedBox(
                       width: 50,
                     ),
                     /// Forget Password
                     TextButton(
                         onPressed: (){},
                         child: const Text(AppText.forgetPassword)),

                     const SizedBox(width: AppSize.spaceBtwItems),

                     /// Sign IN Button

                   ]
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppText.signIn)),
                  ),
                ],
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
