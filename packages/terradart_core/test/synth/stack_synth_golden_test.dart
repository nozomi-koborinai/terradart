import 'dart:convert';

import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/duration_helper.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/synth/stack_synth.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';

void main() {
  group('StackSynth — minimal Pub/Sub topic stack', () {
    test('produces correct main.tf.json shape', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
            configArgs: {
              'project': 'orders-prod-1234',
              'region': 'us-central1',
            },
          ),
        ],
      );
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {
            'name': TfArgLiteral<String>('orders-prod'),
            'message_retention_duration': TfArgLiteral<String>('604800s'),
          },
        ),
      );

      final result = StackSynth.synth(stack);

      expect(
        result.tfJson,
        equals({
          'terraform': {
            'required_version': '>= 1.11.0',
            'required_providers': {
              'google': {'source': 'hashicorp/google', 'version': '~> 7.0'},
            },
          },
          'provider': {
            'google': {'project': 'orders-prod-1234', 'region': 'us-central1'},
          },
          'resource': {
            'google_pubsub_topic': {
              'orders': {
                'name': 'orders-prod',
                'message_retention_duration': '604800s',
              },
            },
          },
        }),
      );
      expect(result.dartSource, isNull);
    });

    test('replace_triggered_by uses bare address in tf.json', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final ordersTopic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      // `replace_triggered_by` accepts `TfRef<dynamic>`; we point at the
      // stable computed `id` attribute.
      final triggerRef = TfRef.attribute<dynamic>(ordersTopic, 'id');
      stack.add(
        FakePubsubTopic.withMeta(
          localName: 'audit',
          argMap: const {'name': TfArgLiteral<String>('audit-prod')},
          lifecycle: LifecycleOptions(replaceTriggeredBy: [triggerRef]),
          dependsOn: <DependencyTarget>[ResourceDependency(ordersTopic)],
        ),
      );

      final result = StackSynth.synth(stack);

      final auditBlock =
          (result.tfJson['resource']
                  as Map<String, dynamic>)['google_pubsub_topic']['audit']
              as Map<String, dynamic>;
      final lifecycle = auditBlock['lifecycle'] as Map<String, dynamic>;
      expect(
        lifecycle['replace_triggered_by'],
        equals(['google_pubsub_topic.orders.id']),
      );
      expect(auditBlock['depends_on'], equals(['google_pubsub_topic.orders']));
      // Critical: NEITHER value is wrapped in ${}.
      final replace = lifecycle['replace_triggered_by']! as List<dynamic>;
      expect(replace[0], isNot(startsWith(r'${')));
      final deps = auditBlock['depends_on']! as List<dynamic>;
      expect(deps[0], isNot(startsWith(r'${')));
    });

    test('Data sources emit data {} block separate from resource', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      stack.addData(
        FakeProjectData(
          localName: 'this',
          argMap: const {'project_id': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );

      final result = StackSynth.synth(stack);

      expect(
        result.tfJson['data'],
        equals({
          'google_project': {
            'this': {'project_id': 'orders-prod'},
          },
        }),
      );
      expect(
        result.tfJson['resource'],
        equals({
          'google_pubsub_topic': {
            'orders': {'name': 'orders-prod'},
          },
        }),
      );
    });

    test('GCS backend renders correctly', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
        backend: const GcsBackend(
          bucket: 'tfstate-orders',
          prefix: 'envs/prod',
        ),
      );
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );

      final result = StackSynth.synth(stack);

      final terraform = result.tfJson['terraform'] as Map<String, dynamic>;
      expect(
        terraform['backend'],
        equals({
          'gcs': {'bucket': 'tfstate-orders', 'prefix': 'envs/prod'},
        }),
      );
    });

    test('Stack.setRequiredVersion override propagates', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      )..setRequiredVersion('>= 1.6.0');

      final result = StackSynth.synth(stack);
      final terraform = result.tfJson['terraform'] as Map<String, dynamic>;
      expect(terraform['required_version'], equals('>= 1.6.0'));
    });

    test('Duration.toTfDurationString flows through synth', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: {
            'name': const TfArgLiteral<String>('orders-prod'),
            'message_retention_duration': TfArgLiteral<String>(
              const Duration(days: 7).toTfDurationString(),
            ),
          },
        ),
      );

      final result = StackSynth.synth(stack);
      final resourceTopic =
          ((result.tfJson['resource']
                      as Map<String, dynamic>)['google_pubsub_topic']
                  as Map<String, dynamic>)['orders']
              as Map<String, dynamic>;
      expect(resourceTopic['message_retention_duration'], equals('604800s'));
    });

    test('synth output is JSON-encodable', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );

      final result = StackSynth.synth(stack);
      // Must not throw — any unconverted TfArg/TfRef would raise here.
      final json = jsonEncode(result.tfJson);
      expect(jsonDecode(json), equals(result.tfJson));
    });
  });
}
