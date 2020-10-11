import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sound_store/constants.dart';
import 'package:sound_store/screen/logo_center.dart'; 
import 'package:sound_store/widgets/routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder(
          router: Router(),
          builder: (context, extendedNav) => Theme(
                data: ThemeData(brightness: Brightness.light),
                child: extendedNav,
              )),
      debugShowCheckedModeBanner: false,
      title: 'Sound Store',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: LogoCenter(),
    );
  }
}

