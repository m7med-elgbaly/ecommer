import 'package:ecommerce/features/authentication/screens/forget_con/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/singup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/texet_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.spaceBtwSections),
        child: Column(
          children: [
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
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(AppText.rememberMe),
                  ],
                ),

                const SizedBox(
                  width: AppSize.spaceBtwItems,
                ),

                /// Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(AppText.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: AppSize.spaceBtwSections,
            ),

            /// Sign IN Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(AppText.signIn)),
            ),
            const SizedBox(
              height: AppSize.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUPScreen()),
                  child: Text(
                    AppText.createAccount,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: dark ? AppColors.white : AppColors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
