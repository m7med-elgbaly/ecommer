import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/product/card/product_cart_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/appbar/appbar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: Text('WishList', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          AppCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.sm),
          child: Column(
            children: [
              AppGridLayout(itemCount: 4, itemBuilder: (_,index) => const AppProductCartVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
