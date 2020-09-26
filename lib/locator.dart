import 'package:get_it/get_it.dart';
import 'package:money_manager/services/transaction_service.dart';
import 'package:stacked_services/stacked_services.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => TransactionService());
}
