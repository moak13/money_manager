import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/budget_viewmodel.dart';

class BudgetView extends StatelessWidget {
  const BudgetView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BudgetViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
            body: Center(
          child: Text('Budget View'),
        ));
      },
      viewModelBuilder: () => BudgetViewModel(),
    );
  }
}
