/// Compute Engine usage export quickstart.
///
/// Enables `compute.googleapis.com` + `storage.googleapis.com`, creates an
/// empty GCS bucket (`force_destroy`), and points the project
/// `google_project_usage_export_bucket` singleton at it.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// Usage export Stack: empty reports bucket + project usage export singleton.
final class UsageExportStack extends Stack {
  UsageExportStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // Globally unique name via project id; forceDestroy so smoke teardown
    // can empty any report objects GCE may have written.
    final reports = add(
      GoogleStorageBucket(
        localName: 'usage_reports',
        name: TfArg.literal('$projectId-terradart-usage-reports'),
        location: TfArg.literal('US'),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [
          ResourceDependency(apiCompute),
          ResourceDependency(apiStorage),
        ],
      ),
    );

    add(
      GoogleProjectUsageExportBucket(
        localName: 'usage_export',
        bucketName: TfArg.ref(reports.nameRef),
        prefix: TfArg.literal('gce-usage'),
        dependsOn: [
          ResourceDependency(apiCompute),
          ResourceDependency(reports),
        ],
      ),
    );
  }
}
