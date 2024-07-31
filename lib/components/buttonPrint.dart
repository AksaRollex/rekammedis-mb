import 'package:flutter/material.dart';

class ButtonPrint extends StatelessWidget {
  const ButtonPrint(
    {super.key,
    required this.width,
    required this.title,
    required this.onPressed,
    required this.disable});

  final double width;
  final String title;
  final bool disable; // this is used to disabled button
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 119, 149, 40),
        foregroundColor: Colors.white,
        ),
      onPressed : disable ? null : onPressed,
      child : Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
      ),
      )
    );
  }
}