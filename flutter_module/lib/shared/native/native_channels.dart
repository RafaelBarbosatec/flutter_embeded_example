import 'package:flutter/services.dart';

class NativeChannels {
  final MethodChannel _platformTest = MethodChannel('TestChannel');

  Future senMethod(String method) {
    return _platformTest.invokeMethod(method);
  }
}

class NativeChannelsDebug implements NativeChannels {
  @override
  MethodChannel get _platformTest => null;

  Future senMethod(String method) {
    return Future.value();
  }
}
