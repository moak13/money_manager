import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/chart_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChartViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
            body: Center(
          child: Text('Chart View'),
        ));
      },
      viewModelBuilder: () => ChartViewModel(),
    );
  }
}
