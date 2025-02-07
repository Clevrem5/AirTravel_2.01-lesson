import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/travel_item_image.dart';
import '../../utils/constants.dart';

class CustomerBox extends StatelessWidget {
  const CustomerBox({
    super.key,
    required this.bonus,
  });

  final String bonus;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 68,
      height: 19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: AppColorsTravel.iconColors,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 1,
          ),
          Container(
            width: 16,
            height: 15,
            decoration: BoxDecoration(
              color: AppColorsTravel.iconColors,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: IconItems(
                icon: "assets2/icons/tick.svg",
                width: 9.41,
                height: 7.06,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            bonus,
            style: TextStyle(
              color: AppColorsTravel.iconColors,
              fontSize: 10,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
