import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../locator.dart';
import '../models/category_model.dart';

class CategoryViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  List<CategoryModel> _categoryIncomeList = incomeCategory;
  List<CategoryModel> get categoryIncomeList => _categoryIncomeList;

  List<CategoryModel> _categoryExpenseList = expenseCategory;
  List<CategoryModel> get categoryExpenseList => _categoryExpenseList;

  moveToBudget(CategoryModel categoryModel) {
    print(categoryModel.title);
    navigationService.navigateTo('/budget-view');
  }
}
