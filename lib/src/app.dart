import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/core/constants/app_constants.dart';
import 'package:flutter_boilerplate/src/core/extensions/context_extension.dart';
import 'package:flutter_boilerplate/src/core/theme/app_theme.dart';
import 'package:flutter_boilerplate/src/core/utils/size_utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, _) {
        SizeUtils.init(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppConstants.appName)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Text('Get Starter', style: context.text.bodyMedium)],
      ),
    );
  }
}
