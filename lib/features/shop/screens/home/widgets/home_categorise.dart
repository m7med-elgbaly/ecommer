import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/app_vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';


class AppHomeCategorise extends StatelessWidget {
  const AppHomeCategorise({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return AppVerticalImageText(
            image: AppImages.sportIcon,
            title: 'Sport' ,
            onTap: () {},
          );
        },
      ),
    );
  }
}