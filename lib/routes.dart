import 'package:flutter/material.dart';
import 'package:project_v2/views/screens/loginpage.dart';
import 'views/screens/startPage.dart';

var customRoutes = <String, WidgetBuilder>{
  '/start': (context) => StartPage(),
  '/login': (context) => LoginPage(),
};