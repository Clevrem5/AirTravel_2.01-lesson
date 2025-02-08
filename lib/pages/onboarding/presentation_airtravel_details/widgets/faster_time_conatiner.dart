import 'package:flutter/material.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/constants.dart';
import 'package:lesson2_first/utils/sizes.dart';

class FasterTimeConatiner extends StatelessWidget {
  const FasterTimeConatiner({
    super.key,
    required this.count,
  });
  final String count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28 * AppSizes.wRatio,
          height: 37 * AppSizes.hRatio,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white.withValues(alpha: 0.5),
            border: Border.all(color: Colors.white, width: 1),
          ),
          child: Textbox(
            text: count,
            color: AppColorsTravel.textColor,
            size: 18,
            weight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
