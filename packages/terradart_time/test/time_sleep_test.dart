import 'package:terradart_time/terradart_time.dart';
import 'package:test/test.dart';

final class TestStack extends Stack {
  TestStack({super.providers = const []});
}

Map<String, dynamic> _synthedSleep(TimeSleep sleep) {
  final stack = TestStack(providers: const [TimeProvider()])..add(sleep);
  final resources = stack.synth().tfJson['resource'] as Map<String, dynamic>;
  return (resources['time_sleep'] as Map<String, dynamic>)[sleep.localName]
      as Map<String, dynamic>;
}

void main() {
  group('TimeSleep', () {
    test('emits create_duration in argMap', () {
      final sleep = TimeSleep('wait', createDuration: TfArg.literal('60s'));
      expect(sleep.terraformType, 'time_sleep');
      expect(sleep.argMap['create_duration']!.toTfJson(), '60s');
    });

    test('emits destroy_duration and triggers when set', () {
      final sleep = TimeSleep(
        'wait',
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

    test('a destroy-only wait synthesizes without create_duration', () {
      expect(
        _synthedSleep(
          TimeSleep('wait', destroyDuration: const .literal('10s')),
        ),
        {'destroy_duration': '10s'},
      );
    });

    test('a wait after create and before destroy synthesizes both', () {
      expect(
        _synthedSleep(
          TimeSleep(
            'wait',
            createDuration: const .literal('30s'),
            destroyDuration: const .literal('10s'),
          ),
        ),
        {'create_duration': '30s', 'destroy_duration': '10s'},
      );
    });

    test('a wait with neither duration is rejected', () {
      expect(() => TimeSleep('wait'), throwsArgumentError);
    });

    test('tfType names the Terraform type', () {
      expect(TimeSleep.tfType, 'time_sleep');
    });

    test('ref and the getters target the time_sleep address', () {
      final sleep = TimeSleep('wait', createDuration: TfArg.literal('60s'));
      expect(sleep.ref.encodeAs('id').toTfJson(), r'${time_sleep.wait.id}');
      expect(sleep.id.interpolation, r'${time_sleep.wait.id}');
      expect(
        sleep.createDuration.interpolation,
        r'${time_sleep.wait.create_duration}',
      );
      expect(
        sleep.destroyDuration.interpolation,
        r'${time_sleep.wait.destroy_duration}',
      );
      expect(sleep.triggers.interpolation, r'${time_sleep.wait.triggers}');
    });
  });

  group('TimeProvider', () {
    test('an alias re-synthesizes as time.<alias>', () {
      const slow = TimeProvider(alias: 'slow');
      final stack = TestStack()..addProvider(slow);
      stack.add(
        TimeSleep('wait', createDuration: TfArg.literal('60s'), provider: slow),
      );
      final json = stack.synth().tfJson;
      expect(
        (json['resource'] as Map)['time_sleep']['wait']['provider'],
        'time.slow',
      );
      expect(json['provider'], {
        'time': [
          {'alias': 'slow'},
        ],
      });
    });

    test('registers hashicorp/time in synth', () {
      expect(kTimeProviderSource, 'hashicorp/time');
      final stack = TestStack(providers: const [TimeProvider()]);
      stack.add(
        TimeSleep(
          'wait',
          createDuration: TfArg.duration(const Duration(seconds: 30)),
        ),
      );
      final json = stack.synth().tfJson;
      final required = json['terraform']! as Map<String, dynamic>;
      final providers = required['required_providers']! as Map<String, dynamic>;
      expect(providers['time'], {
        'source': kTimeProviderSource,
        'version': '~> 0.12',
      });
    });
  });
}
