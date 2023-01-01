import 'package:ecommerce/common/widgets/product/card/product_cart_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categorise.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/container/app_primary_header.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Header
            const AppPrimaryHeaderContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ///AppBar
                  HomeAppBar(),
                  SizedBox(
                    height: AppSize.spaceBtwSections,
                  ),

                  ///Searchbar
                  SearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: AppSize.spaceBtwSections,
                  ),

                  /// Categorise
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        /// Heading
                        AppSectionHeading(
                          title: 'Popular Categorise',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: AppSize.spaceBtwItems,
                        ),

                        /// Categorise
                        AppHomeCategorise(),
                      ],
                    ),
                  ),
                   SizedBox(height: AppSize.spaceBtwSections,),
                ],
              ),
            ),

            /// Body
            const Padding(
              padding: EdgeInsets.all(AppSize.defaultSpace),
              child: AppPromoSlider(
                banner: [
                  AppImages.promoBanner1,
                  AppImages.promoBanner2,
                  AppImages.promoBanner3,
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.spaceBtwSections,
            ),

            Padding(
              padding: const EdgeInsets.all(AppSize.defaultSpace),
              child: AppSectionHeading(
                title: 'Popular Products',
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: AppSize.spaceBtwItems,
            ),

            /// Popular products
            AppGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const AppProductCartVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
