import 'package:flutter/material.dart';
import 'package:test_flutter/shared/navigator_observer.dart';
import 'package:test_flutter/shared/route.dart';

bool RUN_DEV = false;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        MyNavigatorObserver(),
      ],
      routes: {
        '/': (context) => Container(color: Colors.white),
      }..addAll(MyRoutes.ROUTES),
    );
  }
}
