import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/travel_item_image.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/sizes.dart';

import 'faster_time_conatiner.dart';

class FasterText extends StatelessWidget {
  const FasterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 8,
      children: [
        Row(
          spacing: 10,
          children: [
            IconItems(
              icon: "assets2/icons/discount.svg",
              width: 36 * AppSizes.wRatio,
              height: 36 * AppSizes.hRatio,
              color: Colors.white,
            ),
            Column(
              spacing: 5,
              children: [
                Textbox(
                  text: "Shoshiling",
                  color: Colors.white,
                  size: 24,
                  weight: FontWeight.bold,
                ),
                Textbox(
                  text: "20% gacha Chegirma",
                  color: Colors.white,
                  size: 12,
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
        Row(
          spacing: 10,
          children: [
            FasterTimeConatiner(
              count: "12",
            ),
            FasterTimeConatiner(count: "24"),
            FasterTimeConatiner(count: "30"),
          ],
        ),
      ],
    );
  }
}
