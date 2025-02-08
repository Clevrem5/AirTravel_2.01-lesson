import 'package:flutter/material.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/faster_text.dart';

import '../features/pagesmain.dart';
import '../features/umra_item.dart';
import 'famous_place.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        PageViewWithIndicator(),
        SizedBox(height: 10),
        FamousPlace(),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 14),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3BB756),
                Color(0xFFF6980A),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FasterText(),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    TourPacketItem(),
                    SizedBox(width: 15),
                    TourPacketItem(),
                    SizedBox(width: 15),
                    TourPacketItem(),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
        TourPacketItem(),
      ],
    );
  }
}
