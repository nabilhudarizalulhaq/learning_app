import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/widgets/bottons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Learn anytime \nand anywhere',
    'Find a course\nfor you',
    'Improve your skills',
  ];

  List<String> subtitle = [
    'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                'assets/onboarding1.png',
              ),
              Image.asset(
                'assets/onboarding2.png',
              ),
              Image.asset(
                'assets/onboarding3.png',
              ),
            ],
            options: CarouselOptions(
              height: 375,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: ((index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
            ),
            carouselController: carouselController,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 23,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  subtitle[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 16,
                      height: 6,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: currentIndex == 0
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        borderRadius:
                            currentIndex == 0 ? BorderRadius.circular(4) : null,
                        color: currentIndex == 0 ? secondaryColor : gray,
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 6,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: currentIndex == 1
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        borderRadius:
                            currentIndex == 1 ? BorderRadius.circular(4) : null,
                        color: currentIndex == 1 ? secondaryColor : gray,
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 6,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: currentIndex == 2
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        borderRadius:
                            currentIndex == 2 ? BorderRadius.circular(4) : null,
                        color: currentIndex == 2 ? secondaryColor : gray,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 72,
                ),
                currentIndex == 2
                    ? CustomFilledButton(
                        title: 'Let`s Start',
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/login');
                        },
                      )
                    : CustomFilledButton(
                        title: 'Continue',
                        onPressed: () {
                          carouselController.nextPage();
                        },
                      ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}