import 'package:flutter/material.dart';
import 'package:food_test/core/const/configuration_size_app.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';

import 'configuration_color_app.dart';

final themeApp = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: background,
  dividerColor: onDividerSecondaryColor,
  appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      toolbarTextStyle: TextStyle(
          color: text,
          fontSize: toolbarFontSize,
          fontWeight: FontWeight.normal),
      titleTextStyle: TextStyle(
          color: text,
          fontSize: toolbarFontSize,
          fontWeight: FontWeight.normal)),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: icons, backgroundColor: accentColor, splashColor: icons),
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          iconColor: MaterialStateProperty.resolveWith<Color>((state) => icons),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (states) => const TextStyle(color: text)),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => dividerColor))),
  cardTheme: CardTheme(
    surfaceTintColor: cardColor,
    color: cardColor,
    elevation: elevationMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusMedium),
    ),
    margin: const EdgeInsets.only(
        left: simpleSeparation, right: simpleSeparation, top: simpleSeparation),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: primaryDarkColor,
    secondary: text,
    onSecondary: text,
    tertiary: onText,
    error: errorColor,
    onError: errorColor,
    background: background,
    onBackground: background,
    surface: background,
    onSurface: dividerColor,
  ),
);
