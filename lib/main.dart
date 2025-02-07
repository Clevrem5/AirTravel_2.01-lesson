import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/home_page_body.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/home_page_bottom.dart';
import 'package:lesson2_first/utils/sizes.dart';

import 'homePage/widgets/home_page_item_app_bar.dart';


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
    AppSizes.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: HomePageItemAppBar(),
      body: HomePageBody(),
      bottomNavigationBar: HomePageBottom(),
    );
  }
}
