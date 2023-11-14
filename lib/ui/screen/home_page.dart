import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/profile_page.dart';
import 'package:learning_mobile/ui/screen/setting_page.dart';

import 'home_page_index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> body = [
    const HomePageIndex(),
    ProfilePage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 113,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          border: Border.all(
            color: Colors.grey.shade400,
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = currentIndex;
              });
            },
            backgroundColor: white,
            selectedItemColor: primaryColor,
            unselectedItemColor: gray,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: orangeTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
            unselectedLabelStyle: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
            items: [
              //Home
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/ic_book.png',
                    width: 50,
                    color: currentIndex == 0 ? primaryColor : gray,
                  ),
                ),
                label: 'Courses',
              ),
              // Profile
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  icon: Image.asset(
                    'assets/profile_home.png',
                    width: 50,
                    color: currentIndex == 1 ? primaryColor : gray,
                  ),
                ),
                label: 'Profile',
              ),
              //Setting
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  icon: Image.asset(
                    'assets/ic_setting.png',
                    width: 60,
                    color: currentIndex == 2 ? primaryColor : gray,
                  ),
                ),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: body[currentIndex],
      ),
    );
  }
}
