import 'package:stacked/stacked.dart';

import '../models/transaction_model.dart';

class HomeViewModel extends BaseViewModel {
  List<TransactionModel> _transactionListData = transactionData;
  List<TransactionModel> get transactionListData => _transactionListData;

  double _income = 5000;
  double get income => _income;

  double _expenses = 2000;
  double get expenses => _expenses;

  double _balance = 3000;
  double get balance => _balance;
}
