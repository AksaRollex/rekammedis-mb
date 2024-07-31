// set constant config here
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  // width and height initialization
  void init (BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  //define spacing 
  static final spaceKebit = SizedBox(
    height: screenHeight! * 0.2,
  );

  static const spaceSmall = SizedBox(
    height : 25,
  );

  static final spaceMedium = SizedBox (
    height: screenHeight! * 0.05,
  );
  
  static final spaceBig = SizedBox (
    height: screenHeight! * 0.08,
  );
  
  // textfrom field border
  static const outlinedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8))
  );

  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide : BorderSide (
      color : Colors.greenAccent,
    )
  );

  static const errorBorder = OutlineInputBorder (
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color : Colors.red
    )
  );

  static const primaryColor = Color.fromARGB(255, 59, 174, 170);

   static const primaryGradient = LinearGradient(
    colors: [
      Color(0xFFA500B5), // Warna awal (A500B5)
      Color(0xFFFF4C4C), // Warna akhir (FF4C4C)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
} 

