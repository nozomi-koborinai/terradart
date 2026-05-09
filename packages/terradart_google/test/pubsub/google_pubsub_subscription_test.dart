import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GooglePubsubSubscription', () {
    test('minimal pull-mode args', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders'),
      );
      final sub = GooglePubsubSubscription(
        localName: 'orders_worker',
        name: TfArg.literal('orders-worker'),
        topic: TfArg.ref(topic.id),
        ackDeadlineSeconds: TfArg.literal(60),
      );
      expect(
        sub.argMap.keys.toList(),
        equals(<String>['name', 'topic', 'ack_deadline_seconds']),
      );
      expect(sub.argMap['name']!.toTfJson(), equals('orders-worker'));
      expect(
        sub.argMap['topic']!.toTfJson(),
        equals(r'${google_pubsub_topic.orders.id}'),
      );
      expect(sub.argMap['ack_deadline_seconds']!.toTfJson(), equals(60));
    });

    test('section 1.3 narrative push-config example', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders'),
      );
      final sub = GooglePubsubSubscription(
        localName: 'orders_push',
        name: TfArg.literal('orders-push'),
        topic: TfArg.ref(topic.id),
        pushConfig: const PushConfig(
          pushEndpoint: TfArgLiteral<String>('https://example.com/push'),
          attributes: TfArgLiteral<Map<String, String>>({
            'x-goog-version': 'v1',
          }),
        ),
      );
      expect(
        sub.argMap['push_config']!.toTfJson(),
        equals({
          'push_endpoint': 'https://example.com/push',
          'attributes': {'x-goog-version': 'v1'},
        }),
      );
    });

    test('dead_letter_policy + retry_policy snake_case keys', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders'),
      );
      final dlq = GooglePubsubTopic(
        localName: 'orders_dlq',
        name: TfArg.literal('orders-dlq'),
      );
      final sub = GooglePubsubSubscription(
        localName: 's',
        name: TfArg.literal('s'),
        topic: TfArg.ref(topic.id),
        deadLetterPolicy: DeadLetterPolicy(
          deadLetterTopic: TfArg.ref(dlq.id),
          maxDeliveryAttempts: TfArg.literal(5),
        ),
        retryPolicy: const RetryPolicy(
          minimumBackoff: TfArgLiteral<String>('10s'),
          maximumBackoff: TfArgLiteral<String>('600s'),
        ),
      );
      expect(
        sub.argMap['dead_letter_policy']!.toTfJson(),
        equals({
          'dead_letter_topic': r'${google_pubsub_topic.orders_dlq.id}',
          'max_delivery_attempts': 5,
        }),
      );
      expect(
        sub.argMap['retry_policy']!.toTfJson(),
        equals({'minimum_backoff': '10s', 'maximum_backoff': '600s'}),
      );
    });

    test('nameRef and id produce stable TfRef interpolations', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders'),
      );
      final sub = GooglePubsubSubscription(
        localName: 'sub',
        name: TfArg.literal('sub'),
        topic: TfArg.ref(topic.id),
      );
      expect(
        sub.nameRef.interpolation,
        equals(r'${google_pubsub_subscription.sub.name}'),
      );
      expect(
        sub.id.interpolation,
        equals(r'${google_pubsub_subscription.sub.id}'),
      );
    });
  });

  group('PushConfig + nested helpers', () {
    test('PushConfig encodes push_endpoint + attributes', () {
      const cfg = PushConfig(
        pushEndpoint: TfArgLiteral<String>('https://example.com/push'),
        attributes: TfArgLiteral<Map<String, String>>({'x-goog-version': 'v1'}),
      );
      expect(
        cfg.encode(),
        equals({
          'push_endpoint': 'https://example.com/push',
          'attributes': {'x-goog-version': 'v1'},
        }),
      );
    });

    test('OidcToken nested under PushConfig', () {
      const cfg = PushConfig(
        pushEndpoint: TfArgLiteral<String>('https://example.com/push'),
        oidcToken: OidcToken(
          serviceAccountEmail: TfArgLiteral<String>(
            'sa@example.iam.gserviceaccount.com',
          ),
        ),
      );
      expect(
        cfg.encode()['oidc_token'],
        equals({'service_account_email': 'sa@example.iam.gserviceaccount.com'}),
      );
    });

    test('NoWrapper round-trips write_metadata', () {
      const w = NoWrapper(writeMetadata: TfArgLiteral<bool>(true));
      expect(w.encode(), equals({'write_metadata': true}));
    });

    test('BigQueryConfig snake_case keys', () {
      const cfg = BigQueryConfig(
        table: TfArgLiteral<String>('p:d.t'),
        useTopicSchema: TfArgLiteral<bool>(true),
        dropUnknownFields: TfArgLiteral<bool>(false),
      );
      expect(
        cfg.encode(),
        equals({
          'table': 'p:d.t',
          'use_topic_schema': true,
          'drop_unknown_fields': false,
        }),
      );
    });

    test('CloudStorageConfig snake_case keys', () {
      const cfg = CloudStorageConfig(
        bucket: TfArgLiteral<String>('my-bucket'),
        filenamePrefix: TfArgLiteral<String>('subs/'),
        maxBytes: TfArgLiteral<int>(1024),
      );
      expect(
        cfg.encode(),
        equals({
          'bucket': 'my-bucket',
          'filename_prefix': 'subs/',
          'max_bytes': 1024,
        }),
      );
    });

    test('ExpirationPolicy ttl', () {
      const e = ExpirationPolicy(ttl: TfArgLiteral<String>('86400s'));
      expect(e.encode(), equals({'ttl': '86400s'}));
    });
  });
}
