import 'package:flutter/material.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/wigdets/images/t_circular_image.dart';
import 'package:t_store/common/wigdets/text_widgets/t_brand_title_with_verified_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: TCircularImage(
                  isNetworkImage: false,
                  image: TImages.clothIcon,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  overlayColor: dark ? TColors.white : TColors.black),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike Air',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
