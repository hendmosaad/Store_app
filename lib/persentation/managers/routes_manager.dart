import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/persentation/managers/string_manager.dart';
import 'package:resturant_app/persentation/views/forgot_password/forgot_password.dart';
import 'package:resturant_app/persentation/views/login/login.dart';
import 'package:resturant_app/persentation/views/main_view/main_view.dart';
import 'package:resturant_app/persentation/views/onBoarding_screen./onBoarding_screen.dart';
import 'package:resturant_app/persentation/views/register/register.dart';
import 'package:resturant_app/persentation/views/splash_screen/splash_screen.dart';
import 'package:resturant_app/persentation/views/store_details/store_details.dart';

class Routes{
  static const String splashRoute='/';
  static const String loginRoute='/login';
  static const String registerRoute='/register';
  static const String forgotPassowrdRoute='/forgotPassowrd';
  static const String mainRoute='/main';
  static const String storeDetailsRoute='/storeDetails';
  static const String onBoarding='/onBoarding';
}
class RoutesGenerator{

  static Route<dynamic> routesGenerator(RouteSettings settings){

    switch(settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>Splash(),);
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_)=>Login());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_)=>Register());
      case Routes.forgotPassowrdRoute:
        return MaterialPageRoute(builder: (_)=>ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_)=>Main());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_)=>StoreDetails());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_)=>OnBoarding(),);
      default:
        return unDefinedRoute();

    }



  }
  static Route <dynamic>unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      body: Center(
        child: Text(AppStrings.noRouteFound),
      ),
    ));
  }
}