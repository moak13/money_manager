import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double sizeText = MediaQuery.of(context).textScaleFactor;
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) => model.handleMove(),
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
              height: height,
              width: width,
              alignment: Alignment.center,
              color: Theme.of(context).primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.attach_money,
                    size: sizeText * 150,
                    color: Colors.white,
                  ),
                  Text(
                    'Money Manager',
                    style: TextStyle(
                      fontSize: sizeText * 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
