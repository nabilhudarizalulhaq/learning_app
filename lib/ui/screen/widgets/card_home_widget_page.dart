import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/widgets/bottons.dart';

class CardHomeWidgetPage extends StatelessWidget {
  final String time;
  final String name;
  final String subname;
  final String imageUrl;
  final String price;
  // final String backgrounColor;

  const CardHomeWidgetPage({
    super.key,
    // required this.backgrounColor,
    required this.imageUrl,
    required this.price,
    required this.time,
    required this.name,
    required this.subname,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.only(top: 6),
          width: 343,
          height: 288,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8),
              bottom: Radius.circular(8),
            ),
            border: Border.all(
              color: gray,
              width: 2,
            ),
            color: uibackgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imageUrl),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 43,
                    width: 342,
                    decoration: BoxDecoration(
                      color: uibackgroundColor,
                    ),
                    child: const Row(
                      children: [
                        Spacer(),
                        CustomBlueButton(
                          title: '50',
                          width: 63,
                          height: 28,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: 342,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(8),
                      ),
                      color: white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          time,
                          style: greenTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          subname,
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
