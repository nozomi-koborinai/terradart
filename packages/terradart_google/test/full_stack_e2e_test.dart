/// End-to-end test: every curated factory + DataGoogleProject in one stack,
/// synthed and matched against `test/golden/full_stack.tf.json`.
///
/// `terraform validate` is intentionally NOT invoked here — that belongs in
/// a CI job that shells out to terraform once a controlled CI base image
/// lands. v0.0.x sticks to JSON-equality.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '_helpers.dart';

void main() {
  test(
    'all 9 curated resources + DataGoogleProject synth into a single tf.json',
    () async {
      final stack = TestStack(
        providers: const [GoogleProvider(project: 'demo')],
      );

      stack.add(DataGoogleProject('current'));

      final ordersTopic = stack.add(
        GooglePubsubTopic(
          'orders',
          name: const TfArg.literal('orders'),
          messageRetentionDuration: TfArg.literal(
            const Duration(days: 7).toTfDurationString(),
          ),
        ),
      );

      final ordersSub = stack.add(
        GooglePubsubSubscription(
          'orders_push',
          name: const TfArg.literal('orders-push'),
          topic: ordersTopic.ref,
          delivery: const .pushConfig(
            PubsubSubscriptionPushConfig(
              pushEndpoint: TfArgLiteral<String>(
                'https://app.example.com/push',
              ),
            ),
          ),
        ),
      );

      stack.add(
        GooglePubsubTopicIamMember(
          'orders_publisher',
          topic: ordersTopic.ref.pinned('name'),
          role: const TfArg.literal('roles/pubsub.publisher'),
          member: .serviceAccount('pub@demo.iam.gserviceaccount.com'),
        ),
      );

      stack.add(
        GooglePubsubSubscriptionIamMember(
          'orders_consumer',
          subscription: ordersSub.ref,
          role: const TfArg.literal('roles/pubsub.subscriber'),
          member: .serviceAccount('sub@demo.iam.gserviceaccount.com'),
        ),
      );

      final queue = stack.add(
        GoogleCloudTasksQueue(
          'jobs',
          name: const TfArg.literal('jobs'),
          location: const TfArg.literal('us-central1'),
        ),
      );

      stack.add(
        GoogleCloudTasksQueueIamMember(
          'jobs_enqueuer',
          queue: queue.ref,
          role: const TfArg.literal('roles/cloudtasks.enqueuer'),
          member: .serviceAccount('enq@demo.iam.gserviceaccount.com'),
        ),
      );

      final secret = stack.add(
        GoogleSecretManagerSecret(
          'api_key',
          secretId: const TfArg.literal('orders-api-key'),
          replication: const .auto(SecretManagerSecretAuto()),
        ),
      );

      stack.add(
        GoogleSecretManagerSecretVersion(
          'api_key_v1',
          secret: secret.ref,
          payload: const SecretManagerSecretVersionWriteOnlyPayload(
            secretDataWo: TfArg.literal('REPLACE_ME'),
            secretDataWoVersion: TfArg.literal('1'),
          ),
        ),
      );

      stack.add(
        GoogleSecretManagerSecretIamMember(
          'api_key_reader',
          secret: secret.ref,
          role: const TfArg.literal('roles/secretmanager.secretAccessor'),
          member: .serviceAccount('app@demo.iam.gserviceaccount.com'),
        ),
      );

      stack.add(
        GoogleCloudSchedulerJob(
          'nightly',
          name: const TfArg.literal('nightly'),
          region: const TfArg.literal('us-central1'),
          schedule: const TfArg.literal('0 0 * * *'),
          target: .pubsubTarget(
            CloudSchedulerJobPubsubTarget(topicName: .of(ordersTopic)),
          ),
        ),
      );

      final actual = stack.synth().tfJson;
      final golden =
          jsonDecode(
                await File('test/golden/full_stack.tf.json').readAsString(),
              )
              as Map<String, dynamic>;
      expect(actual, equals(golden));

      // Sanity: data.google_project is keyed under "data", not "resource".
      final data = (actual['data'] as Map)['google_project'] as Map;
      expect(data.containsKey('current'), isTrue);
    },
  );
}
