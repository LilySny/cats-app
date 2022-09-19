import 'package:cats_app/src/shared/theme/color_scheme.dart';
import 'package:flutter/material.dart';

final TextTheme buttonTheme = TextTheme(
  headlineLarge: TextStyle(
    color: catsAppColorScheme.secondary,
    fontSize: 34.0,
    height: 36.0,
    fontWeight: FontWeight.bold,
  ),
  bodyText1: TextStyle(
    color: catsAppColorScheme.secondary,
    fontSize: 16.0,
    height: 24.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  ),
  bodySmall: TextStyle(
    color: catsAppColorScheme.onSecondary,
    fontSize: 12.0,
    height: 16.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
  ),
  bodyMedium: TextStyle(
    color: catsAppColorScheme.onSecondary,
    fontSize: 16.0,
    height: 24.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  ),
  button: TextStyle(
    color: catsAppColorScheme.tertiary,
    fontSize: 14.0,
    height: 16.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  ),
  caption: TextStyle(
    color: catsAppColorScheme.primary,
    fontSize: 14.0,
    height: 16.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  ),
);
