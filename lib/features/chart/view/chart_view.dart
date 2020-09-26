import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:stacked/stacked.dart';

import '../../../view_models/chart_viewmodel.dart';

class ChartView extends StatelessWidget {
  const ChartView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double scaleHeight = height / 100;
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width / 100;
    double sizeText = MediaQuery.of(context).textScaleFactor;
    return ViewModelBuilder<ChartViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
            body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Choice:',
                    style: TextStyle(
                      fontSize: sizeText * 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: scaleHeight * 20,
            ),
            PieChart(
              dataMap: model.dataMap,
            )
          ],
        ));
      },
      viewModelBuilder: () => ChartViewModel(),
    );
  }
}
