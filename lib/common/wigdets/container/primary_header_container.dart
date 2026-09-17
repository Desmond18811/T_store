import 'package:flutter/material.dart';
import 'package:t_store/common/wigdets/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/wigdets/custom_shapes/cirular_container.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                  width: 400,
                  height: 400,
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                  width: 400,
                  height: 400,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
