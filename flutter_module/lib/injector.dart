import 'package:get_it/get_it.dart';
import 'package:test_flutter/shared/native/native_channels.dart';
import 'package:test_flutter/shared/native/navigator_channel.dart';

final _getIt = GetIt.instance;

class Injector {
  static void injectDependencies() {
    _getIt.registerLazySingleton(() => NativeChannels());
    _getIt.registerLazySingleton(() => NavigatorChannel());
  }

  static T get<T extends Object>() {
    return _getIt.get<T>();
  }
}
