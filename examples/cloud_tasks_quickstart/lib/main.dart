/// Cloud Tasks quickstart -- queue + IAM enqueuer grant.
///
/// Defines `EmailJobsStack`: provisions a `google_cloud_tasks_queue` with
/// retry / rate-limit configuration, attaches a `_iam_member` granting
/// `roles/cloudtasks.enqueuer`, and exports the queue's location as a Dart
/// constant for application-side use.
library;

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
        appExports: AppExports('lib/generated/email_jobs_stack.app.dart'),
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
        'email_jobs',
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
        'enqueuer',
        accountId: .literal('enqueuer'),
        displayName: .literal('Cloud Tasks enqueuer'),
      ),
    );

    // Grant the enqueuer role. The member is derived from the SA's
    // pre-formatted `serviceAccount:<email>` ref, and dependsOn ensures the SA
    // exists before the policy is applied.
    add(
      GoogleCloudTasksQueueIamMember(
        'email_jobs_enqueuer',
        // Cloud Tasks queue IAM identity = name + location pair (NOT id).
        queue: queue.ref,
        role: .literal('roles/cloudtasks.enqueuer'),
        member: enqueuerSa.principal,
        dependsOn: [enqueuerSa],
      ),
    );

    // Export queue identifiers as typed Dart constants.
    addConstant('emailQueueName', .ref(queue.name));
    addConstant('emailQueueLocation', .ref(queue.location));
  }
}
