import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/app_bar/app_bar.dart';
import 'package:t_store/common/wigdets/container/primary_header_container.dart';
import 'package:t_store/common/wigdets/list_tiles/settings_menu_tiles.dart';
import 'package:t_store/common/wigdets/text_widgets/text_widgets.dart';
import 'package:t_store/common/wigdets/list_tiles/user_profile_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Picture
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///user Profile settings
                  const TUserProfileTitle(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                ],
              ),
            ),
            // body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    //Account title
                    const TSectionHeading(
                      title: 'Account Settings',
                      showActionButton: false,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    //Acount Setting

                    TSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subtitle: 'You can change your store location here',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),

                    TSettingsMenuTile(
                      icon: Iconsax.shopping_bag,
                      title: 'My Cart',
                      subtitle: 'Add, remove the orders from the cart ',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),

                    TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'You can track your orders here!',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),

                    TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Details',
                      subtitle: 'Manage your bank accounts',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),

                    TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'Coupons',
                      subtitle: 'You can track your coupons here!',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Manage your notifications',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),

                    TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage your account privacy',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSectionHeading(
                      title: 'App Settings',
                      showActionButton: false,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Storage',
                      subtitle: 'Manage your storage',
                      onTap: () {},
                      trailing: const Icon(Iconsax.arrow_right),
                    ),

                    TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Location',
                      subtitle: 'Get recommendations based on your location',
                      trailing: Switch(value: true, onChanged: (value) {}),
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Restrict content based on your age',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'Set Image Quality to be Seen',
                      subtitle: 'Manage your storage',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),

                    //Logout Button
                    const SizedBox(height: TSizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Logout'),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections * 2.5,
                    ),
                    const Center(
                      child: Text('Version 1.0'),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
