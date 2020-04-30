import 'package:flutter/material.dart';
import 'package:whatsapp_clone/styles/colors.dart';

// ===== ThemeData for light theme =====
ThemeData lightThemeData() {
  final baseTheme = ThemeData.light();
  return baseTheme.copyWith(
    tabBarTheme: baseTheme.tabBarTheme.copyWith(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColorsLight.kWhite,
          width: 2.0,
        ),
      ),
      labelColor: AppColorsLight.kWhite,
      unselectedLabelColor: AppColorsLight.tlColor,
    ),
    brightness: Brightness.light,
    accentColor: AppColorsLight.gaColor,
    primaryColor: AppColorsLight.tColor,
    primaryColorDark: AppColorsLight.tdColor,
    floatingActionButtonTheme: baseTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: AppColorsLight.gaColor,
      foregroundColor: AppColorsLight.kWhite,
    ),
    scaffoldBackgroundColor: AppColorsLight.bgColor,
    backgroundColor: AppColorsLight.bgColor,
    iconTheme: baseTheme.iconTheme.copyWith(
      color: AppColorsLight.kWhite,
    ),
    primaryIconTheme: baseTheme.primaryIconTheme.copyWith(
      color: AppColorsLight.kWhite,
    ),
    accentIconTheme: baseTheme.accentIconTheme.copyWith(
      color: AppColorsLight.kWhite,
    ),
    textTheme: baseTheme.textTheme.apply(
      fontFamily: 'Roboto',
    ),
  );
}

// ===== ThemeData for dark theme =====
ThemeData darkThemeData() {
  final baseTheme = ThemeData.dark();
  return baseTheme.copyWith(
    tabBarTheme: baseTheme.tabBarTheme.copyWith(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColorsDark.taColor,
          width: 2.0,
        ),
      ),
      labelColor: AppColorsDark.tColor,
      unselectedLabelColor: AppColorsDark.gdColor,
    ),
    brightness: Brightness.dark,
    accentColor: AppColorsDark.taColor,
    primaryColor: AppColorsDark.bGColor,
    primaryColorDark: AppColorsDark.bgColor,
    floatingActionButtonTheme: baseTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: AppColorsDark.taColor,
      foregroundColor: AppColorsDark.kWhite,
    ),
    scaffoldBackgroundColor: AppColorsDark.bgColor,
    backgroundColor: AppColorsDark.bgColor,
    iconTheme: baseTheme.iconTheme.copyWith(
      color: AppColorsDark.gdColor,
    ),
    primaryIconTheme: baseTheme.primaryIconTheme.copyWith(
      color: AppColorsDark.gdColor,
    ),
    accentIconTheme: baseTheme.accentIconTheme.copyWith(
      color: AppColorsDark.gdColor,
    ),
    textTheme: baseTheme.textTheme.apply(
      fontFamily: 'Roboto',
    ),
  );
}
