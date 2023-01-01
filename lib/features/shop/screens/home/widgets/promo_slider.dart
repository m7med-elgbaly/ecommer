
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/features/shop/controllers/home_contreller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/image/rounded_image.dart';
import '../../../../../utils/constants/size.dart';

class AppPromoSlider extends StatelessWidget {
  const AppPromoSlider({
    super.key,
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banner.map((url) => AppRoundedImage(imageUrl: url)).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            )),
        const SizedBox(
          height: AppSize.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banner.length; i++)
                  AppCircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AppColors.primary
                        : AppColors.grey,
                    margin: const EdgeInsets.only(right: 10,),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
