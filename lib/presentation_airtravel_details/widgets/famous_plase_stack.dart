import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/sizes.dart';

class FamousPlaseStack extends StatelessWidget {
  const FamousPlaseStack({
    super.key,
    required this.city,
    required this.image,
  });
  final String city,image;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
            width: 104 * AppSizes.wRatio,
            height: 52 * AppSizes.hRatio,
          ),
        ),
        Positioned(
          left: 30,
          bottom: 12,
          child: Textbox(
            text: city,
            color: Colors.white,
            size: 16,
            weight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
