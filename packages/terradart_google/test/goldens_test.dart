/// Per-resource golden tests for every curated factory in terradart_google.
///
/// One file (instead of one per factory) keeps boilerplate down. The
/// section 1.3 narrative push subscription is in
/// `pubsub/google_pubsub_subscription_golden_test.dart`; the topic-only
/// golden lives in `pubsub/google_pubsub_topic_golden_test.dart`. Everything
/// else lives here.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '_helpers.dart';

Future<Map<String, dynamic>> _readGolden(String name) async {
  final raw = await File('test/golden/$name').readAsString();
  return jsonDecode(raw) as Map<String, dynamic>;
}

void main() {
  test('pubsub_topic_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final orders = stack.add(
      GooglePubsubTopic('orders', name: TfArg.literal('orders-prod')),
    );
    stack.add(
      GooglePubsubTopicIamMember(
        'orders_publisher',
        topic: orders.ref.pinned('name'),
        role: TfArg.literal('roles/pubsub.publisher'),
        member: .serviceAccount('publisher@demo.iam.gserviceaccount.com'),
      ),
    );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('pubsub_topic_iam_member.tf.json')),
    );
  });

  test('pubsub_subscription_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final orders = stack.add(
      GooglePubsubTopic('orders', name: TfArg.literal('orders-prod')),
    );
    final sub = stack.add(
      GooglePubsubSubscription(
        'orders_worker',
        name: TfArg.literal('orders-worker'),
        topic: orders.ref,
      ),
    );
    stack.add(
      GooglePubsubSubscriptionIamMember(
        'orders_consumer',
        subscription: sub.ref,
        role: TfArg.literal('roles/pubsub.subscriber'),
        member: .serviceAccount('consumer@demo.iam.gserviceaccount.com'),
      ),
    );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('pubsub_subscription_iam_member.tf.json')),
    );
  });

  test('cloud_tasks_queue golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GoogleCloudTasksQueue(
          'jobs',
          name: TfArg.literal('jobs-prod'),
          location: TfArg.literal('us-central1'),
          rateLimits: const CloudTasksQueueRateLimits(
            maxConcurrentDispatches: TfArgLiteral<int>(3),
            maxDispatchesPerSecond: TfArgLiteral<num>(2),
          ),
          retryConfig: const CloudTasksQueueRetryConfig(
            maxAttempts: TfArgLiteral<int>(5),
            maxBackoff: TfArgLiteral<String>('300s'),
            maxDoublings: TfArgLiteral<int>(3),
          ),
        ),
      );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('cloud_tasks_queue.tf.json')),
    );
  });

  test('cloud_tasks_queue_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final q = stack.add(
      GoogleCloudTasksQueue(
        'jobs',
        name: TfArg.literal('jobs-prod'),
        location: TfArg.literal('us-central1'),
      ),
    );
    stack.add(
      GoogleCloudTasksQueueIamMember(
        'jobs_enqueuer',
        queue: q.ref,
        role: TfArg.literal('roles/cloudtasks.enqueuer'),
        member: .serviceAccount('enq@demo.iam.gserviceaccount.com'),
      ),
    );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('cloud_tasks_queue_iam_member.tf.json')),
    );
  });

  test('secret_manager_secret golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GoogleSecretManagerSecret(
          'api_key',
          secretId: TfArg.literal('orders-api-key'),
          replication: const .auto(SecretManagerSecretAuto()),
        ),
      );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('secret_manager_secret.tf.json')),
    );
  });

  test(
    'secret_manager_secret_version golden — write-only literal flows through',
    () async {
      final stack = TestStack(
        providers: const [GoogleProvider(project: 'demo')],
      );
      final secret = stack.add(
        GoogleSecretManagerSecret(
          'api_key',
          secretId: TfArg.literal('orders-api-key'),
          replication: const .auto(SecretManagerSecretAuto()),
        ),
      );
      stack.add(
        GoogleSecretManagerSecretVersion(
          'api_key_v1',
          secret: secret.ref,
          payload: SecretManagerSecretVersionWriteOnlyPayload(
            secretDataWo: TfArg.literal('REPLACE_ME'),
            secretDataWoVersion: TfArg.literal('1'),
          ),
        ),
      );

      // The sensitive set is machine-derived from the provider
      // schema. hashicorp/google v7.31.0 marks only `secret_data` as
      // sensitive; `secret_data_wo` is `write_only` (the value is excluded
      // from state, not from the rendered tf.json). So the literal flows
      // through unmasked here. The legacy `secret_data` path (used in the
      // unit test for that field) is masked.
      expect(
        stack.synth().tfJson,
        equals(await _readGolden('secret_manager_secret_version.tf.json')),
      );
    },
  );

  test('secret_manager_secret_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final secret = stack.add(
      GoogleSecretManagerSecret(
        'api_key',
        secretId: TfArg.literal('orders-api-key'),
        replication: const .auto(SecretManagerSecretAuto()),
      ),
    );
    stack.add(
      GoogleSecretManagerSecretIamMember(
        'api_key_reader',
        secret: secret.ref,
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: .serviceAccount('app@demo.iam.gserviceaccount.com'),
      ),
    );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('secret_manager_secret_iam_member.tf.json')),
    );
  });

  test('cloud_scheduler_job_pubsub golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final orders = stack.add(
      GooglePubsubTopic('orders', name: TfArg.literal('orders-prod')),
    );
    stack.add(
      GoogleCloudSchedulerJob(
        'nightly',
        name: TfArg.literal('nightly'),
        region: TfArg.literal('us-central1'),
        schedule: TfArg.literal('0 0 * * *'),
        target: .pubsubTarget(
          CloudSchedulerJobPubsubTarget(
            topicName: .of(orders),
            data: .literal('dHJpZ2dlcg=='),
          ),
        ),
      ),
    );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('cloud_scheduler_job_pubsub.tf.json')),
    );
  });

  test('cloud_scheduler_job_http golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GoogleCloudSchedulerJob(
          'health',
          name: TfArg.literal('health'),
          region: TfArg.literal('us-central1'),
          schedule: TfArg.literal('*/5 * * * *'),
          target: .httpTarget(
            CloudSchedulerJobHttpTarget(
              uri: .literal('https://app.example.com/health'),
              httpMethod: .literal('GET'),
            ),
          ),
        ),
      );

    expect(
      stack.synth().tfJson,
      equals(await _readGolden('cloud_scheduler_job_http.tf.json')),
    );
  });
}
