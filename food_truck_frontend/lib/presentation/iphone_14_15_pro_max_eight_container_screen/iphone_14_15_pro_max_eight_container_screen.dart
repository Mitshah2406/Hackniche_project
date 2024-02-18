import 'package:food_truck_frontend/presentation/chat_screen/chat_screen.dart';
import 'package:food_truck_frontend/presentation/review_screen.dart';

import 'notifier/iphone_14_15_pro_max_eight_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/presentation/iphone_14_15_pro_max_eight_page/iphone_14_15_pro_max_eight_page.dart';
import 'package:food_truck_frontend/widgets/custom_bottom_bar.dart';

class Iphone1415ProMaxEightContainerScreen extends ConsumerStatefulWidget {
  const Iphone1415ProMaxEightContainerScreen({Key? key}) : super(key: key);

  @override
  Iphone1415ProMaxEightContainerScreenState createState() =>
      Iphone1415ProMaxEightContainerScreenState();
}

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxEightContainerScreenState
    extends ConsumerState<Iphone1415ProMaxEightContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphone1415ProMaxEightPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home2:
        return AppRoutes.iphone1415ProMaxEightPage;
      case BottomBarEnum.User:
        return AppRoutes.chat;
      case BottomBarEnum.User23x24:
        return "/";
      case BottomBarEnum.Setting:
        return AppRoutes.reviewScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProMaxEightPage:
        return Iphone1415ProMaxEightPage();
      case AppRoutes.chat:
        return Chat();
      case AppRoutes.reviewScreen:
        return ReviewPage();
      default:
        return DefaultWidget();
    }
  }
}
