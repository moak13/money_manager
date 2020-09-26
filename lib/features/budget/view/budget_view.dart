import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/budget_viewmodel.dart';

class BudgetView extends StatelessWidget {
  const BudgetView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double scaleHeight = height / 100;
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width / 100;
    double sizeText = MediaQuery.of(context).textScaleFactor;
    return ViewModelBuilder<BudgetViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Budget'),
            ),
            body: ListView(
              padding: const EdgeInsets.all(20),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Category:',
                        style: TextStyle(
                          fontSize: sizeText * 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: scaleHeight * 6,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Title',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: scaleHeight * 2,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Amount',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: scaleHeight * 2,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: scaleHeight * 10,
                    width: scaleWidth * 5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: sizeText * 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ));
      },
      viewModelBuilder: () => BudgetViewModel(),
    );
  }
}
