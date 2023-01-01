import 'package:ecommerce/common/styles/spacing_styles.dart';

import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functaions.dart';







class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: <Widget>[
              /// Image
              Image(image:  AssetImage(
                  image,
              ),
                width: AppHelperFuncations.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSize.spaceBtwSections,),

              /// Title & SubTitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: AppSize.spaceBtwItems,),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: AppSize.spaceBtwSections,),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
