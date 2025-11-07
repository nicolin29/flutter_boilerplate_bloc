import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/app.dart';
import 'package:flutter_boilerplate/src/core/di/di.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  await initDI();

  runApp(const App());
}
