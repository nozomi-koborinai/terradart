import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('CloudSchedulerJobTarget — sealed', () {
    test('.pubsubTarget emits topic.id (the full path) for topicName', () {
      final topic = GooglePubsubTopic('orders', name: const .literal('orders'));
      final CloudSchedulerJobTarget target = .pubsubTarget(
        CloudSchedulerJobPubsubTarget(
          topicName: .of(topic),
          data: const .literal('dGVzdA=='),
        ),
      );
      expect(target.blockKey, equals('pubsub_target'));
      expect(
        target.encode()['pubsub_target'],
        equals({
          'data': 'dGVzdA==',
          'topic_name': r'${google_pubsub_topic.orders.id}',
        }),
      );
    });

    test('.httpTarget with oidc_token', () {
      final CloudSchedulerJobTarget t = .httpTarget(
        CloudSchedulerJobHttpTarget(
          uri: const .literal('https://example.com'),
          httpMethod: const .literal('POST'),
          oidcToken: CloudSchedulerJobOidcToken(
            serviceAccountEmail: .literal('sa@p.iam.gserviceaccount.com'),
          ),
        ),
      );
      expect(t.blockKey, equals('http_target'));
      expect(
        t.encode()['http_target'],
        equals({
          'http_method': 'POST',
          'uri': 'https://example.com',
          'oidc_token': {
            'service_account_email': 'sa@p.iam.gserviceaccount.com',
          },
        }),
      );
    });

    test('.appEngineHttpTarget routing block', () {
      final CloudSchedulerJobTarget t = const .appEngineHttpTarget(
        CloudSchedulerJobAppEngineHttpTarget(
          relativeUri: .literal('/cron'),
          httpMethod: .literal('POST'),
          appEngineRouting: CloudSchedulerJobAppEngineRouting(
            service: .literal('default'),
            version: .literal('v1'),
          ),
        ),
      );
      expect(t.blockKey, equals('app_engine_http_target'));
      expect(
        t.encode()['app_engine_http_target'],
        equals({
          'http_method': 'POST',
          'relative_uri': '/cron',
          'app_engine_routing': {'service': 'default', 'version': 'v1'},
        }),
      );
    });
  });

  group('GoogleCloudSchedulerJob', () {
    test('pubsub-target job emits pubsub_target block keyed correctly', () {
      final topic = GooglePubsubTopic('orders', name: const .literal('orders'));
      final job = GoogleCloudSchedulerJob(
        'nightly',
        name: const .literal('nightly'),
        region: const .literal('us-central1'),
        schedule: const .literal('0 0 * * *'),
        target: .pubsubTarget(
          CloudSchedulerJobPubsubTarget(
            topicName: .of(topic),
            data: const .literal('dHJpZ2dlcg=='),
          ),
        ),
      );
      expect(
        job.argMap.keys.toList(),
        equals(<String>['name', 'region', 'schedule', 'pubsub_target']),
      );
      expect(
        job.argMap['pubsub_target']!.toTfJson(),
        equals({
          'data': 'dHJpZ2dlcg==',
          'topic_name': r'${google_pubsub_topic.orders.id}',
        }),
      );
    });

    test('http-target job populates http_target block (no pubsub_target)', () {
      final job = GoogleCloudSchedulerJob(
        'health',
        name: const .literal('health'),
        region: const .literal('us-central1'),
        schedule: const .literal('*/5 * * * *'),
        target: const .httpTarget(
          CloudSchedulerJobHttpTarget(
            uri: .literal('https://app.example.com/health'),
            httpMethod: .literal('GET'),
          ),
        ),
      );
      expect(
        job.argMap['http_target']!.toTfJson(),
        isA<Map<String, Object?>>(),
      );
      expect(job.argMap.containsKey('pubsub_target'), isFalse);
    });

    test('retry_config uses snake_case keys', () {
      final job = GoogleCloudSchedulerJob(
        'j',
        name: const .literal('j'),
        region: const .literal('us-central1'),
        target: const .httpTarget(
          CloudSchedulerJobHttpTarget(uri: .literal('https://app.example.com')),
        ),
        retryConfig: const CloudSchedulerJobRetryConfig(
          retryCount: .literal(3),
          minBackoffDuration: .literal('5s'),
          maxBackoffDuration: .literal('60s'),
        ),
      );
      expect(
        job.argMap['retry_config']!.toTfJson(),
        equals({
          'max_backoff_duration': '60s',
          'min_backoff_duration': '5s',
          'retry_count': 3,
        }),
      );
    });
  });
}
