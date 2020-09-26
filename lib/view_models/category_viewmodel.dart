import 'package:money_manager/models/category_model.dart';
import 'package:stacked/stacked.dart';

class CategoryViewModel extends BaseViewModel {
  List<CategoryModel> _categoryIncomeList = incomeCategory;
  List<CategoryModel> get categoryIncomeList => _categoryIncomeList;

  List<CategoryModel> _categoryExpenseList = expenseCategory;
  List<CategoryModel> get categoryExpenseList => _categoryExpenseList;
}
