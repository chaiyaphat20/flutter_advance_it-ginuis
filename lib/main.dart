import 'package:flutter/material.dart';
import 'package:hero_service_app/routers.dart';
import 'package:hero_service_app/themes/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      initialRoute: '/welcome',
      routes: routes,
    );
  }
}
