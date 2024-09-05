import 'package:easypaisa_clone/bottom_nav/home_nav.dart';
import 'package:easypaisa_clone/bottom_nav/my_account.dart';
import 'package:easypaisa_clone/bottom_nav/promotions.dart';
import 'package:flutter/material.dart';

class nav_bar extends StatefulWidget {
  const nav_bar({super.key});

  @override
  State<nav_bar> createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar> {
  int current_index = 0;

  List<Widget> body_pages = [
    home_nav(),
    Center(child: Text('CASH POINTS')),
    Center(child: Text('QR CODE SCANNER')),
    promotions(),
    my_account_nav()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body_pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          onTap: (value) {
            setState(() {
              current_index = value;
            });
          },
          // backgroundColor: Colors.green.shade200,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green.shade600,
          iconSize: 25,
          unselectedFontSize: 11,
          selectedFontSize: 11,
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green.shade600),
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Cash Points', icon: Icon(Icons.location_on_outlined)),
            BottomNavigationBarItem(
                label: 'Scan', icon: Icon(Icons.qr_code_scanner_outlined)),
            BottomNavigationBarItem(
                label: 'Promotions', icon: Icon(Icons.announcement_outlined)),
            BottomNavigationBarItem(
                label: 'My Account', icon: Icon(Icons.person_2_outlined)),
          ]),
    );
  }
}
