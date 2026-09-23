import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final Color? color;
  final String title;
  final TextSizes brandTextSize;
  final TextAlign textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: brandTextSize == TextSizes.small
            ? Theme.of(context).textTheme.labelLarge!.apply(color: color)
            : brandTextSize == TextSizes.medium
                ? Theme.of(context).textTheme.titleMedium!.apply(color: color)
                : Theme.of(context).textTheme.titleLarge!.apply(color: color));
  }
}
