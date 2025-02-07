import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class ContainerPackage extends StatelessWidget {
  const ContainerPackage({super.key,
    required this.width,
    required this.height,
    required this.alpha,
    required this.borderColor,
  });
  final double width,height,alpha;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 7,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: borderColor.withValues(alpha: alpha),
        ),
      ),
    );
  }
}
