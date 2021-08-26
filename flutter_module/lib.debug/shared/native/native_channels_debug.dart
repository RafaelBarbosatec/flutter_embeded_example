
import 'package:test_flutter/shared/native/native_channels.dart';

class NativeChannelsDebug implements NativeChannels {

  Future sendMethod(String method) {
    print('NativeChannels(senMethod): $method');
    return Future.value();
  }
}
