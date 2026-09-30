/// Cloud Scheduler quickstart -- scheduler job with a Pub/Sub target.
///
/// `pubsub_target.topic_name` requires the **full topic resource path**
/// (`projects/{project}/topics/{name}`): it takes the topic itself
/// (`.of(topic)`), which emits `topic.id`, so the bare name cannot slip in.
///
/// `NightlyCleanupStack` provisions a Pub/Sub topic and a scheduler job
/// that publishes to it every night at 03:00 JST.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_scheduler.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_time/terradart_time.dart';

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
        name: .literal('nightly-cleanup'),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleCloudSchedulerJob(
        localName: 'nightly_job',
        name: .literal('nightly-cleanup-job'),
        region: .literal('us-central1'),
        schedule: .literal('0 3 * * *'),
        timeZone: .literal('Asia/Tokyo'),
        // Cloud Scheduler requires the full topic path
        // (projects/.../topics/nightly-cleanup); a topic reference emits
        // `topic.id`, never the bare name.
        target: .pubsubTarget(
          CloudSchedulerJobPubsubTarget(
            topicName: .of(topic),
            // Pub/Sub Scheduler accepts base64-encoded data here. The
            // provider expects pre-encoded text; "Y2xlYW51cA==" is base64
            // for "cleanup".
            data: .literal('Y2xlYW51cA=='),
          ),
        ),
        retryConfig: CloudSchedulerJobRetryConfig(
          retryCount: .literal(3),
          minBackoffDuration: .literal('5s'),
          maxBackoffDuration: .literal('60s'),
        ),
        dependsOn: apiDeps,
      ),
    );

    addExport(
      'NIGHTLY_TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );
  }
}
