import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/widgets/bottons.dart';
import 'package:learning_mobile/ui/screen/widgets/card_home_widget_page.dart';
import 'package:learning_mobile/ui/screen/widgets/icon_appbar.dart';
import 'package:learning_mobile/ui/screen/widgets/search.dart';

class HomePageIndex extends StatelessWidget {
  const HomePageIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 28,
        ),
        children: [
          buildProfile(context),
          buildCatagory(),
          buildCourse(),
        ],
      ),
    );
  }
}


Widget buildProfile(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 8),
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
        Row(
          children: [
            Text(
              'Juana Antonieta',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            const IconNotificationHome()
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        // fitur search
        const Search(
          title: 'Search course ',
          isShowTitle: false,
        ),
        //----
        const SizedBox(
          height: 12,
        ),
      ],
    ),
  );
}

Widget buildCatagory() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 16),
        child: Text(
          'Category:',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
      ),
      const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomBlueButton(
              title: '#CSS',
              width: 54,
              height: 29,
            ),
            CustomBlueButton(
              title: '#UX',
              width: 54,
              height: 29,
            ),
            CustomBlueButton(
              title: '#Swift',
              width: 54,
              height: 29,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildCourse() {
  return const Column(
    children: [
      CardHomeWidgetPage(
        price: '50',
        time: '3 h 30 min ',
        name: 'UI',
        subname: 'Advanced mobile interface design',
        imageUrl: 'assets/img_ui.png',
      ),
      CardHomeWidgetPage(
        price: '50',
        time: '3 h 30 min ',
        name: 'HTML',
        subname: 'Advanced mobile interface design',
        imageUrl: 'assets/img_html.png',
      ),
      CardHomeWidgetPage(
        price: '50',
        time: '3 h 30 min ',
        name: 'HTML',
        subname: 'Advanced mobile interface design',
        imageUrl: 'assets/img_html.png',
      ),
    ],
  );
}
