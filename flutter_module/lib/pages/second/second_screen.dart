import 'package:flutter/material.dart';
import 'package:test_flutter/injector.dart';
import 'package:test_flutter/shared/native/navigator_channel.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Second Screen'),
            ElevatedButton(
              onPressed: () {
                Injector.get<NavigatorChannel>().goToSecondScreen();
              },
              child: Text('Go second native screen'),
            )
          ],
        ),
      ),
    );
  }
}
