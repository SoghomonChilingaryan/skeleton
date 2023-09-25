import 'package:flutter/material.dart';
import 'package:player/src/common/res/app_text_styles.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.black,
    ),
    textTheme: AppTextStyles.txtTheme,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.white,
    ),
    textTheme: AppTextStyles.txtTheme,
  );
}
