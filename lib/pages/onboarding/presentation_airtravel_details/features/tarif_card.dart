import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/features/umra_item/sayohat_tarkibi.dart';
import '../../../../utils/constants.dart';
import 'customerbox.dart';

class TarifCard extends StatelessWidget {
  const TarifCard({
    super.key,
    required this.cost,
    required this.toptext,
  });

  final String toptext, cost;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 126,
          height: 90,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColorsTravel.iconColors,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      cost,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Afzalliklari",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w700,
                        fontSize: 7,
                      ),
                    ),
                  ],
                ),
              ),
              CustomerBox(bonus: "Transport Xizmati"),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomerBox(bonus: "Nonushta"),
                  AddestBox(around: 1),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 7,
          right: 35,
          child: Container(
            width: 64,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Positioned(
          left: 54,
          right: 57,
          bottom: 0,
          child: Container(
            width: 16,
            height: 16,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColorsTravel.iconColors,
                width: 0.5,
              ),
            ),
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: AppColorsTravel.iconColors,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets2/icons/down-arrow.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: -11,
          child: Container(
            width: 65,
            height: 19,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColorsTravel.iconColors,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                toptext,
                style: TextStyle(
                  color: AppColorsTravel.iconColors,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 7,
          child: Text(
            "1300\$",
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.75),
              fontSize: 9,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ),
      ],
    );
  }
}
