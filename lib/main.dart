import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sound_store/constants.dart';
// import 'package:sound_store/screen/homePage.dart';
import 'package:sound_store/screen/logo_center.dart'; 
import 'package:sound_store/widgets/routes/router.gr.dart' as r;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.d
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

//    NaVigator auto_route
      builder: ExtendedNavigator.builder<r.Router>(
        router: r.Router(),
          builder: (context, extendedNav) => Theme(
                data: ThemeData(brightness: Brightness.light),
                child: extendedNav,
              )),
      // onGenerateInitialRoutes: Router(),

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