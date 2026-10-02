import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/synth/synth_issue.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_timeouts.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';
import 'helpers/synth_issues.dart';

void main() {
  group('TfTimeouts', () {
    test('emits only the operations that are set, in Terraform order', () {
      const t = TfTimeouts(
        create: Duration(minutes: 30),
        delete: Duration(hours: 1, minutes: 30),
      );
      expect(t.isEmpty, isFalse);
      expect(t.toTfJson(), equals({'create': '30m', 'delete': '1h30m'}));
      expect(t.toTfJson()!.keys.toList(), equals(['create', 'delete']));
    });

    test('an empty block emits nothing', () {
      const t = TfTimeouts();
      expect(t.isEmpty, isTrue);
      expect(t.toTfJson(), isNull);
    });

    test('a Duration is written in the units Go reads', () {
      for (final (duration, text) in [
        (const Duration(seconds: 90), '1m30s'),
        (const Duration(minutes: 90), '1h30m'),
        (const Duration(hours: 26), '26h'),
        (const Duration(milliseconds: 1500), '1s500ms'),
        (const Duration(microseconds: 7), '7us'),
        (Duration.zero, '0s'),
        (const Duration(minutes: -5), '-5m'),
      ]) {
        expect(goDurationString(duration), text, reason: '$duration');
      }
    });

    test('parseGoDuration reads what Terraform accepts', () {
      for (final (text, duration) in [
        ('30m', const Duration(minutes: 30)),
        ('1h30m', const Duration(hours: 1, minutes: 30)),
        ('90m', const Duration(minutes: 90)),
        ('2.5s', const Duration(milliseconds: 2500)),
        ('0.1s', const Duration(milliseconds: 100)),
        ('1500ms', const Duration(milliseconds: 1500)),
        ('3000ns', const Duration(microseconds: 3)),
      ]) {
        expect(parseGoDuration(text), duration, reason: text);
      }
      for (final text in [
        '30',
        '',
        '-5m',
        'half an hour',
        r'${var.t}',
        '1ns',
      ]) {
        expect(parseGoDuration(text), isNull, reason: text);
      }
    });

    test('a negative duration is an invalid operation', () {
      expect(
        const TfTimeouts(
          create: Duration(minutes: 30),
          read: Duration(minutes: -5),
        ).invalidOperations,
        [('read', '-5m')],
      );
      expect(
        const TfTimeouts(create: Duration(minutes: 30)).invalidOperations,
        isEmpty,
      );
    });

    test('synth reports a negative timeout as an InvalidTimeout', () {
      final stack =
          TestStack(
            providers: const [
              FakeStackProvider(
                providerName: 'google',
                source: 'hashicorp/google',
                versionConstraint: '~> 7.0',
              ),
            ],
          )..add(
            FakePubsubTopic.withMeta(
              'orders',
              argMap: const {},
              timeouts: const TfTimeouts(delete: Duration(seconds: -30)),
            ),
          );
      expect(
        () => stack.synth(),
        throwsSynthIssue<InvalidTimeout>(
          'google_pubsub_topic.orders: timeouts.delete is -30s; a timeout '
          'cannot be negative.',
        ),
      );
    });

    test('value equality', () {
      const thirty = Duration(minutes: 30);
      expect(
        const TfTimeouts(create: thirty),
        equals(const TfTimeouts(create: thirty)),
      );
      expect(
        const TfTimeouts(create: thirty),
        isNot(equals(const TfTimeouts(create: Duration(minutes: 31)))),
      );
      expect(
        const TfTimeouts(create: thirty).hashCode,
        equals(const TfTimeouts(create: thirty).hashCode),
      );
      expect(const TfTimeouts(create: thirty).toString(), contains('30m'));
    });
  });

  group('synth', () {
    test('a resource carries its timeouts block', () {
      final r = FakePubsubTopic.withMeta(
        'orders',
        argMap: const {'name': TfArgLiteral<String>('orders')},
        timeouts: const TfTimeouts(
          create: Duration(minutes: 30),
          update: Duration(minutes: 30),
        ),
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
        'orders',
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
        ..add(
          FakeProjectData(
            'current',
            argMap: const {'project_id': TfArgLiteral<String>('demo')},
            timeouts: const TfTimeouts(read: Duration(minutes: 5)),
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
