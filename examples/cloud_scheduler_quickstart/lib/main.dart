/// Cloud Scheduler quickstart -- scheduler job with a Pub/Sub target.
///
/// Demonstrates the cross-resource reference pattern that trips up most
/// first-time terradart users: `pubsub_target.topic_name` requires the
/// **full topic resource path** (`projects/{project}/topics/{name}`),
/// which the factory exposes as `topic.id` -- NOT `topic.nameRef`.
///
/// `NightlyCleanupStack` provisions a Pub/Sub topic and a scheduler job
/// that publishes to it every night at 03:00 JST.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_scheduler.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/time.dart';

/// Cloud Scheduler job + Pub/Sub topic Stack.
final class NightlyCleanupStack extends Stack {
  NightlyCleanupStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    // Enable the Cloud Scheduler and Pub/Sub APIs and wait for propagation
    // before the topic and job apply.
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.cloudScheduler, Barrels.pubsub],
      propagationDelay: const Duration(seconds: 60),
    );

    final topic = add(
      GooglePubsubTopic(
        localName: 'nightly_cleanup',
        name: TfArg.literal('nightly-cleanup'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleCloudSchedulerJob(
        localName: 'nightly_job',
        name: TfArg.literal('nightly-cleanup-job'),
        region: TfArg.literal('us-central1'),
        schedule: TfArg.literal('0 3 * * *'),
        timeZone: TfArg.literal('Asia/Tokyo'),
        // IMPORTANT: Cloud Scheduler requires the full topic path
        // (projects/.../topics/nightly-cleanup), which is `topic.id`.
        // Using `topic.nameRef` would emit only the bare name and fail
        // at apply time. The PubsubTarget's class doc spells this out.
        target: CloudSchedulerJobPubsubTarget(
          topicName: TfArg.ref(topic.id),
          // Pub/Sub Scheduler accepts base64-encoded data here. The
          // provider expects pre-encoded text; "Y2xlYW51cA==" is base64
          // for "cleanup".
          data: TfArg.literal('Y2xlYW51cA=='),
        ),
        retryConfig: CloudSchedulerJobSchedulerRetryConfig(
          retryCount: TfArgLiteral<int>(3),
          minBackoffDuration: TfArgLiteral<String>('5s'),
          maxBackoffDuration: TfArgLiteral<String>('60s'),
        ),
        dependsOn: apiDeps,
      ),
    );

    addExport(
      'NIGHTLY_TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/nightly_cleanup_stack.app.dart');
  }
}
