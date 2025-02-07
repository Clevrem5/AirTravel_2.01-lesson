import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362,
      height: 4,
      decoration: BoxDecoration(
        color: AppColorsTravel.textColor.withValues(alpha: 10),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColorsTravel.textColor.withValues(alpha: 4),
          width: 2,
        ),
      ),
    );
  }
}
