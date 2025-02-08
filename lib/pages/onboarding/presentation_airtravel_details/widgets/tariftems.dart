import 'package:flutter/material.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/text_stayle.dart';

import '../features/travel_item_image.dart';

class TarifItems extends StatelessWidget {
  const TarifItems({
    super.key,
    required this.svg,
    required this.txt,
  });

  final String svg, txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconItems(
          icon: svg,
          width: 14,
          height: 13,
          color: Colors.white,
        ),
        SizedBox(width: 5),
        Textbox(
          text: txt,
          color: Colors.white,
          size: 10,
          weight: FontWeight.w500,
        ),
      ],
    );
  }
}
