import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../tariftems.dart';
import '../text_stayle.dart';

class DetailsTarif extends StatelessWidget {
  const DetailsTarif({
    super.key,
    required this.type,
    required this.cost,
    required this.oldcost,
  });

  final String type, cost, oldcost;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 189,
          height: 263,
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 19),
          decoration: BoxDecoration(
            color: AppColorsTravel.iconColors,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColorsTravel.tarifColor,
              width: 5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textbox(
                    text: cost,
                    color: Colors.white,
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  SizedBox(width: 2),
                  Text(
                    oldcost,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: "Urbanit",
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              Center(
                child: Textbox(
                  text: "Afzaliklari",
                  color: Colors.white,
                  size: 8,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14),
              TarifItems(
                svg: "assets2/icons/plane.svg",
                txt: "To'g'ridan-to'g'ri reys Toshkent \n"
                    "Jidda Toshkent ",
              ),
              SizedBox(height: 10),
              TarifItems(
                svg: "assets2/icons/bus.svg",
                txt: "Zamonaviy va qulay avtobuslar ",
              ),
              SizedBox(height: 10),
              TarifItems(
                svg: "assets2/icons/medical.svg",
                txt: "Tibbiy sug’urta ",
              ),
              SizedBox(height: 10),
              TarifItems(
                svg: "assets2/icons/people.svg",
                txt: "Tajribali yo’l boshchi ",
              ),
              SizedBox(height: 10),
              Textbox(
                text: "Lorem ipsum dolor sit amet consectetur \n"
                    "adipisicing elit. Temporibus fugit, iste unde \n"
                    "voluptatem tempore vero eveniet quia \n"
                    "conseq  ",
                color: Colors.white,
                size: 8,
                weight: FontWeight.w600,
              ),
            ],
          ),
        ),
        Positioned(
          top: -15,
          left: 56,
          right: 47,
          child: Container(
            width: 86,
            height: 29,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: AppColorsTravel.iconColors,
                width: 0.5,
              ),
            ),
            child: Center(
              child: Textbox(
                text: type,
                color: AppColorsTravel.iconColors,
                size: 16,
                weight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          left: 3,
          top: 2,
          child: Container(
            width: 26,
            height: 22,
            decoration: BoxDecoration(
              color: AppColorsTravel.tarifColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Textbox(
                text: "20%",
                color: Colors.black.withValues(alpha: 10),
                size: 10,
                weight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
