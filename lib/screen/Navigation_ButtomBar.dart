import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sound_store/constants.dart';
import 'package:sound_store/screen/homePage.dart';
import 'package:sound_store/screen/search_screen.dart';


class NavigationButtomBar extends StatefulWidget {

  @override
  _NavigationButtomBarState createState() => _NavigationButtomBarState();
}

class _NavigationButtomBarState extends State<NavigationButtomBar> {
  int _currentIndex = 0;

   final List<Widget> tabs = <Widget>[
    HomePage(),
    SearchScreen(),
    Center(child: Text('Save'),),
    Center(child: Text('User '),),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[200],
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: 'Home',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            // title: Text('Search'),
            label: 'Search',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            // title: Text('Save'),
            label: 'Save',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // title: Text('User'),
            label: 'User',
            backgroundColor: Colors.blue[200],
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
