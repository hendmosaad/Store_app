import 'package:flutter/material.dart';
import 'package:resturant_app/persentation/managers/color_manager.dart';
import 'package:resturant_app/persentation/managers/routes_manager.dart';
import 'package:resturant_app/persentation/managers/text_styles_manager.dart';
import 'package:resturant_app/persentation/managers/theme_manager.dart';
class MyApp extends StatefulWidget {
  MyApp._internal();
  static final _instance=MyApp._internal();
  factory MyApp()=>_instance;



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.themeData(),
      onGenerateRoute: RoutesGenerator.routesGenerator,
      initialRoute: Routes.splashRoute,

    );
  }
}
