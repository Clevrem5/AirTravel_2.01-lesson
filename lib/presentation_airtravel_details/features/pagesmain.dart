import 'package:flutter/material.dart';

class PageViewWithIndicator extends StatefulWidget {
  const PageViewWithIndicator({super.key});

  @override
  _PageViewWithIndicatorState createState() => _PageViewWithIndicatorState();
}

class _PageViewWithIndicatorState extends State<PageViewWithIndicator> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> images = [
    "assets2/images/offers/godhouse.jpg",
    "assets2/images/offers/offers_2.jpg",
    "assets2/images/offers/offers_3.jpg",
    "assets2/images/offers/offers_4.jpg",
    "assets2/images/offers/offers_5.jpg",
    "assets2/images/offers/offers_6.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Stack(
          children: [
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 15,
              right: 159,
              left: 159,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return Container(
                    width: 62,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: _currentPage == index ? Colors.green : Colors.grey,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 2),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
