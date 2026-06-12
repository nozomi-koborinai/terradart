import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

void main() {
  group('TimeSleep', () {
    test('emits create_duration in argMap', () {
      final sleep = TimeSleep(
        localName: 'wait',
        createDuration: TfArg.literal('60s'),
      );
      expect(sleep.terraformType, 'time_sleep');
      expect(sleep.argMap['create_duration']!.toTfJson(), '60s');
    });
  });

  group('TimeProvider', () {
    test('registers hashicorp/time in synth', () {
      final stack = _SleepStack();
      final json = stack.synth().tfJson;
      final required = json['terraform']! as Map<String, dynamic>;
      final providers = required['required_providers']! as Map<String, dynamic>;
      expect(providers['time'], {
        'source': 'hashicorp/time',
        'version': '~> 0.12',
      });
    });
  });
}

final class _SleepStack extends Stack {
  _SleepStack() : super(providers: [const TimeProvider()]) {
    add(
      TimeSleep(
        localName: 'wait',
        createDuration: TfArg.duration(const Duration(seconds: 30)),
      ),
    );
  }
}
