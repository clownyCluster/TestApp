import 'package:get/get.dart';
import 'package:getx_tuts/resources/routes/route_name.dart';
import 'package:getx_tuts/view/home_screen.dart';
import 'package:getx_tuts/view/login_screen.dart';
import 'package:getx_tuts/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.homeScreen,
          page: () => HomeScreen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: Duration(milliseconds: 600),
        ),
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 600),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => LoginScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 600),
        ),
      ];
}
