import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/container/primary_header_container.dart';
import 'package:t_store/common/wigdets/home_app_bar/home_app_bar.dart';
import 'package:t_store/common/wigdets/search_bar/search_container.dart';
import 'package:t_store/common/wigdets/text_widgets/text_widgets.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/home/home_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                const THomeAppBar(),
                const SizedBox(height: TSizes.spaceBtwItems),

                // Search Bar
                const TPaddingContainer(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                ),

                const SizedBox(height: TSizes.spaceBtwItems),
                //Categories
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const TSectionHeading(
                        //for the Categories header
                        title: 'Popular Categories',
                        buttonTitle: "See All",
                        showActionButton: false,
                        textColor: TColors.white,
                      ),

                      const SizedBox(height: TSizes.spaceBtwItems),

                      //Categories Horizantal list

                      THomeCategories(),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
