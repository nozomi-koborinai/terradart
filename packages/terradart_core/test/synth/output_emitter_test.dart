import 'package:terradart_core/src/app_export.dart';
import 'package:terradart_core/src/synth/literal_resolver.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';

void main() {
  group('OutputEmitter', () {
    test('StringExport -> Dart constant only', () {
      final stack = TestStack();
      stack.addExport('apiVersion', StringExport('v1'));

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants, hasLength(1));
      expect(res.dartConstants.single.name, equals('apiVersion'));
      expect(res.dartConstants.single.dartType, equals('String'));
      expect(res.dartConstants.single.rhs, equals("r'v1'"));
      expect(res.terraformOutputs, isEmpty);
    });

    test('ResourceIdExport on literal field -> Dart constant only', () {
      final stack = TestStack();
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

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants.single.rhs, equals("r'orders-prod'"));
      expect(res.terraformOutputs, isEmpty);
    });

    test('ResourceIdExport(emitTerraformOutput: true) emits both', () {
      final stack = TestStack();
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
          description: 'Orders topic name',
        ),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants.single.rhs, equals("r'orders-prod'"));
      expect(res.terraformOutputs, hasLength(1));
      final out = res.terraformOutputs.single;
      expect(out.name, equals('ordersTopicName'));
      expect(out.value, equals(r'${google_pubsub_topic.orders.name}'));
      expect(out.sensitive, isFalse);
      expect(out.description, equals('Orders topic name'));
    });

    test('ResourceIdExport on computed field -> output only, no Dart const',
        () {
      final stack = TestStack();
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      // .id is a computed attribute — not present in argMap.
      stack.addExport(
        'ordersTopicId',
        ResourceIdExport(
          TfRef.attribute<String>(topic, 'id'),
          emitTerraformOutput: true,
        ),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants, isEmpty);
      expect(
        res.terraformOutputs.single.value,
        equals(r'${google_pubsub_topic.orders.id}'),
      );
    });

    test('computed ref forces output even when emitTerraformOutput is false',
        () {
      // Critical: a literal-unresolvable ref MUST be emitted as a TF output
      // (otherwise the value would simply disappear).
      final stack = TestStack();
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.addExport(
        'ordersTopicId',
        ResourceIdExport(TfRef.attribute<String>(topic, 'id')),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants, isEmpty);
      expect(res.terraformOutputs, hasLength(1));
    });

    test('sensitive ResourceIdExport -> output only, sensitive=true', () {
      final stack = TestStack();
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
        ),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants, isEmpty);
      final out = res.terraformOutputs.single;
      expect(out.sensitive, isTrue);
      expect(out.value, equals(r'${google_pubsub_topic.orders.name}'));
    });

    test('EnvBackedExport -> Dart constant only (never Terraform output)', () {
      final stack = TestStack();
      stack.addExport(
        'apiBaseUrl',
        EnvBackedExport(
          envVarName: 'API_BASE_URL',
          defaultValue: 'http://localhost:8080',
        ),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(
        res.dartConstants.single.rhs,
        equals(
          "const String.fromEnvironment('API_BASE_URL', defaultValue: r'http://localhost:8080')",
        ),
      );
      expect(res.terraformOutputs, isEmpty);
    });

    test('terraformOutputName overrides export key', () {
      final stack = TestStack();
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
          terraformOutputName: 'orders_topic_name_v2',
        ),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.terraformOutputs.single.name, equals('orders_topic_name_v2'));
    });

    test(
        'ResourceAttributeExport<String> with literal -> Dart const via encoder',
        () {
      final stack = TestStack();
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {
            'message_retention_duration': TfArgLiteral<String>('604800s'),
          },
        ),
      );
      stack.addExport(
        'retentionString',
        ResourceAttributeExport<String>(
          ref: TfRef.attribute<String>(topic, 'message_retention_duration'),
          dartType: 'String',
          literalEncoder: (v) => "r'$v'",
        ),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants.single.rhs, equals("r'604800s'"));
    });

    test(
        'rejects encoder mismatch for ResourceAttributeExport (wrong literal type)',
        () {
      // If a literal stored under (addr, attr) is incompatible with T,
      // emitter should throw with a clear error rather than silently
      // produce broken Dart. Set up: literal is a String, export expects int.
      final stack = TestStack();
      final topic = stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );
      stack.addExport(
        'badInt',
        ResourceAttributeExport<int>(
          ref: TfRef.attribute<int>(topic, 'name'),
          dartType: 'int',
          literalEncoder: (v) => v.toString(),
        ),
      );

      expect(
        () => OutputEmitter.run(
          stack: stack,
          resolver: LiteralResolver.fromStack(stack),
        ),
        throwsA(isA<StateError>()),
      );
    });

    test('description carried through to Dart constant doc', () {
      final stack = TestStack();
      stack.addExport(
        'apiVersion',
        StringExport('v1', description: 'API version'),
      );

      final res = OutputEmitter.run(
        stack: stack,
        resolver: LiteralResolver.fromStack(stack),
      );

      expect(res.dartConstants.single.doc, equals('API version'));
    });
  });
}
