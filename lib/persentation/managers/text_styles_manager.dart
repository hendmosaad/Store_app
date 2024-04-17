import 'package:flutter/material.dart';
import 'package:resturant_app/persentation/managers/font_font.dart';

TextStyle _getTextStyle({required FontWeight fontWeightManager,required double fontSize,required Color colorManager}){
  return TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: fontWeightManager,
    fontSize: fontSize
  );
}
TextStyle getRegularTextStyle({ double fontSize=FontSize.s12,required Color colorManager}){
return  _getTextStyle(fontWeightManager: FontWeightManager.regular, fontSize:fontSize,colorManager: colorManager);
}
TextStyle getBoldTextStyle({double fontSize=FontSize.s12,required Color colorManager}){
  return  _getTextStyle(fontWeightManager: FontWeightManager.bold, fontSize:fontSize,colorManager: colorManager);
}
TextStyle getMediumTextStyle({double fontSize=FontSize.s12,required Color colorManager}){
  return  _getTextStyle(fontWeightManager: FontWeightManager.medium, fontSize:fontSize,colorManager: colorManager);
}
TextStyle getLightTextStyle({double fontSize=FontSize.s12,required Color colorManager}){
  return  _getTextStyle(fontWeightManager: FontWeightManager.light, fontSize:fontSize,colorManager: colorManager);
}
TextStyle getSemiBoldextStyle({double fontSize=FontSize.s12,required Color colorManager}){
  return  _getTextStyle(fontWeightManager: FontWeightManager.semiBold, fontSize:fontSize,colorManager: colorManager);
}