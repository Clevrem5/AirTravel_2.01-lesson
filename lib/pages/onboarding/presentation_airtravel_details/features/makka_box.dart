import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.icon,
    required this.day,
    required this.where,
  });

  final String icon, where, day;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 108,
      height: 23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          color: AppColorsTravel.iconColors,
          width: 1
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 1,
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColorsTravel.iconColors,
            ),
            child: Center(
              child: SvgPicture.asset(
                icon,
                width: 11,
                height: 13,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day,
                style: TextStyle(
                  color: AppColorsTravel.iconColors,
                  fontFamily: "Urbanist",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              Text(
                "kun",
                style: TextStyle(
                  color: AppColorsTravel.iconColors,
                  fontFamily: "Urbanist",
                  fontSize: 4,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            where,
            style: TextStyle(
              color: AppColorsTravel.iconColors,
              fontFamily: "Urbanist",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
    );
  }
}
