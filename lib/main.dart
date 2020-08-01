import 'package:flutter/material.dart';
import 'package:flutterapp/app/locator.dart';
import 'package:flutterapp/app/router.gr.dart';
import 'package:flutterapp/ui/views/image_picker/image_picker_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: Routes.startupView,
      // Testing only
      home: ImagePickerView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
