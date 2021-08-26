import 'package:flutter/services.dart';

class NativeChannels {
  final MethodChannel _platformTest = MethodChannel('TestChannel');

  Future? sendMethod(String method) {
    return _platformTest.invokeMethod(method);
  }
}
