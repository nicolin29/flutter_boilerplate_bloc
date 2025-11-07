import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/core/theme/app_colors.dart';
import 'package:flutter_boilerplate/src/core/theme/app_typography.dart';
import 'package:flutter_boilerplate/src/core/utils/size_utils.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.primaryLight,
        surface: AppColors.surface,
        surfaceContainer: AppColors.background,
        error: AppColors.error,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: AppTypography.baseFontMedium.sp,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}
