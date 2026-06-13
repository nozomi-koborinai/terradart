import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/time.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

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

    test('emits destroy_duration and triggers when set', () {
      final sleep = TimeSleep(
        localName: 'wait',
        createDuration: TfArg.duration(const Duration(seconds: 30)),
        destroyDuration: TfArg.duration(const Duration(seconds: 10)),
        triggers: TfArg.literal({'svc': r'${google_project_service.api.id}'}),
      );
      expect(sleep.argMap['create_duration']!.toTfJson(), '30s');
      expect(sleep.argMap['destroy_duration']!.toTfJson(), '10s');
      expect(sleep.argMap['triggers']!.toTfJson(), {
        'svc': r'${google_project_service.api.id}',
      });
    });

    test('id ref targets the time_sleep address', () {
      final sleep = TimeSleep(
        localName: 'wait',
        createDuration: TfArg.literal('60s'),
      );
      expect(sleep.id.interpolation, r'${time_sleep.wait.id}');
    });
  });

  group('TimeProvider', () {
    test('registers hashicorp/time in synth', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      stack.add(
        TimeSleep(
          localName: 'wait',
          createDuration: TfArg.duration(const Duration(seconds: 30)),
        ),
      );
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
