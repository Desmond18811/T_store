import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

// Reusable padding for screens whose content sits below an app bar, so every
// screen doesn't have to repeat the same EdgeInsets.only(...) call by hand.
class TSpacingStyles {
  static EdgeInsetsGeometry paddingWithAppBarHeight({
    double top = TSizes.appBarHeight,
    double left = TSizes.defaultSpace,
    double bottom = TSizes.defaultSpace,
    double right = TSizes.defaultSpace,
  }) {
    return EdgeInsets.only(top: top, left: left, bottom: bottom, right: right);
  }
}
