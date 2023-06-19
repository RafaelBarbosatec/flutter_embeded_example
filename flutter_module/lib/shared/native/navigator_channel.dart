import 'package:flutter/services.dart';

///
/// Created by
///
/// ─▄▀─▄▀
/// ──▀──▀
/// █▀▀▀▀▀█▄
/// █░░░░░█─█
/// ▀▄▄▄▄▄▀▀
///
/// Rafaelbarbosatec
/// on 29/06/22
class NavigatorChannel {
  final MethodChannel _platformTest = MethodChannel('NavigatorChannel');

  Future? sendMethod(String method) {
    return _platformTest.invokeMethod(method);
  }

  Future? goToSecondScreen() {
    return _platformTest.invokeMethod('second');
  }
}
