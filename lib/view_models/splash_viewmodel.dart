import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../locator.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void _nextPage() {
    _navigationService.pushNamedAndRemoveUntil('/wrapper-view');
  }

  Future handleMove() async {
    Duration duration = Duration(seconds: 5);
    return Timer(duration, _nextPage);
  }
}
