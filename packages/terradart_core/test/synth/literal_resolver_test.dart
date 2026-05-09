import 'package:terradart_core/src/synth/literal_resolver.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

import '../helpers/fake_resources.dart';

void main() {
  group('LiteralResolver', () {
    test('collects literal scalars from a resource argMap', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {
            'name': TfArgLiteral<String>('orders-prod'),
            'message_retention_duration': TfArgLiteral<String>('604800s'),
          },
        ),
      );

      final resolver = LiteralResolver.fromStack(stack);

      expect(
        resolver.lookup('google_pubsub_topic.orders', 'name'),
        equals('orders-prod'),
      );
      expect(
        resolver.lookup(
          'google_pubsub_topic.orders',
          'message_retention_duration',
        ),
        equals('604800s'),
      );
    });

    test('returns null for ref-typed args', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: {
            'name': TfArgRef<String>(
              TfRef.attribute<String>(
                const AddressStub('data.google_project.this'),
                'project_id',
              ),
            ),
          },
        ),
      );

      final resolver = LiteralResolver.fromStack(stack);
      expect(
        resolver.lookup('google_pubsub_topic.orders', 'name'),
        isNull,
      );
    });

    test('returns null for missing resource or attribute', () {
      final stack = TestStack();
      final resolver = LiteralResolver.fromStack(stack);
      expect(resolver.lookup('google_pubsub_topic.nope', 'name'), isNull);
    });

    test(
        'returns null when attr is missing on a resource that has '
        'other literals', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
        ),
      );

      final resolver = LiteralResolver.fromStack(stack);
      expect(
        resolver.lookup(
          'google_pubsub_topic.orders',
          'message_retention_duration',
        ),
        isNull,
      );
    });

    test('walks data sources too', () {
      final stack = TestStack();
      stack.addData(
        FakeProjectData(
          localName: 'this',
          argMap: const {
            'project_id': TfArgLiteral<String>('orders-prod-1234'),
          },
        ),
      );

      final resolver = LiteralResolver.fromStack(stack);
      expect(
        resolver.lookup('data.google_project.this', 'project_id'),
        equals('orders-prod-1234'),
      );
    });

    test('skips null argMap values', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {
            'name': TfArgLiteral<String>('orders-prod'),
            'message_retention_duration': null,
          },
        ),
      );

      final resolver = LiteralResolver.fromStack(stack);
      // Present literal still resolved.
      expect(
        resolver.lookup('google_pubsub_topic.orders', 'name'),
        equals('orders-prod'),
      );
      // Null entry is not indexed.
      expect(
        resolver.lookup(
          'google_pubsub_topic.orders',
          'message_retention_duration',
        ),
        isNull,
      );
    });

    test('size reports indexed literal count', () {
      final stack = TestStack();
      stack.add(
        FakePubsubTopic(
          localName: 'orders',
          argMap: const {
            'name': TfArgLiteral<String>('orders-prod'),
            'message_retention_duration': TfArgLiteral<String>('604800s'),
          },
        ),
      );
      stack.addData(
        FakeProjectData(
          localName: 'this',
          argMap: const {
            'project_id': TfArgLiteral<String>('orders-prod-1234'),
          },
        ),
      );

      final resolver = LiteralResolver.fromStack(stack);
      expect(resolver.size, equals(3));
    });
  });
}
