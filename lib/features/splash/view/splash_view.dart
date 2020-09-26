import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.attach_money),
              Text('Money Manager'),
            ],
          )),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
