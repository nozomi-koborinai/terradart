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

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_scheduler.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';

/// Cloud Scheduler job + Pub/Sub topic Stack.
class NightlyCleanupStack extends Stack {
  NightlyCleanupStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1')
          ],
        ) {
    final topic = add(
      GooglePubsubTopic(
        localName: 'nightly_cleanup',
        name: TfArg.literal('nightly-cleanup'),
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
        target: PubsubTarget(
          topicName: TfArg.ref(topic.id),
          // Pub/Sub Scheduler accepts base64-encoded data here. The
          // provider expects pre-encoded text; "Y2xlYW51cA==" is base64
          // for "cleanup".
          data: TfArg.literal('Y2xlYW51cA=='),
        ),
        retryConfig: const SchedulerRetryConfig(
          retryCount: TfArgLiteral<int>(3),
          minBackoffDuration: TfArgLiteral<String>('5s'),
          maxBackoffDuration: TfArgLiteral<String>('60s'),
        ),
      ),
    );

    addExport(
      'NIGHTLY_TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/nightly_cleanup_stack.app.dart');
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
