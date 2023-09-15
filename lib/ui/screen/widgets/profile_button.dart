import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';

class ProfileButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const ProfileButton({
    super.key,
    required this.title,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 343,
        height: 80,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 2,
            color: gray
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}