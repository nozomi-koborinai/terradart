/// remote-backend recipe — minimal Stack provisioning a GCS bucket to hold
/// Terraform state. Apply with local backend (Stage 0); migrate this bucket's
/// own state into GCS via `terraform init -migrate-state`; then other recipes
/// (e.g. single-project-app) can be retargeted at this bucket via a
/// `backend "gcs" { bucket = "...", prefix = "..." }` declaration in their
/// `tf-out/terraform.tf`.
///
/// Pattern demonstrated: **introduce remote state to a previously local Stack**.
/// Includes versioning + uniform bucket-level access suitable for a
/// long-lived terraform state container.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

final class RemoteBackendStack extends Stack {
  RemoteBackendStack({required this.projectId, required this.bucketName})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
        backend: const LocalBackend(),
      ) {
    add(
      GoogleStorageBucket(
        'tfstate',
        name: .literal(bucketName),
        location: .literal('asia-northeast1'),
        uniformBucketLevelAccess: .literal(true),
        versioning: StorageBucketVersioning(enabled: .literal(true)),
        // forceDestroy: false is the default; explicit here for clarity.
        // State buckets are long-lived; destroy must be a deliberate action.
        forceDestroy: .literal(false),
      ),
    );
  }

  final String projectId;
  final String bucketName;
}
