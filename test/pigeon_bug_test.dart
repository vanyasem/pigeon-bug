import 'package:flutter_test/flutter_test.dart';
import 'package:pigeon_bug/pigeon_bug.dart';
import 'package:pigeon_bug/pigeon_bug_platform_interface.dart';
import 'package:pigeon_bug/pigeon_bug_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPigeonBugPlatform
    with MockPlatformInterfaceMixin
    implements PigeonBugPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PigeonBugPlatform initialPlatform = PigeonBugPlatform.instance;

  test('$MethodChannelPigeonBug is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPigeonBug>());
  });

  test('getPlatformVersion', () async {
    PigeonBug pigeonBugPlugin = PigeonBug();
    MockPigeonBugPlatform fakePlatform = MockPigeonBugPlatform();
    PigeonBugPlatform.instance = fakePlatform;

    expect(await pigeonBugPlugin.getPlatformVersion(), '42');
  });
}
