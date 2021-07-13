import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/screens/startPage.dart';
import 'routes.dart';
void main() {
  runApp(GetMaterialApp(
    home:StartPage(),
    initialRoute: "/start",
    routes: customRoutes
    ));
}
