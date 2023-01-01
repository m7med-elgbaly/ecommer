import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functaions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/loaders/loader.dart';

class AppFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: AppHelperFuncations.isDarkMode(Get.context!)
                  ? AppColors.dark
                  : AppColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  AppAnimationLoaderWidget(text: text, animation: animation)
                ],
              ),
            )));
  }
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }

}
