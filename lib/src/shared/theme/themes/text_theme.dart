import 'package:cats_app/src/shared/theme/color_scheme.dart';
import 'package:flutter/material.dart';

final _textThemeType = Typography.material2018().white;

final TextTheme defaultTextTheme = _textThemeType.copyWith(
  headline1: _textThemeType.headline1?.copyWith(
    color: catsAppColorScheme.secondary,
    fontSize: 34.0,
    height: 1.06,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
  ),
  headline2: _textThemeType.bodyText1?.copyWith(
    color: catsAppColorScheme.secondary,
    fontSize: 16.0,
    height: 1.5,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    fontFamily: 'Roboto',
  ),
  bodyText1: _textThemeType.bodyMedium?.copyWith(
    color: catsAppColorScheme.onSecondary,
    fontSize: 16.0,
    height: 1.5,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    fontFamily: 'Roboto',
  ),
  bodyText2: _textThemeType.bodySmall?.copyWith(
    color: catsAppColorScheme.onSecondary,
    fontSize: 12.0,
    height: 1.33,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    fontFamily: 'Roboto',
  ),
  button: _textThemeType.button?.copyWith(
    color: catsAppColorScheme.tertiary,
    fontSize: 14.0,
    height: 1.14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    fontFamily: 'Roboto',
  ),
  caption: _textThemeType.caption?.copyWith(
    color: catsAppColorScheme.primary,
    fontSize: 12.0,
    height: 1.33,
    letterSpacing: 0.4,
    fontFamily: 'Roboto',
  ),
);
