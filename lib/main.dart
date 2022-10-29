import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/Navigation_ButtomBar.dart';
import 'Pages/cart_screen.dart';
import 'Pages/complete_payment.dart';
import 'Pages/homePage.dart';
import './constants.dart';
import 'Pages/logo_center.dart';
import 'Pages/search_pageScreen.dart';
import 'Pages/user_screen.dart';
import 'Pages/wistList_secreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sound Store Apps',
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
          routes: <String, WidgetBuilder>{
            '/HomePageScreen': (BuildContext context) => new HomePage(),
            '/SearchPageScreen': (BuildContext context) => new SearchPage(),
            '/WistListPageScreen': (BuildContext context) =>
                new WistListScreen(),
            '/UserPageScreen': (BuildContext context) => new UserScreen(),
            '/ChartPageScreen': (BuildContext context) => new CartScreen(),
            '/PaymentPageScreen': (BuildContext context) =>
                new CompletePaymentScreen(),
            '/BottomNavBar': (BuildContext context) =>
                new NavigationButtomBar(),
          },
        );
      },
      child: LogoCenter(),
    );
  }
}
