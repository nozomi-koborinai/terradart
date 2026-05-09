import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleCloudTasksQueue', () {
    test('queue requires name + location', () {
      final q = GoogleCloudTasksQueue(
        localName: 'jobs',
        name: TfArg.literal('jobs-prod'),
        location: TfArg.literal('us-central1'),
        rateLimits: const RateLimits(
          maxConcurrentDispatches: TfArgLiteral<int>(3),
          maxDispatchesPerSecond: TfArgLiteral<num>(2),
        ),
      );
      expect(
        q.argMap.keys.toList(),
        equals(<String>['name', 'location', 'rate_limits']),
      );
      expect(q.argMap['name']!.toTfJson(), equals('jobs-prod'));
      expect(q.argMap['location']!.toTfJson(), equals('us-central1'));
      expect(
        q.argMap['rate_limits']!.toTfJson(),
        equals({
          'max_concurrent_dispatches': 3,
          'max_dispatches_per_second': 2,
        }),
      );
    });

    test('queue id ref interpolation', () {
      final q = GoogleCloudTasksQueue(
        localName: 'jobs',
        name: TfArg.literal('jobs-prod'),
        location: TfArg.literal('us-central1'),
      );
      expect(
        q.id.interpolation,
        equals(r'${google_cloud_tasks_queue.jobs.id}'),
      );
      expect(
        q.locationRef.interpolation,
        equals(r'${google_cloud_tasks_queue.jobs.location}'),
      );
    });

    test('retry_config + stackdriver_logging_config snake_case keys', () {
      final q = GoogleCloudTasksQueue(
        localName: 'jobs',
        name: TfArg.literal('jobs-prod'),
        location: TfArg.literal('us-central1'),
        retryConfig: const RetryConfig(
          maxAttempts: TfArgLiteral<int>(5),
          maxBackoff: TfArgLiteral<String>('300s'),
          maxDoublings: TfArgLiteral<int>(3),
        ),
        stackdriverLoggingConfig: const StackdriverLoggingConfig(
          samplingRatio: TfArgLiteral<num>(0.5),
        ),
      );
      expect(
        q.argMap['retry_config']!.toTfJson(),
        equals({'max_attempts': 5, 'max_backoff': '300s', 'max_doublings': 3}),
      );
      expect(
        q.argMap['stackdriver_logging_config']!.toTfJson(),
        equals({'sampling_ratio': 0.5}),
      );
    });
  });
}
