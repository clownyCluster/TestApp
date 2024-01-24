import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tuts/resources/routes/app_route.dart';
import 'package:getx_tuts/resources/routes/route_name.dart';
import 'package:getx_tuts/view/home_screen.dart';
import 'package:getx_tuts/view/login_screen.dart';

import 'resources/getx_localization/languages.dart';
void main(){
  runApp(GetXTuts());
}

class GetXTuts extends StatefulWidget {
  const GetXTuts({super.key});

  @override
  State<GetXTuts> createState() => _GetXTutsState();
}

class _GetXTutsState extends State<GetXTuts> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en','US' ) ,
      home: LoginScreen(),
    //  initialRoute: RouteName.homeScreen,
     getPages: AppRoutes.appRoutes(),
    );
  }
}