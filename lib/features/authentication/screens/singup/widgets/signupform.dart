import 'package:ecommerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/texet_string.dart';
import '../verify_email.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;


  @override
  Widget build(BuildContext context) {
     Get.put(SignupController());
    final controller = SignupController.instance;
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      AppValidator.validateEmptyText('FirstName', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppText.fristName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.spaceBtwFilds,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastname,
                  validator: (value) =>
                      AppValidator.validateEmptyText('LastName', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.spaceBtwFilds,
          ),

          /// UserName
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                AppValidator.validateEmptyText('UserName', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceBtwFilds,
          ),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => AppValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: AppText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceBtwFilds,
          ),

          /// PhoneNumber
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AppValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: AppText.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceBtwFilds,
          ),

          /// Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => AppValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Iconsax.password_check,
                ),
                labelText: AppText.password,
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye)),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceBtwSections,
          ),

          /// Teras&Condition Checkbox
          Row(
            children: <Widget>[
              SizedBox(
                  height: 24,
                  width: 24,
                  child: Obx(() => Checkbox(
                      value: controller.privacyPolicy.value,
                      onChanged: (value) => controller.privacyPolicy.value =
                          !controller.privacyPolicy.value))),
              const SizedBox(
                width: AppSize.sm,
              ),
              Flexible(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '${AppText.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${AppText.privacyPolice} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? AppColors.white : AppColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? AppColors.white : AppColors.primary,
                          )),
                  TextSpan(
                      text: 'and',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${AppText.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? AppColors.white : AppColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? AppColors.white : AppColors.primary,
                          )),
                ])),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.spaceBtwSections,
          ),

          /// Sing Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(AppText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
