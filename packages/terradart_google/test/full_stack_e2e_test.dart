/// End-to-end test: every Tier 1 factory + GoogleProject in one stack,
/// synthed and matched against `test/golden/full_stack.tf.json`.
///
/// `terraform validate` is intentionally NOT invoked here — that belongs in
/// a CI job that shells out to terraform once a controlled CI base image
/// lands. v0.0.x sticks to JSON-equality.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '_helpers.dart';

void main() {
  test(
    'all 9 Tier 1 resources + GoogleProject synth into a single tf.json',
    () async {
      final stack = TestStack(
        providers: const [GoogleProvider(project: 'demo')],
      );

      stack.addData(GoogleProject(localName: 'current'));

      final ordersTopic = stack.add(
        GooglePubsubTopic(
          localName: 'orders',
          name: TfArg.literal('orders'),
          messageRetentionDuration: TfArg.literal(
            const Duration(days: 7).toTfDurationString(),
          ),
        ),
      );

      final ordersSub = stack.add(
        GooglePubsubSubscription(
          localName: 'orders_push',
          name: TfArg.literal('orders-push'),
          topic: TfArg.ref(ordersTopic.id),
          pushConfig: const PushConfig(
            pushEndpoint: TfArgLiteral<String>('https://app.example.com/push'),
          ),
        ),
      );

      stack.add(
        GooglePubsubTopicIamMember(
          localName: 'orders_publisher',
          topic: TfArg.ref(ordersTopic.nameRef),
          role: TfArg.literal('roles/pubsub.publisher'),
          member: TfArg.literal(
            'serviceAccount:pub@demo.iam.gserviceaccount.com',
          ),
        ),
      );

      stack.add(
        GooglePubsubSubscriptionIamMember(
          localName: 'orders_consumer',
          subscription: TfArg.ref(ordersSub.nameRef),
          role: TfArg.literal('roles/pubsub.subscriber'),
          member: TfArg.literal(
            'serviceAccount:sub@demo.iam.gserviceaccount.com',
          ),
        ),
      );

      final queue = stack.add(
        GoogleCloudTasksQueue(
          localName: 'jobs',
          name: TfArg.literal('jobs'),
          location: TfArg.literal('us-central1'),
        ),
      );

      stack.add(
        GoogleCloudTasksQueueIamMember(
          localName: 'jobs_enqueuer',
          name: TfArg.ref(queue.nameRef),
          location: TfArg.ref(queue.locationRef),
          role: TfArg.literal('roles/cloudtasks.enqueuer'),
          member: TfArg.literal(
            'serviceAccount:enq@demo.iam.gserviceaccount.com',
          ),
        ),
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

      stack.add(
        GoogleCloudSchedulerJob(
          localName: 'nightly',
          name: TfArg.literal('nightly'),
          region: TfArg.literal('us-central1'),
          schedule: TfArg.literal('0 0 * * *'),
          target: PubsubTarget(topicName: TfArg.ref(ordersTopic.id)),
        ),
      );

      final actual = StackSynth.synth(stack).tfJson;
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
