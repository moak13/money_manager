import 'package:stacked/stacked.dart';

class ChartViewModel extends BaseViewModel {
  Map<String, double> _dataMap = {
    "Pet": 2,
    "Salary": 5,
    "Transport": 2,
    "Drugs": 1,
  };
  Map<String, double> get dataMap => _dataMap;
}
