import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_timeouts.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

void main() {
  group('TfTimeouts', () {
    test('emits only the operations that are set, in Terraform order', () {
      const t = TfTimeouts(create: '30m', delete: '1h30m');
      expect(t.isEmpty, isFalse);
      expect(
        t.toTfJson(),
        equals({'create': '30m', 'delete': '1h30m'}),
      );
      expect(t.toTfJson()!.keys.toList(), equals(['create', 'delete']));
    });

    test('an empty block emits nothing', () {
      const t = TfTimeouts();
      expect(t.isEmpty, isTrue);
      expect(t.toTfJson(), isNull);
    });

    test('every unit Go parses is accepted', () {
      for (final value in ['90s', '30m', '1h', '1h30m', '1500ms', '2.5s']) {
        expect(
          TfTimeouts(create: value).toTfJson(),
          equals({'create': value}),
          reason: value,
        );
      }
    });

    test('a value that is not a duration string is refused', () {
      for (final value in ['30', '', 'half an hour', '-5m', r'${var.t}']) {
        expect(
          () => TfTimeouts(read: value).toTfJson(),
          throwsA(isA<ArgumentError>()),
          reason: value,
        );
      }
    });

    test('TfTimeouts.of renders Durations as whole seconds', () {
      expect(
        TfTimeouts.of(
          create: const Duration(minutes: 30),
          delete: const Duration(hours: 1, minutes: 30),
        ).toTfJson(),
        equals({'create': '1800s', 'delete': '5400s'}),
      );
    });

    test('TfTimeouts.of refuses a sub-second or negative Duration', () {
      expect(
        () => TfTimeouts.of(create: const Duration(milliseconds: 500)),
        throwsA(isA<ArgumentError>()),
      );
      expect(
        () => TfTimeouts.of(update: const Duration(seconds: -1)),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('value equality', () {
      expect(
        const TfTimeouts(create: '30m'),
        equals(const TfTimeouts(create: '30m')),
      );
      expect(
        const TfTimeouts(create: '30m'),
        isNot(equals(const TfTimeouts(create: '31m'))),
      );
      expect(
        const TfTimeouts(create: '30m').hashCode,
        equals(const TfTimeouts(create: '30m').hashCode),
      );
      expect(const TfTimeouts(create: '30m').toString(), contains('30m'));
    });
  });

  group('synth', () {
    test('a resource carries its timeouts block', () {
      final r = FakePubsubTopic.withMeta(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders')},
        timeouts: const TfTimeouts(create: '30m', update: '30m'),
      );
      expect(
        TfJsonEncoder.resourceBlock(r),
        equals({
          'name': 'orders',
          'timeouts': {'create': '30m', 'update': '30m'},
        }),
      );
    });

    test('an empty timeouts block emits no key', () {
      final r = FakePubsubTopic.withMeta(
        localName: 'orders',
        argMap: const {'name': TfArgLiteral<String>('orders')},
        timeouts: const TfTimeouts(),
      );
      expect(TfJsonEncoder.resourceBlock(r), equals({'name': 'orders'}));
    });

    test('a data source carries its timeouts block', () {
      const google = FakeStackProvider(
        providerName: 'google',
        source: 'hashicorp/google',
        versionConstraint: '~> 7.0',
      );
      final stack = TestStack(providers: const [google])
        ..addData(
          FakeProjectData(
            localName: 'current',
            argMap: const {'project_id': TfArgLiteral<String>('demo')},
            timeouts: const TfTimeouts(read: '5m'),
          ),
        );
      expect(
        (TfJsonEncoder.dataGroup(stack)!['google_project'] as Map)['current'],
        equals({
          'project_id': 'demo',
          'timeouts': {'read': '5m'},
        }),
      );
    });
  });
}
