// packages/terradart_google/lib/iam.dart
/// IAM service accounts + Workload Identity Federation pools. Per-resource
/// IAM members live alongside their owning service barrel (e.g.
/// `pubsub.dart` exports `GooglePubsubTopicIamMember`).
library;

export 'src/iam/google_iam_workload_identity_pool.dart'
    show GoogleIamWorkloadIdentityPool, WorkloadIdentityPoolMode;
export 'src/iam/google_service_account.dart' show GoogleServiceAccount;
