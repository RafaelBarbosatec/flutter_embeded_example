import 'package:flutter/material.dart';
import 'package:test_flutter/shared/navigation/route.dart';

import 'injector_debug.dart';
import 'pages/dashboard.dart';

void main() {
  InjectorDebug.injectDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => DashBoard(),
      }..addAll(MyRoutes.ROUTES),
    );
  }
}
