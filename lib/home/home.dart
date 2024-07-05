import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signeup/home/homenav.dart';
import 'package:signeup/home/profile.dart';
import 'package:signeup/home/store.dart';
import 'package:signeup/home/wishlist.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var _pages = [Homenav(), Store(), Wishlist(), Profile()];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedItem],
      ),
      bottomNavigationBar: Container(
        color: HexColor("#4530b3"),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
            gap: 8,
            iconSize: 24,
            onTabChange: (value) {
              setState(() {
                _selectedItem = value;
              });
            },
            backgroundColor: HexColor("#4530b3"),
            color: HexColor("#dbe9f6"),
            activeColor: HexColor("#4530b3"),
            tabBackgroundColor: HexColor("#dbe9f6"),
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.store,
                text: "Store",
              ),
              GButton(
                icon: Icons.favorite,
                text: "Wishlist",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              )
            ],
          ),
        ),
      ),
    );
  }
}
