import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double radius;
  final bool showBorder;

  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.grey,
    this.borderWidth = 0,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
