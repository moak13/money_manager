// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../features/budget/view/budget_view.dart';
import '../../features/category/view/category_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../../features/wrapper/view/wrapper.dart';

class Routes {
  static const String splashView = '/';
  static const String wrapperView = '/wrapper-view';
  static const String categoryView = '/category-view';
  static const String budgetView = '/budget-view';
  static const all = <String>{
    splashView,
    wrapperView,
    categoryView,
    budgetView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.wrapperView, page: WrapperView),
    RouteDef(Routes.categoryView, page: CategoryView),
    RouteDef(Routes.budgetView, page: BudgetView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SplashView(),
        settings: data,
      );
    },
    WrapperView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const WrapperView(),
        settings: data,
      );
    },
    CategoryView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const CategoryView(),
        settings: data,
      );
    },
    BudgetView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const BudgetView(),
        settings: data,
      );
    },
  };
}
