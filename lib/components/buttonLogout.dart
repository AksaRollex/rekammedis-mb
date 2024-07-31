import 'package:flutter/material.dart';

class Buttonlogout extends StatelessWidget {
  const Buttonlogout(
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
             backgroundColor: disable ? Colors.grey : Colors.red, // Set background color to red
          foregroundColor: Colors.white, // Set text color to white
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