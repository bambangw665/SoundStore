import 'package:flutter/material.dart';
import 'dart:async';

import 'Navigation_ButtomBar.dart';

// class LogoCenter extends StatefulWidget {
//   LogoCenter({Key key}) : super(key: key);

//   @override
//   _LogoCenterState createState() => _LogoCenterState();
// }

// class _LogoCenterState extends State<LogoCenter> {
//   @override

//   void initState() {
//     super.initState();
//     startLaunching();
//   }

//   startLaunching() async {
//     var duration = const Duration(seconds: 3);
//     return new Timer(duration, () {
//       Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
//         return NavigationButtomBar();
//       }));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Center(child: Image.asset('assets/images/soundstore.png'),),
//     );
//   }
// }

class LogoCenter extends StatefulWidget {
  @override
  _LogoCenterState createState() => _LogoCenterState();
}

class _LogoCenterState extends State<LogoCenter> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return NavigationButtomBar();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/soundstore.png'),
      ),
    );
  }
}
