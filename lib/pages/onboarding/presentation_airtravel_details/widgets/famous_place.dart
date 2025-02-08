import 'package:flutter/material.dart';
import 'package:lesson2_first/utils/constants.dart';

import 'famous_plase_stack.dart';
import 'text_stayle.dart';

class FamousPlace extends StatelessWidget {
  const FamousPlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Textbox(
            text: "Mashxur Joylar",
            color: AppColorsTravel.textColor,
            size: 20,
            weight: FontWeight.bold,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 15,
              children: [
                FamousPlaseStack(
                    image: 'assets2/images/places/paris.png', city: "Parij"),
                FamousPlaseStack(
                    image: 'assets2/images/places/makka.png', city: "Makka"),
                FamousPlaseStack(
                    image: 'assets2/images/places/malayziya.png',
                    city: "Malayziya"),
                FamousPlaseStack(
                    image: 'assets2/images/places/dubai.png', city: "Dubai"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
