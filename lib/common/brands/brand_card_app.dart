import 'package:flutter/material.dart';

import '../widgets/custom_shapes/container/rounded_container.dart';
import '../widgets/image/circular_image.dart';
import '../widgets/text/brand_title_with_verifiedIcon.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/enum.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/size.dart';

class BrandCardApp extends StatelessWidget {
  const BrandCardApp({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
            right: AppSize.xs, bottom: AppSize.sm),
        child: AppRoundedContainer(
          // padding: const EdgeInsets.symmetric(vertical: AppSize.md,horizontal: AppSize.sm),
          // margin: EdgeInsets.symmetric(horizontal: AppSize.xs, vertical: AppSize.sm),
          showBorder: showBorder,
          borderColor: AppColors.grey,
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              /// Icon
              const Flexible(
                child: CircularImage(
                  isNetworkImage: false,
                  backgroundColor: Colors.transparent,
                  // overPlayColor: AppHelperFuncations.isDarkMode(context) ? AppColors.black : AppColors.white,
                  image: AppImages.productImage2,
                ),
              ),
              const SizedBox(
                width: AppSize.spaceBtwItems / 2,
              ),

              ///
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const BrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSize: TextSizes.large,
                    ),
                    Text(
                      '256 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}