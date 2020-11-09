// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../screen/Navigation_ButtomBar.dart';
import '../../screen/details_screen.dart';
import '../../screen/homePage.dart';
import '../../screen/logo_center.dart';
import '../../screen/search_screen.dart';

class Routes {
  static const String logoCenter = '/logo-center';
  static const String navigationButtomBar = '/navigation-buttom-bar';
  static const String homePage = '/home-page';
  static const String searchScreen = '/search-screen';
  static const String detailsScreen = '/';
  static const all = <String>{
    logoCenter,
    navigationButtomBar,
    homePage,
    searchScreen,
    detailsScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.logoCenter, page: LogoCenter),
    RouteDef(Routes.navigationButtomBar, page: NavigationButtomBar),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.searchScreen, page: SearchScreen),
    RouteDef(Routes.detailsScreen, page: DetailsScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LogoCenter: (data) {
      final args = data.getArgs<LogoCenterArguments>(
        orElse: () => LogoCenterArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LogoCenter(key: args.key),
        settings: data,
      );
    },
    NavigationButtomBar: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NavigationButtomBar(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SearchScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchScreen(),
        settings: data,
      );
    },
    DetailsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailsScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LogoCenter arguments holder class
class LogoCenterArguments {
  final Key key;
  LogoCenterArguments({this.key});
}
