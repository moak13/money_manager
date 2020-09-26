import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/category_viewmodel.dart';
import '../widget/category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double scaleHeight = height / 100;
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width / 100;
    double sizeText = MediaQuery.of(context).textScaleFactor;
    return ViewModelBuilder<CategoryViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Expense'),
            elevation: 0,
          ),
          body: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: model.categoryExpenseList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      model.moveToBudget(model.categoryExpenseList[index]);
                    },
                    child: CategoryCard(
                      scaleHeight: scaleHeight,
                      scaleWidth: scaleWidth,
                      sizeText: sizeText,
                      icon: model.categoryExpenseList[index].icon,
                      title: model.categoryExpenseList[index].title,
                    ));
              }),
        );
      },
      viewModelBuilder: () => CategoryViewModel(),
    );
  }
}
