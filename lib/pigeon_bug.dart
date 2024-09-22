import 'messages.g.dart';

class PigeonBug {
  final IntPigeonBugApi _api = IntPigeonBugApi();

  Future<void> testIntFunction(final int number) {
    return _api.testIntFunction(number);
  }
}
