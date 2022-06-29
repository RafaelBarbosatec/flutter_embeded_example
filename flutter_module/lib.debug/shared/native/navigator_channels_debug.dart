import 'package:test_flutter/shared/native/navigator_channels.dart';

class NativeChannelsDebug implements NavigatorChannels {
  Future sendMethod(String method) {
    print('NativeChannels(senMethod): $method');
    return Future.value();
  }

  @override
  Future? goToSecondScreen() {
    print('NativeChannelsDebug(goToSecondScreen)');
    return Future.value();
  }
}
