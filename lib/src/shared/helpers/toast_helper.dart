import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper {
  static void show(String message, {int durationSeconds = 2}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: durationSeconds,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
