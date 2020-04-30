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
    floatingActionButtonTheme: baseTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: AppColorsLight.gaColor,
      foregroundColor: AppColorsLight.gaColor,
    ),
    scaffoldBackgroundColor: AppColorsLight.kWhite,
    backgroundColor: AppColorsLight.kWhite,
    iconTheme: baseTheme.iconTheme.copyWith(
      color: AppColorsLight.kWhite,
    ),
    primaryIconTheme: baseTheme.primaryIconTheme.copyWith(
      color: AppColorsLight.kWhite,
    ),
    textTheme: baseTheme.textTheme.copyWith(),
  );
}

// ===== ThemeData for dark theme =====
ThemeData darkThemeData() {
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
    floatingActionButtonTheme: baseTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: AppColorsLight.gaColor,
      foregroundColor: AppColorsLight.gaColor,
    ),
    scaffoldBackgroundColor: AppColorsLight.kWhite,
    backgroundColor: AppColorsLight.kWhite,
    iconTheme: baseTheme.iconTheme.copyWith(
      color: AppColorsLight.kWhite,
    ),
    primaryIconTheme: baseTheme.primaryIconTheme.copyWith(
      color: AppColorsLight.tlColor,
    ),
    textTheme: baseTheme.textTheme.copyWith(),
  );
}
