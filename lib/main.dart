// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:rekammedis/components/historiLengkapCard.dart';
import 'package:rekammedis/components/login_form.dart';
import 'package:rekammedis/main_layout.dart';
import 'package:rekammedis/screens/booking_page.dart';
import 'package:rekammedis/screens/doctor_details.dart';
import 'package:rekammedis/screens/doctor_list.dart';
import 'package:rekammedis/screens/print_page.dart';
import 'package:rekammedis/screens/profile.dart';
import 'package:rekammedis/screens/service.dart';
import 'package:rekammedis/screens/regist_page.dart';
import 'package:rekammedis/screens/histori.dart';
import 'package:rekammedis/screens/success_booked.dart';
import 'package:rekammedis/utils/config.dart';
import 'package:rekammedis/screens/auth_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //pre-define input decoration
        inputDecorationTheme : const InputDecorationTheme (
          focusColor: Config.primaryColor,
          border : Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder : Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color : Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type : BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/', 
      routes : {
        // this is initial route of the appw
        // which is auth page ( login and sign up)
        '/':(context) => const AuthPage(),
        // this is for main layout after login
        'main' : (context) => const MainLayout(),
        'doc_details' : (context) => const DoctorDetails(),
        'booking_page' : (context) => const BookingPage(),
        'auth_page' : (context) => const AuthPage(),
        'login_form' : (context) => const LoginForm(),
        'doctor_list' : (context) => const DoctorList(),
        'print_page' : (context) => const PrintPage(),
        'profile' : (context) => const Profile(),
        'histori' : (context) => const Histori(),
        'regist_page' : (context) => const RegistPage(),
        'success_booking' : (context) => const AppointmentBooked(),
        'service' : (context) => const Service(), 
      },
    );
  }
}



