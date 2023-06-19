import 'package:test_flutter/shared/native/navigator_channel.dart';

class NavigatorChannelDebug implements NavigatorChannel {
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
