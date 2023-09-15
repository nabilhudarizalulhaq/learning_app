import 'package:flutter/material.dart';

class IconButtonAppbar extends StatelessWidget {
  const IconButtonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        shape: CircleBorder(side: BorderSide(color: Colors.black, width: 2)),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        color: Colors.black,
        iconSize: 50,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
