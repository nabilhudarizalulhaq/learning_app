import 'package:flutter/material.dart';

class IconAppbar extends StatelessWidget {
  const IconAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(left: 8),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(
          width: 2,
          color: const Color(0xffBEBAB3),
        )
      ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
          iconSize: 22,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
    );
  }
}

class IconNotificationHome extends StatelessWidget {
  const IconNotificationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.only(left: 8),
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            width: 2,
            color: const Color(0xffBEBAB3),
          )
        ),
          child: const Image(
            image: AssetImage(
              'assets/notification_home.png',
            ),
          )
      ),
    );
  }
}