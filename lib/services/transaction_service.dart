import 'package:money_manager/models/transaction_model.dart';

class TransactionService {
  final _transactionData = List<TransactionModel>();
  List<TransactionModel> get transactionData => _transactionData;
}
