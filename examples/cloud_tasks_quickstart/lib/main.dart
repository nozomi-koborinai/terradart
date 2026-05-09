/// Cloud Tasks quickstart -- queue + IAM enqueuer grant.
///
/// Defines `EmailJobsStack`: provisions a `google_cloud_tasks_queue` with
/// retry / rate-limit configuration, attaches a `_iam_member` granting
/// `roles/cloudtasks.enqueuer`, and exports the queue's location as a Dart
/// constant for application-side use.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

/// Cloud Tasks queue + IAM enqueuer Stack.
class EmailJobsStack extends Stack {
  EmailJobsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1')
          ],
        ) {
    final queue = add(
      GoogleCloudTasksQueue(
        localName: 'email_jobs',
        name: TfArg.literal('email-jobs'),
        location: TfArg.literal('us-central1'),
        rateLimits: const RateLimits(
          maxConcurrentDispatches: TfArgLiteral<int>(10),
          maxDispatchesPerSecond: TfArgLiteral<num>(5),
        ),
        retryConfig: const RetryConfig(
          maxAttempts: TfArgLiteral<int>(5),
          minBackoff: TfArgLiteral<String>('5s'),
          maxBackoff: TfArgLiteral<String>('300s'),
          maxDoublings: TfArgLiteral<int>(3),
        ),
      ),
    );

    add(
      GoogleCloudTasksQueueIamMember(
        localName: 'email_jobs_enqueuer',
        // Cloud Tasks queue IAM identity = name + location pair (NOT id).
        name: TfArg.ref(queue.nameRef),
        location: TfArg.ref(queue.locationRef),
        role: TfArg.literal('roles/cloudtasks.enqueuer'),
        member: TfArg.literal(
          'serviceAccount:enqueuer@$projectId.iam.gserviceaccount.com',
        ),
      ),
    );

    // Export queue identifiers as typed Dart constants.
    addExport(
      'EMAIL_QUEUE_NAME',
      ResourceIdExport(queue.nameRef, emitTerraformOutput: true),
    );
    addExport(
      'EMAIL_QUEUE_LOCATION',
      ResourceIdExport(queue.locationRef, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/email_jobs_stack.app.dart');
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
