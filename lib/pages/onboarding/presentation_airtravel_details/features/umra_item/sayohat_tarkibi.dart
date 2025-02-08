import 'package:flutter/material.dart';
import '../../../../../utils/constants.dart';
import '../customerbox.dart';

class SayohatTarkibi extends StatelessWidget {
  const SayohatTarkibi({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomerBox(bonus: "Sug'urta"),
        SizedBox(width: 10),
        CustomerBox(bonus: "Chipta"),
        SizedBox(width: 10),
        CustomerBox(bonus: "Viza"),
        SizedBox(width: 10),
        AddestBox(around: 1),
      ],
    );
  }
}

class AddestBox extends StatelessWidget {
  const AddestBox({super.key,required this.around});
  final double around;

  @override
  Widget build(BuildContext context) {
    return  Container(
      // width: 29,
      height: 19,
      padding: EdgeInsets.all(around),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColorsTravel.iconColors,
          width: 1,
        ),
        color: Colors.white
      ),
      child: Container(
        // width: 26,
        height: 15,
        padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
        decoration: BoxDecoration(
          color: AppColorsTravel.iconColors,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "6+",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: "Urbanist",
            height: 1,
          ),
        ),
      ),
    );
  }
}

