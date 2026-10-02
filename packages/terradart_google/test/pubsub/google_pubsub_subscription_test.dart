import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GooglePubsubSubscription', () {
    test('minimal pull-mode args', () {
      final topic = GooglePubsubTopic(
        'orders',
        name: const TfArg.literal('orders'),
      );
      final sub = GooglePubsubSubscription(
        'orders_worker',
        name: const TfArg.literal('orders-worker'),
        topic: topic.ref,
        ackDeadlineSeconds: const TfArg.literal(60),
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
        'orders',
        name: const TfArg.literal('orders'),
      );
      final sub = GooglePubsubSubscription(
        'orders_push',
        name: const TfArg.literal('orders-push'),
        topic: topic.ref,
        delivery: const .pushConfig(
          PubsubSubscriptionPushConfig(
            pushEndpoint: TfArgLiteral<String>('https://example.com/push'),
            attributes: TfArgLiteral<Map<String, String>>({
              'x-goog-version': 'v1',
            }),
          ),
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
        'orders',
        name: const TfArg.literal('orders'),
      );
      final dlq = GooglePubsubTopic(
        'orders_dlq',
        name: const TfArg.literal('orders-dlq'),
      );
      final sub = GooglePubsubSubscription(
        's',
        name: const TfArg.literal('s'),
        topic: topic.ref,
        deadLetterPolicy: PubsubSubscriptionDeadLetterPolicy(
          deadLetterTopic: dlq.id,
          maxDeliveryAttempts: const TfArg.literal(5),
        ),
        retryPolicy: const PubsubSubscriptionRetryPolicy(
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

    test('name and id produce stable TfRef interpolations', () {
      final topic = GooglePubsubTopic(
        'orders',
        name: const TfArg.literal('orders'),
      );
      final sub = GooglePubsubSubscription(
        'sub',
        name: const TfArg.literal('sub'),
        topic: topic.ref,
      );
      expect(
        sub.name.interpolation,
        equals(r'${google_pubsub_subscription.sub.name}'),
      );
      expect(
        sub.id.interpolation,
        equals(r'${google_pubsub_subscription.sub.id}'),
      );
    });
  });

  group('PubsubSubscriptionPushConfig + nested helpers', () {
    test('PubsubSubscriptionPushConfig encodes push_endpoint + attributes', () {
      const cfg = PubsubSubscriptionPushConfig(
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

    test('PubsubSubscriptionOidcToken nested under push_config', () {
      final cfg = PubsubSubscriptionPushConfig(
        pushEndpoint: const .literal('https://example.com/push'),
        oidcToken: PubsubSubscriptionOidcToken(
          serviceAccountEmail: .literal('sa@example.iam.gserviceaccount.com'),
        ),
      );
      expect(
        cfg.encode()['oidc_token'],
        equals({'service_account_email': 'sa@example.iam.gserviceaccount.com'}),
      );
    });

    test('PubsubSubscriptionNoWrapper round-trips write_metadata', () {
      final w = const PubsubSubscriptionNoWrapper(
        writeMetadata: .literal(true),
      );
      expect(w.encode(), equals({'write_metadata': true}));
    });

    test('PubsubSubscriptionBigqueryConfig snake_case keys', () {
      final cfg = const PubsubSubscriptionBigqueryConfig(
        table: .literal('p:d.t'),
        schema: .useTopicSchema(.literal(true)),
        dropUnknownFields: .literal(false),
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

    test('PubsubSubscriptionCloudStorageConfig snake_case keys', () {
      final cfg = PubsubSubscriptionCloudStorageConfig(
        bucket: .literal('my-bucket'),
        filenamePrefix: const .literal('subs/'),
        maxBytes: const .literal(1024),
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

    test('PubsubSubscriptionExpirationPolicy ttl', () {
      const e = PubsubSubscriptionExpirationPolicy(
        ttl: TfArgLiteral<String>('86400s'),
      );
      expect(e.encode(), equals({'ttl': '86400s'}));
    });
  });
}
