/// IAM quickstart -- all four curated `_iam_member` resources in one Stack,
/// plus the [GoogleServiceAccount] they bind to.
///
/// Demonstrates the additive `_iam_member` pattern across:
///   1. `google_pubsub_topic_iam_member`
///   2. `google_pubsub_subscription_iam_member`
///   3. `google_cloud_tasks_queue_iam_member`
///   4. `google_secret_manager_secret_iam_member`
///
/// Each IAM resource has a slightly different identity surface (topic name
/// vs. subscription name vs. queue name+location vs. secret_id) -- this
/// example shows the right `TfRef` getter for each. The service account
/// member string is wired via `sa.member` (the pre-formatted
/// `serviceAccount:<email>` attribute) so no manual prefix concatenation
/// is needed.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_tasks.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/secret_manager.dart';

/// IAM showcase Stack.
class IamShowcaseStack extends Stack {
  IamShowcaseStack({
    required String projectId,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1')
          ],
        ) {
    // ---- Service account -------------------------------------------------
    //
    // The SA the four bindings below grant roles to. `sa.member` is the
    // computed `serviceAccount:<email>` string -- pass it straight to each
    // `_iam_member` resource without manually prepending `serviceAccount:`.

    final sa = add(
      GoogleServiceAccount(
        localName: 'demo',
        accountId: TfArg.literal('demo-sa'),
        displayName: TfArg.literal('IAM quickstart demo SA'),
      ),
    );

    final saMember = TfArg.ref(sa.member);

    // ---- Resources to grant against ----------------------------------------

    final topic = add(
      GooglePubsubTopic(
        localName: 'demo',
        name: TfArg.literal('demo-topic'),
      ),
    );

    final subscription = add(
      GooglePubsubSubscription(
        localName: 'demo_sub',
        name: TfArg.literal('demo-sub'),
        // topic.id (NOT topic.nameRef) -- subscriptions need full path.
        topic: TfArg.ref(topic.id),
      ),
    );

    final queue = add(
      GoogleCloudTasksQueue(
        localName: 'demo_queue',
        name: TfArg.literal('demo-queue'),
        location: TfArg.literal('us-central1'),
      ),
    );

    final secret = add(
      GoogleSecretManagerSecret(
        localName: 'demo_secret',
        secretId: TfArg.literal('demo-secret'),
        replication: Replication.auto(),
      ),
    );

    // ---- 1. Topic-level: publisher ----------------------------------------

    add(
      GooglePubsubTopicIamMember(
        localName: 'topic_publisher',
        // Topic IAM identifies the topic by its **name** (not id).
        topic: TfArg.ref(topic.nameRef),
        role: TfArg.literal('roles/pubsub.publisher'),
        member: saMember,
      ),
    );

    // ---- 2. Subscription-level: subscriber --------------------------------

    add(
      GooglePubsubSubscriptionIamMember(
        localName: 'sub_subscriber',
        // Subscription IAM uses the subscription **name**.
        subscription: TfArg.ref(subscription.nameRef),
        role: TfArg.literal('roles/pubsub.subscriber'),
        member: saMember,
      ),
    );

    // ---- 3. Queue-level: enqueuer -----------------------------------------

    add(
      GoogleCloudTasksQueueIamMember(
        localName: 'queue_enqueuer',
        // Queue IAM identifies via **name + location** (not id).
        name: TfArg.ref(queue.nameRef),
        location: TfArg.ref(queue.locationRef),
        role: TfArg.literal('roles/cloudtasks.enqueuer'),
        member: saMember,
      ),
    );

    // ---- 4. Secret-level: accessor ----------------------------------------

    add(
      GoogleSecretManagerSecretIamMember(
        localName: 'secret_accessor',
        // Secret IAM identifies via **secret_id** (not id / name).
        secretId: TfArg.ref(secret.secretIdRef),
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: saMember,
      ),
    );

    // The seam: export each resource path so the application side has
    // typed lookup keys for all four resources.
    addExport(
      'TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );
    addExport(
      'SUBSCRIPTION_ID',
      ResourceIdExport(subscription.id, emitTerraformOutput: true),
    );
    addExport(
      'QUEUE_ID',
      ResourceIdExport(queue.id, emitTerraformOutput: true),
    );
    addExport(
      'SECRET_ID',
      ResourceIdExport(secret.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/iam_showcase_stack.app.dart');
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);

    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );

    final dartConstants = result.dartConstants;
    final dartPath = result.dartConstantsPath;
    if (dartConstants != null && dartPath != null) {
      final dartFile = File(dartPath);
      await dartFile.parent.create(recursive: true);
      await dartFile.writeAsString(dartConstants);
    }
  }
}
