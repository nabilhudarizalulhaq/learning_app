import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/widgets/bottons.dart';
import 'package:learning_mobile/ui/screen/widgets/icon_appbar.dart';
import 'package:learning_mobile/ui/screen/widgets/profile_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
        leading: const IconAppbar(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(
            height: 32,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 32),
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: uibackgroundColor,
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/profile.png',
                    ),
                  ),
                  border: Border.all(
                    width: 4,
                    color: secondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileButton(
                onTap: () {},
                title: 'Your Courses',
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileButton(
                onTap: () {},
                title: 'Saved',
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileButton(
                onTap: () {},
                title: 'Payment',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextButton(
                title: 'Log Out',
              ),
              const SizedBox(
                height: 106,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
