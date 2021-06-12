import 'package:flutter/material.dart';
import 'package:hero_service_app/screens/dashboard/dashboard_screen.dart';
import 'package:hero_service_app/screens/welcome/welcome_screen.dart';
// สร้างตัวแปร map ไว้เก็บ UIL และ Screen

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/dashboard": (BuildContext context) => DashBoardScreen()
};
