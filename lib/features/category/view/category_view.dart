import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/category_viewmodel.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
            body: Center(
          child: Text('Category View'),
        ));
      },
      viewModelBuilder: () => CategoryViewModel(),
    );
  }
}
