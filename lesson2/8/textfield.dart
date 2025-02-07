import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/travel_item_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconItems(
          icon: "assets2/icons/back-arrow.svg",
          width: 16,
          height: 19,
          color: Colors.blue,
        ),
      ),
      body: Column(
        children: [
          FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 100,
            textColor: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          Textbox(
            text: "Ro'yxatdan o'tish",
            color: Colors.black,
            size: 32,
            weight: FontWeight.bold,
          ),
          SizedBox(height: 30),
          TextField(onTap: (){
            SnackBar.createAnimationController(vsync: AnimatedGridState(),);
          },)
        ],
      ),
    );
  }
}
