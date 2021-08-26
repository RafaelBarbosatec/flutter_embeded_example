import 'package:get_it/get_it.dart';
import 'package:test_flutter/shared/native/native_channels.dart';

import 'shared/native/native_channels_debug.dart';

final _getIt = GetIt.instance;

class InjectorDebug {
  static void injectDependencies() {
    _getIt.registerLazySingleton<NativeChannels>(() => NativeChannelsDebug());
  }
}
