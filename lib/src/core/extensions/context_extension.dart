import 'package:flutter/material.dart';

/// How to use
/// Text('Hello', style: context.text.bodyMedium)
/// Container(color: context.colors.primary)

extension ContextExtension on BuildContext {
  TextTheme get text => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
}
