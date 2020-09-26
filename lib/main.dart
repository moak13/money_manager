import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/utils/router.gr.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money Manager',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: _navigationService.navigatorKey,
      initialRoute: Routes.splashView,
      onGenerateRoute: Router().onGenerateRoute,
    );
  }
}
