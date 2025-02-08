import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/constants.dart';
import 'data_box.dart';

class TravelItemImage extends StatelessWidget {
  const TravelItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage("assets2/images/offers/godhouse.jpg"),
            width: 285.5,
            height: 169,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 23,
          left: 17,
          right: 209.79,
          bottom: 125,
          child: DataBox(
            day: "14",
            when: "kun",
            color: AppColorsTravel.iconColors,
          ),
        ),
        Positioned(
          bottom: 15.17,
          left: 50,
          child: Row(
            children: [
              IconItems(
                icon: "assets2/icons/flight.svg",
                width: 20.03,
                height: 16.66,
                color: AppColorsTravel.iconColors,
              ),
              SizedBox(
                width: 2,
              ),
              DataBox(
                day: "14",
                when: "Okt",
                color: AppColorsTravel.iconColors,
              ),
              SizedBox(
                width: 2,
              ),
              IconItems(
                icon: "assets2/icons/landing.svg",
                width: 20.03,
                height: 16.66,
                color: AppColorsTravel.iconColors,
              ),
              SizedBox(
                width: 2,
              ),
              DataBox(
                day: "27",
                when: "Okt",
                color: AppColorsTravel.iconColors,
              ),
              SizedBox(
                width: 2,
              ),
            ],
          ),
        ),
        Positioned(
          top: 21,
          right: 21.79,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColorsTravel.iconColors,
            ),
            child: Center(
              child: IconItems(
                icon: "assets2/icons/heart.svg",
                width: 16,
                height: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class IconItems extends StatelessWidget {
  const IconItems({
    super.key,
    required this.icon,
    required this.width,
    required this.height,
    required this.color,
  });

  final String icon;
  final double width, height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width,
      height: height,
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}

class ItemMainTexts extends StatelessWidget {
  const ItemMainTexts({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22,
      child: Text(
        text,
        style: TextStyle(
          color: AppColorsTravel.textColor,
          fontFamily: "Urbanist",
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
