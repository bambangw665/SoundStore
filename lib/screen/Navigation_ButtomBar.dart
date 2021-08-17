import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sound_store/screen/homePage.dart';
import 'package:sound_store/screen/search_screen.dart';
import 'package:sound_store/screen/user_screen.dart';
import 'package:sound_store/screen/wishList_secreen.dart';

class NavigationButtomBar extends StatefulWidget {
  @override
  _NavigationButtomBarState createState() => _NavigationButtomBarState();
}

class _NavigationButtomBarState extends State<NavigationButtomBar> {
  int _currentIndex = 0;

  final List<Widget> tabs = <Widget>[
    HomePage(),
    SearchScreen(),
    WishListScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            // title: Text('Search'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            // title: Text('Save'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // title: Text('User'),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
