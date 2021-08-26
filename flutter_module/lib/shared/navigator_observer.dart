import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) async {
    if (previousRoute?.settings.name == '/') {
      SystemNavigator.pop(animated: true);
    }
    super.didPop(route, previousRoute);
  }
}
