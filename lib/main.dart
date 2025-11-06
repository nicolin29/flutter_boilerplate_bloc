import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/app.dart';
import 'package:flutter_boilerplate/src/config/app_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: DI Setup

  await dotenv.load(fileName: '.env');
  print(AppConfig.baseUrl);

  runApp(const App());
}
