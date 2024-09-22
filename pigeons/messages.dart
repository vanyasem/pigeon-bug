import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/messages.g.dart',
    javaOut: 'android/src/main/java/com/example/pigeon_bug/Messages.java',
    javaOptions: JavaOptions(
      package: 'com.example.pigeon_bug',
    ),
  ),
)
// ignore: unused_element, Only used for annotation
abstract interface class _DummyMessage {}

@HostApi()
abstract class IntPigeonBugApi {
  void testIntFunction(final int number);
}
