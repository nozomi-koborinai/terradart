/// Per-resource golden tests for every Tier 1 factory.
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
      GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
      ),
    );
    stack.add(
      GooglePubsubTopicIamMember(
        localName: 'orders_publisher',
        topic: TfArg.ref(orders.nameRef),
        role: TfArg.literal('roles/pubsub.publisher'),
        member: TfArg.literal(
          'serviceAccount:publisher@demo.iam.gserviceaccount.com',
        ),
      ),
    );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('pubsub_topic_iam_member.tf.json')),
    );
  });

  test('pubsub_subscription_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final orders = stack.add(
      GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
      ),
    );
    final sub = stack.add(
      GooglePubsubSubscription(
        localName: 'orders_worker',
        name: TfArg.literal('orders-worker'),
        topic: TfArg.ref(orders.id),
      ),
    );
    stack.add(
      GooglePubsubSubscriptionIamMember(
        localName: 'orders_consumer',
        subscription: TfArg.ref(sub.nameRef),
        role: TfArg.literal('roles/pubsub.subscriber'),
        member: TfArg.literal(
          'serviceAccount:consumer@demo.iam.gserviceaccount.com',
        ),
      ),
    );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('pubsub_subscription_iam_member.tf.json')),
    );
  });

  test('cloud_tasks_queue golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GoogleCloudTasksQueue(
          localName: 'jobs',
          name: TfArg.literal('jobs-prod'),
          location: TfArg.literal('us-central1'),
          rateLimits: const RateLimits(
            maxConcurrentDispatches: TfArgLiteral<int>(3),
            maxDispatchesPerSecond: TfArgLiteral<num>(2),
          ),
          retryConfig: const RetryConfig(
            maxAttempts: TfArgLiteral<int>(5),
            maxBackoff: TfArgLiteral<String>('300s'),
            maxDoublings: TfArgLiteral<int>(3),
          ),
        ),
      );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('cloud_tasks_queue.tf.json')),
    );
  });

  test('cloud_tasks_queue_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final q = stack.add(
      GoogleCloudTasksQueue(
        localName: 'jobs',
        name: TfArg.literal('jobs-prod'),
        location: TfArg.literal('us-central1'),
      ),
    );
    stack.add(
      GoogleCloudTasksQueueIamMember(
        localName: 'jobs_enqueuer',
        name: TfArg.ref(q.nameRef),
        location: TfArg.ref(q.locationRef),
        role: TfArg.literal('roles/cloudtasks.enqueuer'),
        member: TfArg.literal(
          'serviceAccount:enq@demo.iam.gserviceaccount.com',
        ),
      ),
    );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('cloud_tasks_queue_iam_member.tf.json')),
    );
  });

  test('secret_manager_secret golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GoogleSecretManagerSecret(
          localName: 'api_key',
          secretId: TfArg.literal('orders-api-key'),
          replication: Replication.auto(),
        ),
      );

    expect(
      StackSynth.synth(stack).tfJson,
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
          localName: 'api_key',
          secretId: TfArg.literal('orders-api-key'),
          replication: Replication.auto(),
        ),
      );
      stack.add(
        GoogleSecretManagerSecretVersion(
          localName: 'api_key_v1',
          secret: TfArg.ref(secret.id),
          secretDataWo: TfArg.literal('REPLACE_ME'),
          secretDataWoVersion: TfArg.literal(1),
        ),
      );

      // The sensitive set is machine-derived from the provider
      // schema. hashicorp/google v7.31.0 marks only `secret_data` as
      // sensitive; `secret_data_wo` is `write_only` (the value is excluded
      // from state, not from the rendered tf.json). So the literal flows
      // through unmasked here. The legacy `secret_data` path (used in the
      // unit test for that field) is masked.
      expect(
        StackSynth.synth(stack).tfJson,
        equals(await _readGolden('secret_manager_secret_version.tf.json')),
      );
    },
  );

  test('secret_manager_secret_iam_member golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final secret = stack.add(
      GoogleSecretManagerSecret(
        localName: 'api_key',
        secretId: TfArg.literal('orders-api-key'),
        replication: Replication.auto(),
      ),
    );
    stack.add(
      GoogleSecretManagerSecretIamMember(
        localName: 'api_key_reader',
        secretId: TfArg.ref(secret.secretIdRef),
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: TfArg.literal(
          'serviceAccount:app@demo.iam.gserviceaccount.com',
        ),
      ),
    );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('secret_manager_secret_iam_member.tf.json')),
    );
  });

  test('cloud_scheduler_job_pubsub golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final orders = stack.add(
      GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
      ),
    );
    stack.add(
      GoogleCloudSchedulerJob(
        localName: 'nightly',
        name: TfArg.literal('nightly'),
        region: TfArg.literal('us-central1'),
        schedule: TfArg.literal('0 0 * * *'),
        target: PubsubTarget(
          topicName: TfArg.ref(orders.id),
          data: TfArg.literal('dHJpZ2dlcg=='),
        ),
      ),
    );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('cloud_scheduler_job_pubsub.tf.json')),
    );
  });

  test('cloud_scheduler_job_http golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GoogleCloudSchedulerJob(
          localName: 'health',
          name: TfArg.literal('health'),
          region: TfArg.literal('us-central1'),
          schedule: TfArg.literal('*/5 * * * *'),
          target: const HttpTarget(
            uri: TfArgLiteral<String>('https://app.example.com/health'),
            httpMethod: TfArgLiteral<String>('GET'),
          ),
        ),
      );

    expect(
      StackSynth.synth(stack).tfJson,
      equals(await _readGolden('cloud_scheduler_job_http.tf.json')),
    );
  });
}
