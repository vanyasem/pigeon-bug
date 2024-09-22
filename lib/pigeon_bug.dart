
import 'pigeon_bug_platform_interface.dart';

class PigeonBug {
  Future<String?> getPlatformVersion() {
    return PigeonBugPlatform.instance.getPlatformVersion();
  }
}
