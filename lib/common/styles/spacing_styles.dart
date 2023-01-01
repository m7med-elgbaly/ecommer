import 'package:ecommerce/utils/constants/size.dart';
import 'package:flutter/widgets.dart';

class AppSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSize.appBarHight,
    left: AppSize.defaultSpace,
    bottom: AppSize.defaultSpace,
    right: AppSize.defaultSpace,
  );
}
