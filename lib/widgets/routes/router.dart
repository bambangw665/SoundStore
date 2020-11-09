import 'package:auto_route/auto_route_annotations.dart';
import 'package:sound_store/screen/Navigation_ButtomBar.dart';
import 'package:sound_store/screen/details_screen.dart';
import 'package:sound_store/screen/homePage.dart';
import 'package:sound_store/screen/logo_center.dart';
import 'package:sound_store/screen/search_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"∏
    MaterialRoute(page: LogoCenter, initial: true),
    MaterialRoute(page: NavigationButtomBar,),
    MaterialRoute(page: HomePage, ),
    MaterialRoute(page: SearchScreen, ),
    MaterialRoute(page: DetailsScreen,),
  ],
)
class $Router {}




// Commnad auto route watch or build

// flutter packages pub run build_runner watch --delete-conflicting-outputs

// flutter packages pub run build_runner build