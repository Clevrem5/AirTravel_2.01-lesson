import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/constants.dart';

class ItemsOnboarding extends StatelessWidget {
  const ItemsOnboarding({
    super.key,
    required this.image,
    required this.text,
    required this.buttontxt,
  });

  final String image, text, buttontxt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 370,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 40,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Textbox(
                  text: text,
                  color: AppColorsTravel.textColor,
                  size: 40,
                  weight: FontWeight.bold,
                ),
                Container(
                  width: 60,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColorsTravel.iconColors,
                    minimumSize: Size(380, 58),
                    shadowColor: Colors.black,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Textbox(
                    text: buttontxt,
                    color: Colors.white,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
