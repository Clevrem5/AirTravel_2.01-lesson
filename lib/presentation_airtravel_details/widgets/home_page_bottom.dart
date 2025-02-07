import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/travel_item_image.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/constants.dart';
import 'package:lesson2_first/utils/sizes.dart';

class HomePageBottom extends StatelessWidget {
  const HomePageBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48 * AppSizes.hRatio,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconItems(
                icon: "assets2/icons/home.svg",
                width: 19,
                height: 20,
                color: AppColorsTravel.iconColors,
              ),
              Textbox(
                text: "Home",
                color: AppColorsTravel.iconColors,
                size: 10,
                weight: FontWeight.bold,
              ),
            ],
          ),
          Column(
            children: [
              IconItems(
                icon: "assets2/icons/shopping-bag.svg",
                width: 19,
                height: 20,
                color: AppColorsTravel.iconColors,
              ),
              Textbox(
                text: "Cart",
                color: AppColorsTravel.iconColors,
                size: 10,
                weight: FontWeight.bold,
              ),
            ],
          ),
          Column(
            children: [
              IconItems(
                icon: "assets2/icons/orders.svg",
                width: 19,
                height: 20,
                color: AppColorsTravel.iconColors,
              ),
              Textbox(
                text: "Orders",
                color: AppColorsTravel.iconColors,
                size: 10,
                weight: FontWeight.bold,
              ),
            ],
          ),
          Column(
            children: [
              IconItems(
                icon: "assets2/icons/wallet.svg",
                width: 19,
                height: 20,
                color: AppColorsTravel.iconColors,
              ),
              Textbox(
                text: "Wallet",
                color: AppColorsTravel.iconColors,
                size: 10,
                weight: FontWeight.bold,
              ),
            ],
          ),
          Column(
            children: [
              IconItems(
                icon: "assets2/icons/profile.svg",
                width: 19,
                height: 20,
                color: AppColorsTravel.iconColors,
              ),
              Textbox(
                text: "Profile",
                color: AppColorsTravel.iconColors,
                size: 10,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
