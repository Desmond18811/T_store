import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/app_bar/app_bar.dart';
import 'package:t_store/common/wigdets/icons/t_circular_icon.dart';
import 'package:t_store/common/wigdets/layout%20/grid_layout.dart';
import 'package:t_store/features/authentication/contollers.onboarding/widgets/products_cards/products_card_vertical.dart';
import 'package:t_store/features/shop/screens/home.dart';
import 'package:t_store/utils/constants/sizes.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: Text(
            'Wishlist',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCircularIcon(
                icon: Iconsax.add,
                onPressed: () => Get.to(() => const HomeScreen()))
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(children: [
                  TGridLayout(
                      itemCount: 14,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ]))));
  }
}
