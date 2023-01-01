import 'package:ecommerce/common/appbar/appbar.dart';
import 'package:ecommerce/common/appbar/tabbar.dart';
import 'package:ecommerce/common/products_cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/product/card/product_cart_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/common/brands/brand_card_app.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';

import '../../../../common/brands/brand_show_case.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFuncations.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            AppCartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSize.spaceBtwItems),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search bar
                      const SizedBox(
                        height: AppSize.spaceBtwItems,
                      ),
                      const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: AppSize.spaceBtwSections / 2,
                      ),

                      /// Featured Brands
                      AppSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: AppSize.spaceBtwItems / 1.5,
                      ),

                      AppGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 70,
                          itemBuilder: (_, index) {
                            return const BrandCardApp(
                              showBorder: false,
                            );
                          }),
                    ],
                  ),
                ),
                bottom: const TabBarApp(
                  tab: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTabApp(),
              CategoryTabApp(),
              CategoryTabApp(),
              CategoryTabApp(),
              CategoryTabApp(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTabApp extends StatelessWidget {
  const CategoryTabApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSize.defaultSpace),
              child: Column(
                children: [
                  ///Grands
                  const BrandShowcase(
                    images: [
                      AppImages.productImage1,
                      AppImages.productImage2,
                      AppImages.productImage1
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.spaceBtwItems,
                  ),

                  ///Product
                  AppSectionHeading(
                    title: 'You might like',
                    onPressed: () {},
                  ),
                  // const SizedBox(
                  //   height: AppSize.spaceBtwItems / 4,
                  // ),
                ],
              ),
            ),
            AppGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const AppProductCartVertical()),
            const SizedBox(
              height: AppSize.spaceBtwItems,
            ),
          ],
        ),
      ],
    );
  }
}
