/// Cloud Tasks quickstart -- queue + IAM enqueuer grant.
///
/// Defines `EmailJobsStack`: provisions a `google_cloud_tasks_queue` with
/// retry / rate-limit configuration, attaches a `_iam_member` granting
/// `roles/cloudtasks.enqueuer`, and exports the queue's location as a Dart
/// constant for application-side use.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_tasks.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

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
        name: .literal('email-jobs'),
        location: .literal('us-central1'),
        rateLimits: CloudTasksQueueRateLimits(
          maxConcurrentDispatches: .literal(10),
          maxDispatchesPerSecond: .literal(5),
        ),
        retryConfig: CloudTasksQueueRetryConfig(
          maxAttempts: .literal(5),
          minBackoff: .literal('5s'),
          maxBackoff: .literal('300s'),
          maxDoublings: .literal(3),
        ),
        dependsOn: apiDeps,
      ),
    );

    // The service account that enqueues tasks. The IAM binding below grants it
    // the enqueuer role; without this SA the binding fails with "Service
    // account ... does not exist". `google_service_account` is not API-gated,
    // so no Apis dependency is required.
    final enqueuerSa = add(
      GoogleServiceAccount(
        localName: 'enqueuer',
        accountId: .literal('enqueuer'),
        displayName: .literal('Cloud Tasks enqueuer'),
      ),
    );

    // Grant the enqueuer role. The member is derived from the SA's
    // pre-formatted `serviceAccount:<email>` ref, and dependsOn ensures the SA
    // exists before the policy is applied.
    add(
      GoogleCloudTasksQueueIamMember(
        localName: 'email_jobs_enqueuer',
        // Cloud Tasks queue IAM identity = name + location pair (NOT id).
        name: .ref(queue.nameRef),
        location: .ref(queue.locationRef),
        role: .literal('roles/cloudtasks.enqueuer'),
        member: .ref(enqueuerSa.iamMember),
        dependsOn: [ResourceDependency(enqueuerSa)],
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
