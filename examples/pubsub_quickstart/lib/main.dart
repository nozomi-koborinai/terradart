/// Pub/Sub quickstart -- the smallest end-to-end terradart example.
///
/// Defines an `OrdersStack` that provisions:
/// - a Pub/Sub topic (`orders-prod`),
/// - a push subscription pointed at an HTTPS endpoint,
/// - a `roles/pubsub.publisher` grant for the Pub/Sub service agent (project
///   number from the `GoogleProject` data source),
/// - authoritative topic IAM binding + policy for a demo publisher SA,
///
/// and hands the topic name to application code as a typed Dart constant
/// via `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

String _iamPolicyDataJson({required String role, required String member}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

/// Pub/Sub Stack: a topic and a push subscription.
///
/// `addConstant` reads the topic's literal name into
/// `OrdersStackConstants.ordersTopicName` in the generated `<stack>.app.dart`
/// file that subscribers import. The full resource path is only known after
/// apply, so `addOutput` makes it the Terraform output `orders_topic_id`.
final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/orders_stack.app.dart'),
      ) {
    final current = addData(GoogleProject(localName: 'current'));

    final ordersSchema = add(
      GooglePubsubSchema(
        localName: 'orders_proto',
        name: .literal('orders-proto'),
        type: .literal(.protocolBuffer),
        definition: .literal(
          'syntax = "proto3"; message Order { string id = 1; }',
        ),
      ),
    );

    // The order publisher's identity. A bare `serviceAccount:...@example.com`
    // literal fails apply ("Service account ... does not exist") because the
    // IAM API validates that the principal is real, so provision the service
    // account in-stack and bind against its `iamMember` ref.
    final ordersPublisher = add(
      GoogleServiceAccount(
        localName: 'orders_publisher',
        // 6-30 chars, lowercase letters/digits/hyphens.
        accountId: .literal('orders-publisher'),
        displayName: .literal('Orders Pub/Sub publisher'),
      ),
    );

    add(
      GooglePubsubSchemaIamMember(
        localName: 'orders_schema_publisher',
        schema: ordersSchema.ref,
        // `roles/pubsub.schemaAdmin` is a project-level role and is NOT
        // grantable on an individual schema resource (apply fails with
        // "Role ... is not supported for this resource"). At the schema
        // resource level the publisher only needs to read/validate the
        // schema, which `roles/pubsub.viewer` covers
        // (pubsub.schemas.get/list/validate).
        role: .literal('roles/pubsub.viewer'),
        member: .ref(ordersPublisher.iamMember),
        dependsOn: [
          ResourceDependency(ordersSchema),
          ResourceDependency(ordersPublisher),
        ],
      ),
    );

    final schemaViewerBinding = add(
      GooglePubsubSchemaIamBinding(
        localName: 'orders_schema_viewer_binding',
        schema: ordersSchema.ref,
        role: .literal('roles/pubsub.viewer'),
        members: .literal([ordersPublisher.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(ordersSchema),
          ResourceDependency(ordersPublisher),
        ],
      ),
    );

    add(
      GooglePubsubSchemaIamPolicy(
        localName: 'orders_schema_viewer_policy',
        schema: ordersSchema.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/pubsub.viewer',
            member:
                'serviceAccount:orders-publisher@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(ordersSchema),
          ResourceDependency(schemaViewerBinding),
        ],
      ),
    );

    final topic = add(
      GooglePubsubTopic(
        localName: 'orders',
        name: .literal('orders-prod'),
        // 7-day retention so late-arriving subscribers can backfill.
        messageRetentionDuration: .literal(
          const Duration(days: 7).toTfDurationString(),
        ),
      ),
    );

    add(
      GooglePubsubSubscription(
        localName: 'orders_push',
        name: .literal('orders-push'),
        // Cloud Scheduler / Pub/Sub cross-resource refs need topic.id (the
        // full `projects/.../topics/orders-prod` path), NOT topic.nameRef.
        topic: topic.ref,
        ackDeadlineSeconds: .literal(60),
        delivery: .pushConfig(
          PubsubSubscriptionPushConfig(
            pushEndpoint: .literal('https://app.example.com/push'),
          ),
        ),
      ),
    );

    add(
      GooglePubsubTopicIamMember(
        localName: 'orders_pubsub_agent',
        topic: topic.ref,
        role: .literal('roles/pubsub.publisher'),
        member: .literal(
          'serviceAccount:service-${current.number.interpolation}@gcp-sa-pubsub.iam.gserviceaccount.com',
        ),
        dependsOn: [ResourceDependency(topic)],
      ),
    );

    // Authoritative topic IAM adjuncts for the in-stack publisher SA.
    // Binding then policy (dependsOn) so apply ordering stays deterministic.
    final topicViewerBinding = add(
      GooglePubsubTopicIamBinding(
        localName: 'orders_publisher_binding',
        topic: topic.ref,
        role: .literal('roles/pubsub.viewer'),
        members: .literal([ordersPublisher.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(topic),
          ResourceDependency(ordersPublisher),
        ],
      ),
    );

    add(
      GooglePubsubTopicIamPolicy(
        localName: 'orders_publisher_policy',
        topic: topic.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/pubsub.viewer',
            member:
                'serviceAccount:orders-publisher@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(topic),
          ResourceDependency(topicViewerBinding),
        ],
      ),
    );

    // Literal topic name — emitted as a Dart constant at synth time (see
    // lib/generated/orders_stack.app.dart). Subscribers compare against this.
    addConstant('ordersTopicName', .ref(topic.nameRef));

    // Full resource ID — Terraform output only (computed until after apply).
    addOutput('orders_topic_id', .ref(topic.id));
  }
}
