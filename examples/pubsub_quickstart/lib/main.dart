/// Pub/Sub quickstart -- the smallest end-to-end terradart example.
///
/// Defines an `OrdersStack` that provisions:
/// - a Pub/Sub topic (`orders-prod`),
/// - a push subscription pointed at an HTTPS endpoint,
/// - a `roles/pubsub.publisher` grant for a service account on the topic,
///
/// and exports the topic's resource ID as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

/// Pub/Sub Stack: a topic and a push subscription.
///
/// `addExport` registers a typed Dart constant ("ORDERS_TOPIC_ID") whose
/// value is the topic's full resource path -- consumed by Firebase Functions
/// Dart subscribers via the generated `<stack>.app.dart` file.
final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final topic = add(
      GooglePubsubTopic(
        localName: 'orders',
        name: TfArg.literal('orders-prod'),
        // 7-day retention so late-arriving subscribers can backfill.
        messageRetentionDuration:
            TfArg.literal(const Duration(days: 7).toTfDurationString()),
      ),
    );

    add(
      GooglePubsubSubscription(
        localName: 'orders_push',
        name: TfArg.literal('orders-push'),
        // Cloud Scheduler / Pub/Sub cross-resource refs need topic.id (the
        // full `projects/.../topics/orders-prod` path), NOT topic.nameRef.
        topic: TfArg.ref(topic.id),
        ackDeadlineSeconds: TfArg.literal(60),
        pushConfig: PubsubSubscriptionPushConfig(
          pushEndpoint: TfArg.literal('https://app.example.com/push'),
        ),
      ),
    );

    // The seam: export topic.id as a Dart constant for the subscriber.
    // Emit a Terraform `output` so subscribers without Dart codegen can also
    // resolve it via `terraform output orders_topic_id`.
    addExport(
      'ORDERS_TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );

    // Tell the synth pipeline where to drop the generated `.dart` file.
    setAppExportsOutputPath('lib/generated/orders_stack.app.dart');
  }
}
