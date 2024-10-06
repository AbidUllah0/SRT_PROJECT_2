import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  String btnText;
  VoidCallback onPressed;

  CustomButton({super.key, required this.btnText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: Colors.black,
      ),
      onPressed: onPressed,
      child: CustomText(
        text: btnText,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
