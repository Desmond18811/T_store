import 'package:flutter/material.dart';
import 'package:t_store/common/wigdets/brands/brand_show_case.dart';
import 'package:t_store/common/wigdets/layout%20/grid_layout.dart';
import 'package:t_store/common/wigdets/text_widgets/text_widgets.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/products_cards/products_card_vertical.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCategoryTabs extends StatelessWidget {
  const TCategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --Brands
              const TBrandShowCase(
                image: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3
                ],
              ),
              const TBrandShowCase(
                image: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3
                ],
              ),
              //Products
              TSectionHeading(
                title: 'You might like this',
                showActionButton: true,
                buttonTitle: 'see more ',
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              //PRODUCTS
              TGridLayout(
                  itemCount: 12,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
