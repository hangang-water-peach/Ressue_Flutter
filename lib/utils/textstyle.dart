import 'package:flutter/material.dart';

class RSTextStyle {
  static const String _pretendard_100 = "Pretendard-Thin";
  static const String _pretendard_200 = "Pretendard-ExtraLight";
  static const String _pretendard_300 = "Pretendard-Light";
  static const String _pretendard_400 = "Pretendard-Regular";
  static const String _pretendard_500 = "Pretendard-Medium";
  static const String _pretendard_600 = "Pretendard-SemiBold";
  static const String _pretendard_700 = "Pretendard-Bold";
  static const String _pretendard_800 = "Pretendard-ExtraBold";
  static const String _pretendard_900 = "Pretendard-Black";

  static TextStyle textfield_Thin(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_100,
      );
  static TextStyle textfield_ExtraLight(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_200,
      );
  static TextStyle textfield_Light(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_300,
      );
  static TextStyle textfield_Regular(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_400,
      );
  static TextStyle textfield_Medium(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_500,
      );
  static TextStyle textfield_SemiBold(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_600,
      );
  static TextStyle textfield_Bold(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_700,
      );
  static TextStyle textfield_ExtraBold(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_800,
      );
  static TextStyle textfield_Black(double fontSize) => TextStyle(
        fontSize: fontSize,
        fontFamily: _pretendard_900,
      );
}
