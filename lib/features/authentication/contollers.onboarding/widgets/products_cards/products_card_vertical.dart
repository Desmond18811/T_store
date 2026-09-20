import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/icons/t_circular_icon.dart';
import 'package:t_store/common/wigdets/images/t_rounded_image.dart';
import 'package:t_store/common/styles/rounded_container.dart';
import 'package:t_store/common/wigdets/text_widgets/product_price_text.dart';
import 'package:t_store/common/wigdets/text_widgets/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductCardShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Thumbnail, Discount Badge & Favourite Button
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const TRoundedImage(
                    imageUrl: TImages.productImage2,
                    applyImageRadius: true,
                  ),

                  /// -- Sale Badge
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  /// -- Favourite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            /// -- Detailed Content (Title & Brand Name with Verification Checkmark)
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Product Title
                  const TProductTitleText(
                    title: 'Sport Nike Air Max Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  /// Brand Name & Verification Checkmark
                  Row(
                    children: [
                      Text(
                        'Nike',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            /// -- Price Row & Add to Cart Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const TProductPriceText(price: '350.00'),

                /// Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: TColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
