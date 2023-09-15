import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello,',
          style: blackTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Juana Antonieta',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ],
    ),
    );
  }
}
