import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/image/rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../icon/circular_icon.dart';
import '../../text/brand_title_with_verifiedIcon.dart';
import '../../text/product_price_text.dart';
import '../../text/product_text.dart';

class AppProductCartVertical extends StatelessWidget {
  const AppProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [AppShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(AppSize.productImageRadius),
            color: dark ? AppColors.darkerGrey : AppColors.white,
          ),
          child: Column(
            children: [
              /// Image , WishList Button
              AppRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(AppSize.sm),
                backgroundColor: dark ? AppColors.dark : AppColors.light,
                child: Stack(
                  children: [
                    const AppRoundedImage(
                      imageUrl: AppImages.productImage1,
                      applyImageRadius: true,
                    ),

                    /// Sale Tag
                    Positioned(
                      top: 12,
                      child: AppRoundedContainer(
                        radius: AppSize.sm,
                        backgroundColor: AppColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.sm, vertical: AppSize.sm),
                        child: Text(
                          '20%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: AppColors.black),
                        ),
                      ),
                    ),

                    /// Favourite Icon
                    const Positioned(
                        top: 0,
                        right: 0,
                        child: AppCircularIcon(
                          icon: Iconsax.heart5,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.spaceBtwItems / 2,
              ),

              /// Details
              const Padding(
                padding: EdgeInsets.only(left: AppSize.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductText(
                      title: 'Nike Air Shoes',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: AppSize.spaceBtwItems / 2,
                    ),
                    BrandTitleWithVerifiedIcon(title: 'Nike',),
                  ],
                ),
              ),

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Price
                  const Padding(
                    padding: EdgeInsets.only(left: AppSize.sm),
                    child: ProductPriceText(
                      price: '25',
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.cardRaduisMd),
                        bottomRight: Radius.circular(AppSize.cardRaduisMd),
                      ),
                    ),
                    child: const SizedBox(
                        height: AppSize.iconlg * 1.2,
                        width: AppSize.iconlg * 1.2,
                        child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: AppColors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


