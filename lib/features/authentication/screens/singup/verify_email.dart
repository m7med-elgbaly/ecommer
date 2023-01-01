import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/texet_string.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll( ()=> const LoginScreen() ), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: <Widget>[
              /// Image
              Image(image: const AssetImage(
                AppImages.deliverEmail
              ),
              width: AppHelperFuncations.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSize.spaceBtwSections,),

              /// Title & SubTitle
              Text(AppText.confirEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: AppSize.spaceBtwItems,),
              Text('Support@any.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: AppSize.spaceBtwItems,),
              Text(AppText.confirEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: AppSize.spaceBtwSections,),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() =>  SuccessScreen(
                    image: AppImages.deliverEmailSuccess,
                      title: AppText.yourAccountCreatTitle,
                      subTitle: AppText.yourAccountCreatSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                  ),),
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(height: AppSize.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(AppText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
