import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class Allinfo extends StatelessWidget {
  const Allinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 274,
      height: 40,
      decoration: BoxDecoration(
        color: AppColorsTravel.iconColors,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          "Batafsil...",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: "Urbanist",
          ),
        ),
      ),
    );
  }
}
