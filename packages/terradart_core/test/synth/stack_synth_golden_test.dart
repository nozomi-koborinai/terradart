import 'dart:convert' as conv;
import 'dart:io';

import 'package:terradart_core/src/app_export.dart';
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
              'google': {
                'source': 'hashicorp/google',
                'version': '~> 7.0',
              },
            },
          },
          'provider': {
            'google': {
              'project': 'orders-prod-1234',
              'region': 'us-central1',
            },
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
      expect(result.dartConstants, isNull);
    });

    test('literal-resolvable ResourceIdExport -> Dart constant only', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.addExport(
        'ordersTopicName',
        ResourceIdExport(TfRef.attribute<String>(topic, 'name')),
      );

      final result = StackSynth.synth(stack, stackName: 'Orders');

      expect(result.tfJson.containsKey('output'), isFalse);
      expect(
        result.dartConstants,
        equals('''// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: Orders
// dart format off
// ignore_for_file: type=lint

abstract final class OrdersExports {
  OrdersExports._();

  static const String ordersTopicName = r'orders-prod';
}
'''),
      );
    });

    test('computed-ref ResourceIdExport -> Terraform output, no Dart const',
        () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.addExport(
        'ordersTopicId',
        ResourceIdExport(
          TfRef.attribute<String>(topic, 'id'),
          emitTerraformOutput: true,
          description: 'Computed topic id.',
        ),
      );

      final result = StackSynth.synth(stack);

      expect(result.dartConstants, isNull);
      expect(
        result.tfJson['output'],
        equals({
          'ordersTopicId': {
            'value': r'${google_pubsub_topic.orders.id}',
            'description': 'Computed topic id.',
          },
        }),
      );
    });

    test('sensitive ResourceIdExport -> sensitive output only', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.addExport(
        'ordersTopicName',
        ResourceIdExport(
          TfRef.attribute<String>(topic, 'name'),
          emitTerraformOutput: true,
          sensitive: true,
          description: 'Sensitive topic name.',
        ),
      );

      final result = StackSynth.synth(stack);

      expect(result.dartConstants, isNull);
      expect(
        result.tfJson['output'],
        equals({
          'ordersTopicName': {
            'value': r'${google_pubsub_topic.orders.name}',
            'sensitive': true,
            'description': 'Sensitive topic name.',
          },
        }),
      );
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

      final auditBlock = (result.tfJson['resource']
              as Map<String, dynamic>)['google_pubsub_topic']['audit']
          as Map<String, dynamic>;
      final lifecycle = auditBlock['lifecycle'] as Map<String, dynamic>;
      expect(
        lifecycle['replace_triggered_by'],
        equals(['google_pubsub_topic.orders.id']),
      );
      expect(
        auditBlock['depends_on'],
        equals(['google_pubsub_topic.orders']),
      );
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
          argMap: const {
            'project_id': TfArgLiteral<String>('orders-prod'),
          },
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
      final resourceTopic = ((result.tfJson['resource']
              as Map<String, dynamic>)['google_pubsub_topic']
          as Map<String, dynamic>)['orders'] as Map<String, dynamic>;
      expect(
        resourceTopic['message_retention_duration'],
        equals('604800s'),
      );
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
      final json = conv.jsonEncode(result.tfJson);
      expect(conv.jsonDecode(json), equals(result.tfJson));
    });

    test('mixed exports: full §5.3 spec example', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      final sub = stack.add(
        FakePubsubSubscription(
          localName: 'worker',
          argMap: {
            'name': const TfArgLiteral<String>('orders-worker-prod'),
            'topic': TfArgRef<String>(
              TfRef.attribute<String>(topic, 'id'),
            ),
          },
        ),
      );
      stack.addExport(
        'ordersTopicName',
        ResourceIdExport(
          TfRef.attribute<String>(topic, 'name'),
          emitTerraformOutput: true,
        ),
      );
      stack.addExport(
        'workerSubscriptionName',
        ResourceIdExport(TfRef.attribute<String>(sub, 'name')),
      );
      stack.addExport('apiVersion', StringExport('v1'));
      stack.addExport(
        'apiBaseUrl',
        EnvBackedExport(
          envVarName: 'API_BASE_URL',
          defaultValue: 'http://localhost:8080',
        ),
      );

      final result = StackSynth.synth(stack, stackName: 'Orders');

      // Dart constants: 4 entries (literal-resolvable refs + StringExport
      // + EnvBacked).
      expect(
        result.dartConstants,
        equals('''// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: Orders
// dart format off
// ignore_for_file: type=lint

abstract final class OrdersExports {
  OrdersExports._();

  static const String ordersTopicName = r'orders-prod';

  static const String workerSubscriptionName = r'orders-worker-prod';

  static const String apiVersion = r'v1';

  static const String apiBaseUrl = const String.fromEnvironment('API_BASE_URL', defaultValue: r'http://localhost:8080');
}
'''),
      );

      // Only ordersTopicName (emitTerraformOutput: true) appears in
      // tf.json output block.
      expect(
        result.tfJson['output'],
        equals({
          'ordersTopicName': {
            'value': r'${google_pubsub_topic.orders.name}',
          },
        }),
      );
    });

    test('SynthResult is writable to disk as expected files', () async {
      final tmp = await Directory.systemTemp.createTemp('terradart_synth_');
      addTearDown(() => tmp.delete(recursive: true));

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
      stack.addExport('apiVersion', StringExport('v1'));
      stack.setAppExportsOutputPath('${tmp.path}/orders.app.dart');

      final r = StackSynth.synth(stack);

      final tfFile = File('${tmp.path}/main.tf.json');
      await tfFile.writeAsString(
        const conv.JsonEncoder.withIndent('  ').convert(r.tfJson),
      );
      expect(await tfFile.exists(), isTrue);
      expect(
        conv.jsonDecode(await tfFile.readAsString()),
        equals(r.tfJson),
      );

      if (r.dartConstants != null && r.dartConstantsPath != null) {
        final dartFile = File(r.dartConstantsPath!);
        await dartFile.writeAsString(r.dartConstants!);
        expect(await dartFile.exists(), isTrue);
        expect(await dartFile.readAsString(), equals(r.dartConstants));
      }
    });

    test('default stackName falls back to runtime type', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      stack.addExport('apiVersion', StringExport('v1'));

      // No `stackName` arg — orchestrator uses `stack.runtimeType`.
      final result = StackSynth.synth(stack);
      expect(result.dartConstants, contains('class TestStackExports {'));
    });
  });
}
