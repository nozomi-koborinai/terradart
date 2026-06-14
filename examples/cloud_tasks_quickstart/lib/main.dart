/// Cloud Tasks quickstart -- queue + IAM enqueuer grant.
///
/// Defines `EmailJobsStack`: provisions a `google_cloud_tasks_queue` with
/// retry / rate-limit configuration, attaches a `_iam_member` granting
/// `roles/cloudtasks.enqueuer`, and exports the queue's location as a Dart
/// constant for application-side use.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_tasks.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

/// Cloud Tasks queue + IAM enqueuer Stack.
final class EmailJobsStack extends Stack {
  EmailJobsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    // ---- API enablement ---------------------------------------------------
    //
    // [Apis.enable] enables the Cloud Tasks API and waits 60s for propagation
    // before the queue applies.

    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.cloudTasks],
      propagationDelay: const Duration(seconds: 60),
    );

    final queue = add(
      GoogleCloudTasksQueue(
        localName: 'email_jobs',
        name: TfArg.literal('email-jobs'),
        location: TfArg.literal('us-central1'),
        rateLimits: CloudTasksQueueRateLimits(
          maxConcurrentDispatches: TfArg.literal(10),
          maxDispatchesPerSecond: TfArg.literal(5),
        ),
        retryConfig: CloudTasksQueueRetryConfig(
          maxAttempts: TfArg.literal(5),
          minBackoff: TfArg.literal('5s'),
          maxBackoff: TfArg.literal('300s'),
          maxDoublings: TfArg.literal(3),
        ),
        dependsOn: apiDeps,
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
}
