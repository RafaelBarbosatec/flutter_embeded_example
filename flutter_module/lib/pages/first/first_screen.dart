import 'package:flutter/material.dart';
import 'package:test_flutter/main.dart';
import 'package:test_flutter/shared/native/native_channels.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _counter = 0;
  NativeChannels nativeChannels;

  @override
  void initState() {
    nativeChannels = RUN_DEV ? NativeChannelsDebug() : NativeChannels();
    nativeChannels.senMethod('Hello native');
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    _send();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button kkkk:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _send({String text}) {
    nativeChannels.senMethod(text ?? 'count: $_counter');
  }
}
