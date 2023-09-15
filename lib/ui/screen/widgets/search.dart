import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';

class Search extends StatefulWidget {
  final String title;
  final TextEditingController? controller;
  final bool isShowTitle;
  final TextInputType? keyboardType;

  const Search({
    Key? key,
    required this.title,
    this.controller,
    this.isShowTitle = true,
    this.keyboardType,
  }) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isShowTitle)
          Text(
            widget.title,
            style: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        if (widget.isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: false,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            hintText: !widget.isShowTitle ? widget.title : null,
            suffixIcon: toggleSearch(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: const EdgeInsets.all(16),
          ),
        ),
      ],
    );
  }

  Widget toggleSearch() {
    return GestureDetector(
      onTap: (){},
      child: const Image(
        image: AssetImage(
            'assets/ic_search.png'
          ),
        ),
    );
  }
}


// class Search extends StatelessWidget {
//   final String title;
//   final bool obscureText;
//   final TextEditingController? controller;
//   final bool isShowTitle;
//   final TextInputType? keyboardType;

//   const Search({
//     super.key,
//     required this.title,
//     this.obscureText = false,
//     this.controller,
//     this.isShowTitle = true,
//     this.keyboardType,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (isShowTitle)
//           Text(
//             title,
//             style: greyTextStyle.copyWith(
//               fontSize: 14,
//               fontWeight: medium,
//             ),
//           ),
//         if (isShowTitle)
//           const SizedBox(
//             height: 8,
//           ),
//         Row(
//           children: [
//             TextFormField(
//               obscureText: obscureText,
//               controller: controller,
//               keyboardType: keyboardType,
//               decoration: InputDecoration(
//                 hintText: !isShowTitle ? title : null,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 contentPadding: const EdgeInsets.all(16),
//               ),
//             ),
//             const Spacer(),
//             Image.asset(
//               "assets/ic_search.png",
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
