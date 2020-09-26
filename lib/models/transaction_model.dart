import 'dart:convert';

class TransactionModel {
  final String title;
  final double amount;
  final bool isExpenses;
  TransactionModel({
    this.title,
    this.amount,
    this.isExpenses,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'amount': amount,
      'isExpenses': isExpenses,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return TransactionModel(
      title: map['title'],
      amount: map['amount'],
      isExpenses: map['isExpenses'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionModel.fromJson(String source) =>
      TransactionModel.fromMap(json.decode(source));
}

List<TransactionModel> transactionData = [
  TransactionModel(
    title: 'Dog Food',
    amount: 900,
    isExpenses: true,
  ),
  TransactionModel(
    title: 'Bus Ticket',
    amount: 100,
    isExpenses: true,
  ),
  TransactionModel(
    title: 'Salary',
    amount: 150000,
    isExpenses: false,
  ),
  TransactionModel(
    title: 'Savings',
    amount: 3000,
    isExpenses: false,
  ),
  TransactionModel(
    title: 'Medicine',
    amount: 1500,
    isExpenses: true,
  ),
  TransactionModel(
    title: 'Books',
    amount: 2000,
    isExpenses: true,
  ),
  TransactionModel(
    title: 'Donations',
    amount: 5000,
    isExpenses: false,
  ),
];
