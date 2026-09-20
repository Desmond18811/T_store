import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.icon,
    this.width = 40,
    this.height = 40,
    this.size = TSizes.lg,
    this.color,
    this.onPressed,
    this.backgroundColor,
  });

  final IconData icon;
  final double width, height, size;
  final Color? color;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (dark
                ? TColors.dark.withOpacity(0.9)
                : TColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: size, color: color),
      ),
    );
  }
}
