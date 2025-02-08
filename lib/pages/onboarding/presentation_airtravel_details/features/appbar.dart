// import 'package:flutter/material.dart';
// import 'package:lesson2_first/presntation_airTravel/widgets/travel_item_image.dart';
// import '../../presentation_airtravel_details/widgets/text_stayle.dart';
// import '../../utils/constants.dart';
//
// class AppbarMain extends StatelessWidget implements PreferredSize{
//   const AppbarMain({super.key});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: Container(
//         width: 326,
//         height: 53,
//         decoration: BoxDecoration(
//           color: AppColorsTravel.searchColor,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Row(
//           children: [
//             IconItems(
//               icon: "assets2/icons/search.svg",
//               width: 20,
//               height: 20,
//               color: AppColorsTravel.searchColor,
//             ),
//             SizedBox(width: 12),
//             Textbox(
//               text: "Search",
//               color: AppColorsTravel.searchColor,
//               size: 14,
//               weight: FontWeight.w400,
//             ),
//             IconItems(
//               icon: "assets2/icons/filter.svg",
//               width: 20,
//               height: 20,
//               color: Colors.black,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }
