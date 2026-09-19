import 'package:flutter/material.dart';
import 'package:t_store/common/wigdets/image_texts_widgets/vertical_widgets_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              textColor: TColors.white,
              onTap: () {},
            );
          }),
    );
  }
}
