import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'views/screens/startPage.dart';
import 'routes.dart';
void main() {
  
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff0e71cc),
    systemNavigationBarColor: Color(0xff8dc6fb),
    systemNavigationBarIconBrightness: Brightness.dark
  ));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,

    home:StartPage(),
    initialRoute: "/start",
    routes: customRoutes
    ));
}
