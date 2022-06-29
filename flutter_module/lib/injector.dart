import 'package:get_it/get_it.dart';
import 'package:test_flutter/shared/native/native_channels.dart';
import 'package:test_flutter/shared/native/navigator_channels.dart';

final _getIt = GetIt.instance;

class Injector {
  static void injectDependencies() {
    _getIt.registerLazySingleton(() => NativeChannels());
    _getIt.registerLazySingleton(() => NavigatorChannels());
  }

  static T get<T extends Object>() {
    return _getIt.get<T>();
  }
}
