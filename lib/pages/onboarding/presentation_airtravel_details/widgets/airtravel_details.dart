import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/airtaveldetailstarif/detailsTarif.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/text_stayle.dart';

import '../../../../utils/constants.dart';
import '../features/customerbox.dart';
import '../features/makka_box.dart';
import '../features/travel_item_image.dart';
import 'bottomnav.dart';
import 'daybox.dart';


void main() {
  runApp(ReciepeDetailsScreen());
}

class ReciepeDetailsScreen extends StatelessWidget {
  const ReciepeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RDetailHomePage(),
    );
  }
}

class RDetailHomePage extends StatelessWidget {
  const RDetailHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: SizedBox(
          width: 28,
          height: 28,
          child: Center(
            child: IconItems(
              icon: "assets2/icons/back-arrow.svg",
              width: 14,
              height: 18,
              color: Colors.black,
            ),
          ),
        ),
        toolbarHeight: 48,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets2/images/offers/godhouse.jpg",
                width: double.infinity,
                height: 311,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textbox(
                      text: "Umra Safari",
                      color: AppColorsTravel.textColor,
                      size: 18,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli),\n"
                      "Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati,\n"
                      "Zamzam suvi (5 litr)",
                      style: TextStyle(
                        color: AppColorsTravel.textColor,
                        fontSize: 12,
                        // height: 1,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.bold,
                      ),
                      // textAlign: TextAlign.start,
                      // softWrap: true,
                      // maxLines: 3,
                      // overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ), // bu qismi umra safari
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    InfoBox(
                      icon: "assets2/icons/calendar.svg",
                      day: "10",
                      where: "Madinada",
                    ),
                    SizedBox(width: 10),
                    InfoBox(
                      icon: "assets2/icons/calendar.svg",
                      day: "5",
                      where: "Makkada",
                    ),
                  ],
                ),
              ), //bu qismi infoboxlar
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Textbox(
                  text: "Sayohat Tarkibi",
                  color: AppColorsTravel.textColor,
                  size: 18,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    CustomerBox(bonus: "Sug'urta"),
                    SizedBox(width: 5),
                    CustomerBox(bonus: "Chipta"),
                    SizedBox(width: 5),
                    CustomerBox(bonus: "Avichipta"),
                    SizedBox(width: 5),
                    CustomerBox(bonus: "Viza"),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Textbox(
                  text: "Sayohat Kundaligi",
                  color: AppColorsTravel.textColor,
                  size: 18,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Container(
                  width: 397,
                  height: 575,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Daybox(day: "1 kun", calendar: "14okt"),
                          SizedBox(width: 8),
                          Daybox(day: "2 kun", calendar: "15okt"),
                          SizedBox(width: 8),
                          Daybox(day: "3 kun", calendar: "16okt"),
                          SizedBox(width: 8),
                          Daybox(day: "4 kun", calendar: "17okt"),
                          SizedBox(width: 8),
                          Daybox(day: "5 kun", calendar: "18okt"),
                        ],
                      ),
                      SizedBox(height: 35),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 284,
                                  height: 123,
                                  padding: EdgeInsets.only(top: 22, bottom: 17, left: 45),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1, 0),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Textbox(
                                            text: "Uchish",
                                            color: Colors.black,
                                            size: 14,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 70),
                                          Textbox(
                                            text: "8:30 am",
                                            color: Colors.black.withValues(alpha: 10),
                                            size: 10,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 5),
                                        ],
                                      ),
                                      SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Textbox(
                                            text: "Qayerdan",
                                            color: AppColorsTravel.hotelColor,
                                            size: 10,
                                            weight: FontWeight.w600,
                                          ),
                                          SizedBox(width: 35),
                                          Textbox(
                                            text: "Toshkent",
                                            color: Colors.black,
                                            size: 12,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                      SizedBox(height: 7),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Textbox(
                                            text: "Qayerga",
                                            color: AppColorsTravel.hotelColor,
                                            size: 10,
                                            weight: FontWeight.w600,
                                          ),
                                          SizedBox(width: 40),
                                          Textbox(
                                            text: "Madina",
                                            color: Colors.black,
                                            size: 12,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 3,
                                  left: -84,
                                  child: Image.asset(
                                    "assets2/images/details/airplane.png",
                                    width: 129,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 27),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 279,
                                  height: 140,
                                  padding: EdgeInsets.only(top: 8, bottom: 17, left: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1, 0),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Textbox(
                                            text: "Mehmonxona",
                                            color: Colors.black,
                                            size: 14,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 80),
                                          Column(
                                            children: [
                                              Textbox(
                                                text: "11:30 am",
                                                color: Colors.black.withValues(alpha: 10),
                                                size: 10,
                                                weight: FontWeight.bold,
                                              ),
                                              SizedBox(height: 4),
                                              Row(
                                                children: [
                                                  IconItems(
                                                    icon: "assets2/icons/map-pin.svg",
                                                    width: 9,
                                                    height: 11,
                                                    color: Colors.black,
                                                  ),
                                                  SizedBox(width: 2),
                                                  Textbox(
                                                    text: "150M",
                                                    color: Colors.black.withValues(alpha: 10),
                                                    size: 10,
                                                    weight: FontWeight.bold,
                                                  ),
                                                  SizedBox(width: 10),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          SizedBox(height: 5),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Image.asset(
                                              "assets2/images/places/makka.png",
                                              width: 77,
                                              height: 68,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(width: 7),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Textbox(
                                                text: "New Madina Hotel",
                                                color: AppColorsTravel.hotelColor,
                                                size: 10,
                                                weight: FontWeight.w600,
                                              ),
                                              SizedBox(height: 3),
                                              Textbox(
                                                text: "New Madinah mehmonxonasining \n"
                                                    "har bir xonasida vanna va xalat \n"
                                                    "bilan jihozlangan shaxsiy ... ",
                                                color: AppColorsTravel.textColor,
                                                size: 8,
                                                weight: FontWeight.bold,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 3,
                                  left: -84,
                                  child: Image.asset(
                                    "assets2/images/details/hotel.png",
                                    width: 129,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 14,
                                  right: 70,
                                  left: 139,
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
                                  left: 160,
                                  right: 88,
                                  bottom: 7,
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
                              ],
                            ),
                            SizedBox(height: 27),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 279,
                                  height: 140,
                                  padding: EdgeInsets.only(top: 8, bottom: 17, left: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1, 0),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Textbox(
                                            text: "Ziyorotgoh",
                                            color: Colors.black,
                                            size: 14,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 80),
                                          Textbox(
                                            text: "8:30 am",
                                            color: Colors.black.withValues(alpha: 10),
                                            size: 10,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(width: 7),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          SizedBox(height: 5),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Image.asset(
                                              "assets2/images/places/makka.png",
                                              width: 77,
                                              height: 68,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(width: 7),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Textbox(
                                                text: "Arofot tog'i",
                                                color: AppColorsTravel.hotelColor,
                                                size: 10,
                                                weight: FontWeight.w600,
                                              ),
                                              SizedBox(height: 3),
                                              Textbox(
                                                text: "Arafot — Makkadan 20 km \n"
                                                    "uzoqlikda joylashgan, 11 — 12 km \n"
                                                    "va kengligi 6,5 km boʻlgan vodiy... ",
                                                color: AppColorsTravel.textColor,
                                                size: 8,
                                                weight: FontWeight.bold,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 3,
                                  left: -84,
                                  child: Image.asset(
                                    "assets2/images/details/news.png",
                                    width: 129,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 14,
                                  right: 70,
                                  left: 139,
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
                                  left: 160,
                                  right: 88,
                                  bottom: 7,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Textbox(
                  text: "Tariflar",
                  color: AppColorsTravel.textColor,
                  size: 18,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                   SingleChildScrollView(scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                         DetailsTarif(type: "Ekonom", cost: "1200\$", oldcost: "1300\$"),
                         SizedBox(width: 20),
                         DetailsTarif(type: "Standart", cost: "1400\$", oldcost: "1600\$"),
                         SizedBox(width: 20),
                         DetailsTarif(type: "Premium", cost: "1600\$", oldcost: "1800\$"),

                       ],
                     ),
                   ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavDetaisl(
        cost: "1200\$",
        svg: "assets2/icons/shopping-bag.svg",
        export: "Buyurtma berish",
      ),
    );
  }
}
