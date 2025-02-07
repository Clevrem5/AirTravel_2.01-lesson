import 'package:flutter/material.dart';
import '../../presentation_airtravel_details/widgets/text_stayle.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Image.asset(
          "assets2/images/onboarding/onboarding_1.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        const Positioned(bottom: 84,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 20,
                children: [
                  Textbox(
                    text: "Welcome to 👌",
                    color: Colors.white,
                    size: 48,
                    weight: FontWeight.bold,
                  ),
                  Textbox(
                    text: "AirTravels",
                    color: Colors.white,
                    size: 64,
                    weight: FontWeight.w900,
                  ),
                  Textbox(
                    text: "The best furniture e-commerce app of the "
                        "\ncentury for your daily needs!",
                    color: Colors.white,
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withValues(
                    alpha: 0.7,
                  ),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        )
      ],
    );
  }
}
