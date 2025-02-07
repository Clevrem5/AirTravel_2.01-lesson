import 'package:flutter/material.dart';
import 'package:lesson2_first/presentation_airtravel_details/features/travel_item_image.dart';
import 'package:lesson2_first/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/constants.dart';
import 'package:lesson2_first/utils/sizes.dart';

class HomePageItemAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomePageItemAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size(double.infinity, 80*AppSizes.hRatio);
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return AppBar(
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Center(
        child: Container(
          width: 326,
          height: 53,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColorsTravel.searchColor.withValues(alpha: 0.9),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                offset: Offset(1, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                children: [
                  IconItems(
                    icon: "assets2/icons/search.svg",
                    width: 16,
                    height: 16,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                  Textbox(
                    text: "Search",
                    color: Colors.black.withValues(alpha: 0.7),
                    size: 14,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              IconItems(
                icon: "assets2/icons/filter.svg",
                width: 13,
                height: 12,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: IconItems(
                icon: "assets2/icons/notifications.svg",
                width: 17,
                height: 22,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
