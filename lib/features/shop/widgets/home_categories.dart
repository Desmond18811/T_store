import 'package:flutter/material.dart';
import 'package:t_store/common/wigdets/image_texts_widgets/vertical_widgets_text.dart';
import 'package:t_store/utils/constants/colors.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key, required this.image, required this.title});

  final List<String> image;

  final List<String> title;

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
              image: image[index],
              title: title[index],
              textColor: TColors.white,
              onTap: () {},
            );
          }),
    );
  }
}
