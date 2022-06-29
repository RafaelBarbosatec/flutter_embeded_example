import 'package:test_flutter/pages/first/first_screen.dart';
import 'package:test_flutter/pages/second/second_screen.dart';

class MyRoutes {
  // ignore: non_constant_identifier_names
  static final ROUTES = {
    '/first': (context) => FirstScreen(),
    '/second': (context) => SecondScreen(),
  };
}
