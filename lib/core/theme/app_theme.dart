import 'package:flutter/material.dart';
import 'package:theatre/core/theme/colors/app_colors.dart';
import 'package:theatre/core/theme/dimens/dimens.dart';
import 'package:theatre/core/theme/text/text_theme.dart';

final dimens = Dimens();

class AppThemes {
  static const _lightColors = appColorsLight;

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightColors.primaryColor,
    fontFamily: 'Fira Sans',
    appBarTheme: AppBarTheme(
        color: _lightColors.green,
        titleTextStyle: TextStyle(
            color: _lightColors.white,
            fontSize: dimens.textDisplayLarge,
            fontWeight: FontWeight.w500)),
    tabBarTheme: TabBarTheme(
      labelColor: _lightColors.white,
      unselectedLabelColor: _lightColors.white,
    ),
    textTheme: AppTextTheme(
      colors: _lightColors,
      dimens: dimens,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          _lightColors.white,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: _lightColors.green,
      textTheme: ButtonTextTheme.normal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: dimens.textDisplayMedium,
            fontWeight: FontWeight.w500,
            color: _lightColors.white,
          ),
        ),
      ),
    ),
  );

  static const _darkColors = appColorsDark;

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _darkColors.primaryColor,
    fontFamily: 'Fira Sans',
    appBarTheme: AppBarTheme(
      color: _darkColors.green,
      titleTextStyle: TextStyle(
          color: _darkColors.white,
          fontSize: dimens.textDisplayLarge,
          fontWeight: FontWeight.w500),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: _darkColors.white,
      unselectedLabelColor: _darkColors.white,
    ),
    textTheme: AppTextTheme(
      colors: _darkColors,
      dimens: dimens,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          _darkColors.white,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: _darkColors.green,
      textTheme: ButtonTextTheme.normal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: dimens.textDisplayMedium,
            fontWeight: FontWeight.w500,
            color: _darkColors.white,
          ),
        ),
      ),
    ),
  );
}
