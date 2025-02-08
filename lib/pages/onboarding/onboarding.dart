import 'package:flutter/material.dart';
import 'package:lesson2_first/pages/onboarding/presentation_airtravel_details/widgets/text_stayle.dart';
import 'package:lesson2_first/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllPages(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets2/images/onboarding/onboarding_1.png',
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 32, top: 280),
                child: Column(
                  children: [
                    Textbox(
                      text: "Welcome to 👌 ",
                      color: Colors.white,
                      size: 48,
                      weight: FontWeight.bold,
                    ),
                    Textbox(
                      text: "AirTravels ",
                      color: Colors.white,
                      size: 64,
                      weight: FontWeight.bold,
                    ),
                    Textbox(
                      text: "The best travel app of the century!",
                      color: Colors.white,
                      size: 12,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingViewItems extends StatefulWidget {
  const OnboardingViewItems({super.key});

  @override
  _OnboardingViewItemsState createState() => _OnboardingViewItemsState();
}

class _OnboardingViewItemsState extends State<OnboardingViewItems> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> images = [
    'assets2/images/onboarding/onboarding_2.png',
    'assets2/images/onboarding/onboarding_3.png',
    'assets2/images/onboarding/onboarding_4.png',
  ];
  final List<String> titles = [
    'We provide high quality services just for you',
    'Your satisfaction is our number one priority',
    'Let’s plan your next journey together!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            Text(
                              titles[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),

                              height: 5,
                              width: 15.0 * (_currentPage + 1),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                if (_currentPage < 2) {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColorsTravel.iconColors,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                minimumSize: Size(380, 58),
                              ),
                              child: Center(
                                child: Textbox(
                                  text: _currentPage == 2 ? "Boshlash" : "Keyingi",
                                  color: Colors.white,
                                  size: 16,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AllPages extends StatelessWidget {
  const AllPages({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [WelcomePage(), OnboardingViewItems()],
    );
  }
}
