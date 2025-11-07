import 'package:flutter/material.dart';

mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  bool _isLoading = false;

  void showLoading() {
    setState(() => _isLoading = true);
  }

  void hideLoading() {
    setState(() => _isLoading = false);
  }

  Widget buildLoadingOverlay({required Widget child}) {
    return Stack(
      children: [
        child,
        if (_isLoading)
          Container(
            color: Colors.black38,
            child: const Center(child: CircularProgressIndicator()),
          ),
      ],
    );
  }
}
