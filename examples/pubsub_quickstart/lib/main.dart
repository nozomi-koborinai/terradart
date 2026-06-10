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
    final ordersSchema = add(
      GooglePubsubSchema(
        localName: 'orders_proto',
        name: TfArg.literal('orders-proto'),
        type: TfArg.literal(PubsubSchemaType.protocolBuffer),
        definition: TfArg.literal(
          'syntax = "proto3"; message Order { string id = 1; }',
        ),
      ),
    );

    add(
      GooglePubsubSchemaIamMember(
        localName: 'orders_schema_publisher',
        schema: TfArg.ref(ordersSchema.id),
        role: TfArg.literal('roles/pubsub.schemaAdmin'),
        member: TfArg.literal('serviceAccount:orders-publisher@example.com'),
        dependsOn: [ResourceDependency(ordersSchema)],
      ),
    );

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

    // Literal topic name — emitted as a Dart constant at synth time (see
    // lib/generated/orders_stack.app.dart). Subscribers compare against this.
    addExport(
      'ORDERS_TOPIC_NAME',
      ResourceIdExport(topic.nameRef, emitTerraformOutput: true),
    );

    // Full resource ID — Terraform output only (computed until after apply).
    addExport(
      'ORDERS_TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );

    // Tell the synth pipeline where to drop the generated `.dart` file.
    setAppExportsOutputPath('lib/generated/orders_stack.app.dart');
  }
}
