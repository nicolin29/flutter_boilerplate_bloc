import 'package:flutter/material.dart';

/// Central place for all app colors.
/// Use only constants — never hardcode colors in widgets.
class AppColors {
  // 🌞 Light theme colors
  static const Color primary = Color(0xFF0066FF);
  static const Color primaryLight = Color(0xFF5AA9FF);
  static const Color primaryDark = Color(0xFF0044AA);

  static const Color background = Color(0xFFF9F9F9);
  static const Color surface = Colors.white;

  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6B6B6B);
  static const Color textDisabled = Color(0xFF9E9E9E);

  static const Color border = Color(0xFFE0E0E0);
  static const Color divider = Color(0xFFEEEEEE);

  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFF44336);

  // 🌙 Dark theme colors
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkTextPrimary = Color(0xFFF5F5F5);
  static const Color darkTextSecondary = Color(0xFFBDBDBD);
}
