import 'package:flutter/material.dart';
import 'package:sound_store/screen/Navigation_ButtomBar.dart';
import 'dart:async';

class LogoCenter extends StatefulWidget {
  LogoCenter({Key key}) : super(key: key);

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
    var duration = const Duration(seconds: 2);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return NavigationButtomBar();
      }));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Image.asset('assets/images/soundstore.png'),),
    );
  }
}