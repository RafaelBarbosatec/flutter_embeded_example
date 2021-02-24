import 'package:test_flutter/pages/first/first_screen.dart';
import 'package:test_flutter/pages/second/second_screen.dart';

class MyRoutes {
  static final ROUTES = {
    '/first': (context) => FirstScreen(),
    '/second': (context) => SecondScreen(),
  };
}
