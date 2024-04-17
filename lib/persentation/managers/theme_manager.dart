import 'package:flutter/material.dart';
import 'package:resturant_app/persentation/managers/app_values.dart';
import 'package:resturant_app/persentation/managers/color_manager.dart';
import 'package:resturant_app/persentation/managers/font_font.dart';
import 'package:resturant_app/persentation/managers/text_styles_manager.dart';

class ThemeManager{
 static ThemeData themeData(){
    return ThemeData(
      // main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,

      // ripple effect color
      // cardview theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),
      // app bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularTextStyle(fontSize: FontSize.s16, colorManager: ColorManager.white)),
      // button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey1,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularTextStyle(
                  colorManager: ColorManager.white, fontSize: FontSize.s17),
              backgroundColor: ColorManager.primary,

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),

      textTheme: TextTheme(
          displayLarge: getSemiBoldextStyle(
              colorManager: ColorManager.darkGrey, fontSize: FontSize.s16),
          headlineLarge: getSemiBoldextStyle(
              colorManager: ColorManager.darkGrey, fontSize: FontSize.s16),
          headlineMedium: getRegularTextStyle(
              colorManager: ColorManager.darkGrey, fontSize: FontSize.s14),
          titleMedium:
          getMediumTextStyle(colorManager: ColorManager.primary, fontSize: FontSize.s16),
          titleSmall:
          getRegularTextStyle(colorManager: ColorManager.white, fontSize: FontSize.s16),
          bodyLarge: getRegularTextStyle(colorManager: ColorManager.grey1),
          bodySmall: getRegularTextStyle(colorManager: ColorManager.grey),
          bodyMedium: getRegularTextStyle(colorManager: ColorManager.grey2, fontSize: FontSize.s12),
          labelSmall:
          getBoldTextStyle(colorManager: ColorManager.primary, fontSize: FontSize.s12)),

      // input decoration theme (text form field)
      // inputDecorationTheme: InputDecorationTheme(
      //   // content padding
      //     contentPadding: const EdgeInsets.all(AppPadding.p8),
      //     // hint style
      //     hintStyle:
      //     getRegularTextStyle(colorManager: ColorManager.grey, fontSize: FontSize.s14),
      //     labelStyle:
      //     getMediumTextStyle(colorManager: ColorManager.grey, fontSize: FontSize.s14),
      //     errorStyle: getRegularTextStyle(colorManager: ColorManager.error),
      //
      //     // enabled border style
      //     enabledBorder: OutlineInputBorder(
      //         borderSide:
      //         BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
      //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      //
      //     // focused border style
      //     focusedBorder: OutlineInputBorder(
      //         borderSide:
      //         BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
      //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      //
      //     // error border style
      //     errorBorder: OutlineInputBorder(
      //         borderSide:
      //         BorderSide(color: ColorManager.error, width: AppSize.s1_5),
      //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      //     // focused border style
      //     focusedErrorBorder: OutlineInputBorder(
      //         borderSide:
      //         BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
      //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),

      // label style
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(AppPadding.p8),
        hintStyle: getRegularTextStyle(colorManager: ColorManager.grey,fontSize: FontSize.s14)  ,
        labelStyle: getMediumTextStyle(colorManager: ColorManager.grey,fontSize: FontSize.s14)  ,
        errorStyle:getRegularTextStyle(colorManager: ColorManager.error,),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.grey,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))
        )
      )
    );


  }
}