import 'package:flutter/material.dart';

class DataBox extends StatelessWidget {
  const DataBox({
    super.key,
    required this.day,
    required this.when,
    required this.color,
  });

  final String day, when;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 61,
      height: 21,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
      child: Center(
        child: Row(mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              when,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
