import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/size.dart';
import '../../utils/helpers/helper_functaions.dart';
import '../widgets/custom_shapes/container/rounded_container.dart';
import 'brand_card_app.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSize.spaceBtwItems),
      padding: const EdgeInsets.all(AppSize.md),
      child: Column(
        children: [
          const BrandCardApp(showBorder: false),

          Row(
              children: images.map((image) => brandTapProductImageWidget(image, context)).toList()
          ),
          const SizedBox(height: AppSize.spaceBtwItems,),
        ],
      ),
    );
  }
  Widget brandTapProductImageWidget(String image, context){
    return Expanded(
      child: AppRoundedContainer(
        height: 100,
        backgroundColor: AppHelperFuncations.isDarkMode(context) ?  AppColors.darkGrey: AppColors.light,
        margin: const EdgeInsets.only(right: AppSize.sm),
        padding: const EdgeInsets.all(AppSize.md),
        child:  Image(fit: BoxFit.contain, image: AssetImage(image),),
      ),
    );
  }
}