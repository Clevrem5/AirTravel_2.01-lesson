import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson2_first/presntation_airTravel/customerbox.dart';
import 'package:lesson2_first/presntation_airTravel/makka_box.dart';
import 'package:lesson2_first/presntation_airTravel/tarif_card.dart';
import 'package:lesson2_first/presntation_airTravel/travel_item_image.dart';
import 'package:lesson2_first/presntation_airTravel/umra_item/Umra_place.dart';
import 'package:lesson2_first/presntation_airTravel/umra_item/sayohat_tarkibi.dart';
import 'package:lesson2_first/utils/constants.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageItem(),
    );
  }
}

class HomePageItem extends StatelessWidget {
  const HomePageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsTravel.backRoundColor,
      body: ListView(
        children: [
          TourPacketItem(),
        ],
      ),
    );
  }
}

class TourPacketItem extends StatelessWidget {
  const TourPacketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 302,
        height: 529,
        padding: EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 7,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(
            color: AppColorsTravel.textColor.withValues(alpha: 0.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TravelItemImage(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemMainTexts(text: "Umra Safari"),
                  SizedBox(height: 12.5),
                  UmraPlace(), //umra
                  SizedBox(height: 15.5),
                  ItemMainTexts(text: "Sayohat tarkibi"),
                  SizedBox(height: 12),
                  SayohatTarkibi(), //sugurta
                  SizedBox(height: 15),
                  ItemMainTexts(text: "Tariflar"),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      TarifCard(cost: "1200\$", toptext: "fdsf"),
                      SizedBox(width: 10,),
                      TarifCard(cost: "1400\$", toptext: "Standart"),
                    ],
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: 362,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColorsTravel.textColor.withValues(alpha: 10),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColorsTravel.textColor.withValues(alpha: 4),
                        width: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
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
                  ), //batafsil
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
