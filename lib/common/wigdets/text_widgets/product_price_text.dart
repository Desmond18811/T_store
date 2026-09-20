import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = '₦',
    required this.price,
    this.isLarge = false,
    this.lineThrough = false,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
  });

  final String currencySign, price;
  final bool isLarge;
  final bool lineThrough;
  final int maxLines;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.sm),
      child: Text(
        currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                  decoration: lineThrough ? TextDecoration.lineThrough : null,
                )
            : Theme.of(context).textTheme.titleLarge!.apply(
                  decoration: lineThrough ? TextDecoration.lineThrough : null,
                ),
      ),
    );
  }
}
