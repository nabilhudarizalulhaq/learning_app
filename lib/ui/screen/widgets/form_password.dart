

import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';

class CustomPasswordFormField extends StatefulWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final TextInputType? keyboardType;

  const CustomPasswordFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
    this.keyboardType,
  }) : super(key: key);

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isShowTitle)
          Text(
            widget.title,
            style: greyTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (widget.isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: _isSecurePassword,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            hintText: !widget.isShowTitle ? widget.title : null,
            suffixIcon: togglePassword(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: const EdgeInsets.all(16),
          ),
        ),
      ],
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: gray,
    );
  }
}
