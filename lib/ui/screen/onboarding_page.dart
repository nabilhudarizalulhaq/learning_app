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
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            // width: 235,
            child: CarouselSlider(
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
                height: 235,
                aspectRatio: 16 / 9,
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
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              // padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 26,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    subtitle[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
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
                        width: 18,
                        height: 9,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          shape: currentIndex == 0
                              ? BoxShape.rectangle
                              : BoxShape.circle,
                          borderRadius: currentIndex == 0
                              ? BorderRadius.circular(4)
                              : null,
                          color: currentIndex == 0 ? secondaryColor : gray,
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 9,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          shape: currentIndex == 1
                              ? BoxShape.rectangle
                              : BoxShape.circle,
                          borderRadius: currentIndex == 1
                              ? BorderRadius.circular(4)
                              : null,
                          color: currentIndex == 1 ? secondaryColor : gray,
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 9,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          shape: currentIndex == 2
                              ? BoxShape.rectangle
                              : BoxShape.circle,
                          borderRadius: currentIndex == 2
                              ? BorderRadius.circular(4)
                              : null,
                          color: currentIndex == 2 ? secondaryColor : gray,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  currentIndex == 2
                      ? CustomFilledButton(
                          title: 'Let`s Start',
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
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
          ),
        ],
      )),
    );
  }
}
