import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('SchedulerTarget — sealed', () {
    test('PubsubTarget.topicName MUST be topic.id (full path)', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders'),
      );
      final target = PubsubTarget(
        topicName: TfArg.ref(topic.id),
        data: TfArg.literal('dGVzdA=='),
      );
      expect(target.blockKey, equals('pubsub_target'));
      expect(
        target.encode()['topic_name'],
        equals(r'${google_pubsub_topic.orders.id}'),
      );
    });

    test('HttpTarget with oidc_token', () {
      const t = HttpTarget(
        uri: TfArgLiteral<String>('https://example.com'),
        httpMethod: TfArgLiteral<String>('POST'),
        oidcToken: HttpOidcToken(
          serviceAccountEmail: TfArgLiteral<String>(
            'sa@p.iam.gserviceaccount.com',
          ),
        ),
      );
      expect(t.blockKey, equals('http_target'));
      expect(
        t.encode(),
        equals({
          'uri': 'https://example.com',
          'http_method': 'POST',
          'oidc_token': {
            'service_account_email': 'sa@p.iam.gserviceaccount.com',
          },
        }),
      );
    });

    test('AppEngineHttpTarget routing block', () {
      const t = AppEngineHttpTarget(
        relativeUri: TfArgLiteral<String>('/cron'),
        httpMethod: TfArgLiteral<String>('POST'),
        appEngineRouting: AppEngineRouting(
          service: TfArgLiteral<String>('default'),
          version: TfArgLiteral<String>('v1'),
        ),
      );
      expect(t.blockKey, equals('app_engine_http_target'));
      expect(
        t.encode(),
        equals({
          'relative_uri': '/cron',
          'http_method': 'POST',
          'app_engine_routing': {'service': 'default', 'version': 'v1'},
        }),
      );
    });
  });

  group('GoogleCloudSchedulerJob', () {
    test('pubsub-target job emits pubsub_target block keyed correctly', () {
      final topic = GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders'),
      );
      final job = GoogleCloudSchedulerJob(
        localName: 'nightly',
        name: TfArg.literal('nightly'),
        region: TfArg.literal('us-central1'),
        schedule: TfArg.literal('0 0 * * *'),
        target: PubsubTarget(
          topicName: TfArg.ref(topic.id),
          data: TfArg.literal('dHJpZ2dlcg=='),
        ),
      );
      expect(
        job.argMap.keys.toList(),
        equals(<String>['name', 'region', 'schedule', 'pubsub_target']),
      );
      expect(job.argMap['name']!.toTfJson(), equals('nightly'));
      expect(job.argMap['region']!.toTfJson(), equals('us-central1'));
      expect(job.argMap['schedule']!.toTfJson(), equals('0 0 * * *'));
      expect(
        job.argMap['pubsub_target']!.toTfJson(),
        equals({
          'topic_name': r'${google_pubsub_topic.orders.id}',
          'data': 'dHJpZ2dlcg==',
        }),
      );
    });

    test('http-target job populates http_target block (no pubsub_target)', () {
      final job = GoogleCloudSchedulerJob(
        localName: 'health',
        name: TfArg.literal('health'),
        region: TfArg.literal('us-central1'),
        schedule: TfArg.literal('*/5 * * * *'),
        target: const HttpTarget(
          uri: TfArgLiteral<String>('https://app.example.com/health'),
          httpMethod: TfArgLiteral<String>('GET'),
        ),
      );
      expect(
        job.argMap['http_target']!.toTfJson(),
        isA<Map<String, Object?>>(),
      );
      expect(job.argMap.containsKey('pubsub_target'), isFalse);
    });

    test('SchedulerRetryConfig snake_case keys', () {
      final job = GoogleCloudSchedulerJob(
        localName: 'j',
        name: TfArg.literal('j'),
        region: TfArg.literal('us-central1'),
        target: const HttpTarget(
          uri: TfArgLiteral<String>('https://app.example.com'),
        ),
        retryConfig: const SchedulerRetryConfig(
          retryCount: TfArgLiteral<int>(3),
          minBackoffDuration: TfArgLiteral<String>('5s'),
          maxBackoffDuration: TfArgLiteral<String>('60s'),
        ),
      );
      expect(
        job.argMap['retry_config']!.toTfJson(),
        equals({
          'retry_count': 3,
          'min_backoff_duration': '5s',
          'max_backoff_duration': '60s',
        }),
      );
    });
  });
}
