import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../Pages/cart_screen.dart';
import '../Pages/search_screen.dart';
import '../Pages/user_screen.dart';
import '../Pages/wistList_secreen.dart';

import 'homePage.dart';

class NavigationButtomBar extends StatefulWidget {
  @override
  _NavigationButtomBarState createState() => _NavigationButtomBarState();
}

class _NavigationButtomBarState extends State<NavigationButtomBar> {
  int _currentIndex = 0;
  // ignore: deprecated_member_use
  List<Widget> _pages = <Widget>[
    HomePage(),
    SearchScreen(),
    CartScreen(),
    WistListScreen(),
    UserScreen(),
  ];

  List<String> iconsItem = [
    // Home icon
    "assets/icons/bottomNav/homeactive_icons.svg",

    // Search icon
    "assets/icons/bottomNav/search_icon.svg",
    "assets/icons/bottomNav/searchActive_icon.svg",

    // Wist list icon
    "assets/icons/bottomNav/Wistlist_icons.svg",
    "assets/icons/bottomNav/WistlistActive_icons.svg",

    // User Profile icon
    "assets/icons/bottomNav/userProfile_icon.svg",
    "assets/icons/bottomNav/userProfileActive_icon.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: KBtnbarblue,
          elevation: 0.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            // icon Home
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                iconsItem[0],
                width: 20,
                color: _currentIndex == 0 ? Colors.white : KUnactiveBtnbar,
              ),
              label: "",
            ),
            // icon search
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                iconsItem[1],
                width: 20,
                color: KUnactiveBtnbar,
              ),
              activeIcon: SvgPicture.asset(
                iconsItem[2],
                color: Colors.white,
                width: 20,
              ),
              label: "",
            ),
            // add cart shopping default
            // Icon Cart
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.cartShopping,
                size: 2,
              ),
              label: "",
            ),
            // Icon Wist List
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                iconsItem[3],
                width: 20,
                color: KUnactiveBtnbar,
              ),
              activeIcon: SvgPicture.asset(
                iconsItem[4],
                width: 18,
                color: Colors.white,
              ),
              label: "",
            ),
            // icon User Profile
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                iconsItem[5],
                width: 25,
                color: KUnactiveBtnbar,
              ),
              activeIcon: SvgPicture.asset(
                iconsItem[6],
                width: 25,
              ),
              label: "",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: _currentIndex == 2 ? Colors.blue : Colors.blue,
        child: Icon(
          FontAwesomeIcons.cartShopping,
          color: _currentIndex == 2 ? Colors.white : Colors.white, // color font
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartScreen()));

          // setState(() {
          //   _currentIndex = 3;
          // });
        },
      ),
    );
  }
}
