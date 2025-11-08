import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/core/router/app_router.dart';
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
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}

/// Explore Purpose: DELETED SOON
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SnackbarMixin, LoadingMixin {
  @override
  Widget build(BuildContext context) {
    return buildLoadingOverlay(
      child: Scaffold(
        appBar: AppBar(title: Text(AppConstants.appName)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Get Starter'),
            CustomButton(
              title: 'Click Me!',
              onPressed: () async {
                showSnack('Welcome!!');
                showLoading();
                await addDelay(seconds: 2);
                hideLoading();
                await addDelay(seconds: 2);
                ToastHelper.show('Success!!!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/
