import 'package:flutter/material.dart';
import '../makka_box.dart';

class UmraPlace extends StatelessWidget {
  const UmraPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InfoBox(
          icon: "assets2/icons/calendar.svg",
          day: "10",
          where: "Madinada",
        ),
        SizedBox(
          width: 10,
        ),
        InfoBox(
          icon: "assets2/icons/calendar.svg",
          day: "5",
          where: "Makkada",
        ),
      ],
    );
  }
}
