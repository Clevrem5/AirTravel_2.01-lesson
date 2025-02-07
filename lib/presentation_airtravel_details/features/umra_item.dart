import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/umra_item/Umra_place.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/umra_item/sayohat_tarkibi.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/widgetsin/allinfo.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/widgetsin/line.dart';
import '../../utils/constants.dart';
import 'tarif_card.dart';
import 'travel_item_image.dart';

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
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TarifCard(cost: "1200\$", toptext: "Ekonom"),
                        SizedBox(
                          width: 10,
                        ),
                        TarifCard(cost: "1400\$", toptext: "Standart"),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Line(),
                  SizedBox(height: 7),
                  Allinfo(), //batafsil
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
