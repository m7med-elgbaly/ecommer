import 'package:ecommerce/features/authentication/controllers/onborarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/device/device_utlility.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDatNav extends StatelessWidget {
  const OnBoardingDatNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: AppDeviceUtils.getBottimNavigationBarHeight() + 25,
        left: AppSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? AppColors.light : AppColors.dark,
              dotHeight: 6),
        ));
  }
}
