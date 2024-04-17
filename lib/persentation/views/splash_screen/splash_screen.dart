import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resturant_app/persentation/managers/Assets_Manager/ImageAssets.dart';
import 'package:resturant_app/persentation/managers/color_manager.dart';
import 'package:resturant_app/persentation/managers/routes_manager.dart';
import 'package:resturant_app/persentation/views/onBoarding_screen./onBoarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? _timer;
  _startDelay(){
    _timer=Timer(const Duration(seconds: 5), _goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context,Routes.onBoarding);
  }
  @override
  void initState() {
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child:Image(image: AssetImage("${ImageAssets.splashLogo}"),)
      ),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
