import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/container/primary_header_container.dart';
import 'package:t_store/features/shop/widgets/home_app_bar.dart';
import 'package:t_store/common/wigdets/search_bar/search_container.dart';
import 'package:t_store/common/wigdets/text_widgets/text_widgets.dart';
import 'package:t_store/features/shop/widgets/home_categories.dart';
import 'package:t_store/features/shop/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwItems),

                // Search Bar
                TPaddingContainer(
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
                    ],
                  ),
                ),
              ],
            )),

            //Body with caurosel slider too.
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
