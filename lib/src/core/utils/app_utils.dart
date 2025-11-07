import 'dart:async';

Future<void> addDelay({required int seconds}) async {
  await Future.delayed(Duration(seconds: seconds));
}
