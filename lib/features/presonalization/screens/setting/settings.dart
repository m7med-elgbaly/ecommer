import 'package:ecommerce/common/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/app_primary_header.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header
            AppPrimaryHeaderContainer(
                child: Column(
              children: [
                AAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: AppColors.white),
                  ),
                ),
                const SizedBox(height: AppSize.spaceBtwSections,),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
