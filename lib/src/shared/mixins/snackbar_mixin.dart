import 'package:flutter/material.dart';

mixin SnackbarMixin<T extends StatefulWidget> on State<T> {
  void showSnack(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color ?? Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
