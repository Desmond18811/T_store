import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/wigdets/images/t_circular_image.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const TCircularImage(
          image: TImages.user,
          width: 50,
          height: 50,
          padding: 0,
        ),
        title: Text('Desmond Ubi',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white)),
        subtitle: Text('ubidesmond62@gmail.com',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: Colors.white)),
        trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit)));
  }
}
