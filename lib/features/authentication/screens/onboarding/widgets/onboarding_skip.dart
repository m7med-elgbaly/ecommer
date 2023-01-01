import 'package:ecommerce/features/authentication/controllers/onborarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/device/device_utlility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSize.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
