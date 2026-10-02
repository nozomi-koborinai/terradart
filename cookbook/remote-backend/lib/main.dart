/// remote-backend recipe — a minimal Stack that provisions the GCS bucket
/// holding Terraform state, then keeps its own state in that bucket.
///
/// The first apply runs with [LocalBackend], because the bucket does not
/// exist yet. Once it does, [RemoteBackendStack.stateBucket] switches the
/// Stack to a [GcsBackend] in that bucket and the local state moves into
/// it. Any other Stack moves its state the same way, by passing a
/// `GcsBackend` with its own `prefix`.
///
/// Pattern demonstrated: **introduce remote state to a previously local
/// Stack**. Versioning and uniform bucket-level access suit a long-lived
/// state container.
library;

import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

final class RemoteBackendStack extends Stack {
  RemoteBackendStack({
    required this.projectId,
    required this.bucketName,
    this.stateBucket,
  }) : super(
         providers: [
           GoogleProvider(project: projectId, region: 'asia-northeast1'),
         ],
         backend: switch (stateBucket) {
           null => const LocalBackend(),
           final bucket => GcsBackend(bucket: bucket, prefix: 'remote-backend'),
         },
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

  /// The bucket that holds this Stack's own state; `null` keeps it in a
  /// local file, as it must be before the bucket exists.
  final String? stateBucket;
}
