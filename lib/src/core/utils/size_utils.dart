import 'package:flutter/material.dart';

class SizeUtils {
  static double _baseWidth = 375;
  static double _baseHeight = 812;

  static late MediaQueryData _mediaQueryData;
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _safeWidth;
  static late double _safeHeight;

  /// Initialize with context
  static void init(
    BuildContext context, {
    double? baseWidth,
    double? baseHeight,
  }) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;

    _safeWidth =
        _screenWidth -
        (_mediaQueryData.padding.left + _mediaQueryData.padding.right);
    _safeHeight =
        _screenHeight -
        (_mediaQueryData.padding.top + _mediaQueryData.padding.bottom);

    _baseWidth = baseWidth ?? _baseWidth;
    _baseHeight = baseHeight ?? _baseHeight;
  }

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get safeWidth => _safeWidth;
  static double get safeHeight => _safeHeight;

  static double w(double width) => (width / _baseWidth) * _screenWidth;
  static double h(double height) => (height / _baseHeight) * _screenHeight;
  static double sp(double fontSize) => (fontSize / _baseWidth) * _screenWidth;
}

extension SizeExtension on num {
  double get w => SizeUtils.w(toDouble());
  double get h => SizeUtils.h(toDouble());
  double get sp => SizeUtils.sp(toDouble());
}
