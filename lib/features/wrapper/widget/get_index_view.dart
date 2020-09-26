import 'package:flutter/material.dart';

import '../../chart/view/chart_view.dart';
import '../../home/view/home_view.dart';

class GetIndexView extends StatelessWidget {
  final int index;
  const GetIndexView({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return ChartView();
      default:
        return HomeView();
    }
  }
}
