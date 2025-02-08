import 'package:flutter/material.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/text_stayle.dart';

import '../../../../utils/constants.dart';
import '../features/travel_item_image.dart';

class BottomNavDetaisl extends StatelessWidget {
  const BottomNavDetaisl({
    super.key,
    required this.cost,
    required this.svg,
    required this.export,
  });

  final String cost, svg, export;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 78,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textbox(
                    text: "Jami qiymati",
                    color: AppColorsTravel.textColor,
                    size: 12,
                    weight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Textbox(
                    text: cost,
                    color: AppColorsTravel.iconColors,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(width: 34),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColorsTravel.iconColors,
                  shadowColor: Colors.black.withValues(
                    alpha: 0.5,
                  ),
                  maximumSize: Size(280, 58),
                  iconColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 19),
                ),
                child: Center(
                  child: Row(
                    children: [
                      IconItems(
                        icon:svg,
                        width: 15,
                        height: 17,
                        color: Colors.white,
                      ),
                      SizedBox(width: 22),
                      Textbox(
                        text: export,
                        color: Colors.white,
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
