import 'package:flutter/material.dart';
import 'package:rekammedis/screens/histori.dart';
import 'package:rekammedis/screens/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rekammedis/screens/print_page.dart';
import 'package:rekammedis/screens/service.dart';
import 'package:rekammedis/screens/profile.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  //variable declaration
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            // update page index when tab pressed/switch page
            currentPage = value;
          });
        }),
        children: const <Widget>[
          HomePage(),
          Histori(),
          PrintPage(),
          Profile(),
          Service(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (page) {
            setState(() {
              currentPage = page;
              _page.animateToPage(page,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
              label: ' Histori',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.print),
              label: 'Print',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.phone),
              label: 'Bantuan',
            ),
            // BottomNavigationBarItem(
            //   icon: FaIcon(FontAwesomeIcons.gears),
            //   label: 'Setting',
            // ),
          ]),
    );
  }
}
