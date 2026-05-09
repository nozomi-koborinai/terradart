import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GooglePubsubTopic', () {
    test('localName + name produce minimal argMap', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
      );
      expect(topic.terraformType, equals('google_pubsub_topic'));
      expect(topic.localName, equals('orders'));
      expect(topic.argMap.keys.toList(), equals(<String>['name']));
      expect(topic.argMap['name'], isA<TfArg<String>>());
      expect(topic.argMap['name']!.toTfJson(), equals('orders-prod'));
    });

    test('passes message_retention_duration through Duration helper', () {
      final topic = GooglePubsubTopic(
        localName: 't',
        name: TfArg.literal('t'),
        messageRetentionDuration: TfArg.literal(
          const Duration(days: 7).toTfDurationString(),
        ),
      );
      expect(
        topic.argMap['message_retention_duration']!.toTfJson(),
        equals('604800s'),
      );
    });

    test('labels survive snake_case keying', () {
      final topic = GooglePubsubTopic(
        localName: 't',
        name: TfArg.literal('t'),
        labels: TfArg.literal({'env': 'prod'}),
      );
      expect(topic.argMap['labels']!.toTfJson(), equals({'env': 'prod'}));
    });

    test('lifecycle prevent_destroy threads through to Resource', () {
      final topic = GooglePubsubTopic(
        localName: 't',
        name: TfArg.literal('t'),
        lifecycle: const LifecycleOptions(preventDestroy: true),
      );
      expect(topic.lifecycle?.preventDestroy, isTrue);
    });

    test('nameRef and id produce stable TfRef interpolations', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
      );
      expect(
        topic.nameRef.interpolation,
        equals(r'${google_pubsub_topic.orders.name}'),
      );
      expect(
        topic.id.interpolation,
        equals(r'${google_pubsub_topic.orders.id}'),
      );
    });

    test('\$sensitiveFields exposes generated set (empty for topic)', () {
      final topic = GooglePubsubTopic(localName: 't', name: TfArg.literal('t'));
      expect(topic.$sensitiveFields, isEmpty);
    });

    test('\$tfType constant matches terraformType', () {
      final topic = GooglePubsubTopic(localName: 't', name: TfArg.literal('t'));
      expect(GooglePubsubTopic.$tfType, equals('google_pubsub_topic'));
      expect(topic.terraformType, equals(GooglePubsubTopic.$tfType));
    });
  });
}
