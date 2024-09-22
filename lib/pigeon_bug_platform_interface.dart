import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pigeon_bug_method_channel.dart';

abstract class PigeonBugPlatform extends PlatformInterface {
  /// Constructs a PigeonBugPlatform.
  PigeonBugPlatform() : super(token: _token);

  static final Object _token = Object();

  static PigeonBugPlatform _instance = MethodChannelPigeonBug();

  /// The default instance of [PigeonBugPlatform] to use.
  ///
  /// Defaults to [MethodChannelPigeonBug].
  static PigeonBugPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PigeonBugPlatform] when
  /// they register themselves.
  static set instance(PigeonBugPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
