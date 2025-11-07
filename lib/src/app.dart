import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/core/constants/app_constants.dart';
import 'package:flutter_boilerplate/src/core/extensions/context_extension.dart';
import 'package:flutter_boilerplate/src/core/theme/app_theme.dart';
import 'package:flutter_boilerplate/src/core/utils/app_utils.dart';
import 'package:flutter_boilerplate/src/core/utils/size_utils.dart';
import 'package:flutter_boilerplate/src/shared/helpers/toast_helper.dart';
import 'package:flutter_boilerplate/src/shared/mixins/loading_mixin.dart';
import 'package:flutter_boilerplate/src/shared/mixins/snackbar_mixin.dart';
import 'package:flutter_boilerplate/src/shared/widgets/custom_button.dart';

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
