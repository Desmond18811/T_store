import 'package:flutter/material.dart';
import 'package:t_store/common/wigdets/app_bar/app_bar.dart';
import 'package:t_store/common/wigdets/app_bar/tab_bar.dart';
import 'package:t_store/common/wigdets/cart_counter/cart_counter.dart';
import 'package:t_store/common/wigdets/layout%20/grid_layout.dart';
import 'package:t_store/common/wigdets/search_bar/search_container.dart';
import 'package:t_store/common/wigdets/text_widgets/text_widgets.dart';
import 'package:t_store/common/wigdets/brands/t_store_cards.dart';
import 'package:t_store/features/shop/widgets/store/category_tabs.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5, // fixed — was 10, now matches the 5 tabs below
      child: Scaffold(
        appBar: TAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              TCartCounterIcon(
                onPressed: () {},
              )
            ]),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 440,
                backgroundColor: dark ? TColors.black : TColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      TSectionHeading(
                        title: 'Featured Brands',
                        buttonTitle: 'See All',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard(showBorder: true);
                          })
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Funiture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Shoes')),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              // 1. Sports
              TCategoryTabs(),
              TCategoryTabs(), TCategoryTabs(), TCategoryTabs(),
              TCategoryTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
