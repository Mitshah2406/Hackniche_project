import 'package:flutter/material.dart';
import 'package:mit_s_application3/presentation/iphone_14_15_pro_max_eight_container_screen/iphone_14_15_pro_max_eight_container_screen.dart';
import 'package:mit_s_application3/presentation/iphone_14_15_pro_max_nine_screen/iphone_14_15_pro_max_nine_screen.dart';
import 'package:mit_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1415ProMaxEightPage =
      '/iphone_14_15_pro_max_eight_page';

  static const String iphone1415ProMaxEightContainerScreen =
      '/iphone_14_15_pro_max_eight_container_screen';

  static const String iphone1415ProMaxNineScreen =
      '/iphone_14_15_pro_max_nine_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxEightContainerScreen: (context) =>
        Iphone1415ProMaxEightContainerScreen(),
    iphone1415ProMaxNineScreen: (context) => Iphone1415ProMaxNineScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => Iphone1415ProMaxEightContainerScreen(),
  };
}
