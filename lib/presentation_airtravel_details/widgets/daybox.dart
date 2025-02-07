import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';

import '../../utils/constants.dart';

class Daybox extends StatelessWidget {
  const Daybox({
    super.key,
    required this.day,
    required this.calendar,
  });

  final String day, calendar;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 63,
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withValues(alpha: 300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            day,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          SizedBox(height: 2),
          Textbox(
            text: calendar,
            color: Colors.black,
            size: 10,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
