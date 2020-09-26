import 'package:auto_route/auto_route_annotations.dart';

import '../../features/budget/view/budget_view.dart';
import '../../features/category/view/category_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../../features/wrapper/view/wrapper.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: SplashView, initial: true),
  AdaptiveRoute(page: WrapperView),
  AdaptiveRoute(page: CategoryView),
  AdaptiveRoute(page: BudgetView),
])
class $Router {}
