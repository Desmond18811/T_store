import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/container/primary_header_container.dart';
import 'package:t_store/common/wigdets/layout%20/grid_layout.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/products_cards/products_card_vertical.dart';
import 'package:t_store/features/shop/widgets/home/home_app_bar.dart';
import 'package:t_store/common/wigdets/search_bar/search_container.dart';
import 'package:t_store/common/wigdets/text_widgets/text_widgets.dart';
import 'package:t_store/features/shop/widgets/home/home_categories.dart';
import 'package:t_store/features/shop/widgets/home/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwItems),

                // Search Bar
                TSearchContainer(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                ),

                SizedBox(height: TSizes.spaceBtwItems),
                //Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        //for the Categories header
                        title: 'Popular Categories',
                        buttonTitle: "See All",
                        showActionButton: false,
                        textColor: TColors.white,
                      ),

                      SizedBox(height: TSizes.spaceBtwItems),

                      //Categories Horizantal list

                      THomeCategories(
                        image: [
                          TImages.sportIcon,
                          TImages.clothIcon,
                          TImages.shoeIcon,
                          TImages.cosmeticsIcon,
                          TImages.animalIcon,
                          TImages.toyIcon,
                          TImages.furnitureIcon,
                          TImages.jeweleryIcon,
                          TImages.electronicsIcon,
                        ],
                        title: [
                          "Sports",
                          "Clothes",
                          "Shoes",
                          "Cosmetics",
                          "Animal",
                          "Toy",
                          "Furniture",
                          "Jewelery",
                          "Electronics"
                        ],
                      ),
                      SizedBox(height: TSizes.spaceBtwItems)
                    ],
                  ),
                ),
              ],
            )),

            //Body Section
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Section Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    buttonTitle: 'See All',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 16),

                  // Products Grid
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
