import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/size.dart';

class FormFooter extends StatelessWidget {
  const FormFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: AppSize.iconmd,
                height: AppSize.iconmd,
                image: AssetImage(
                  AppImages.googleLogo,
                )),
          ),
        ),
        const SizedBox(
          width: AppSize.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: AppSize.iconmd,
                height: AppSize.iconmd,
                image: AssetImage(
                  AppImages.facebookLogo,
                )),
          ),
        ),
      ],
    );
  }
}