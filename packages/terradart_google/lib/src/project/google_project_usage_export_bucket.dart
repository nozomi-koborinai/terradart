// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_usage_export_bucket`.
const Set<String> _googleProjectUsageExportBucketSensitive = <String>{};

/// Factory wrapper for `google_project_usage_export_bucket`.
///
/// Project-level **Compute Engine usage export** — points daily usage
/// reports at a GCS [bucketName] (optional [prefix]).
///
/// This resource is free project metadata. Report objects written to the
/// bucket incur normal Cloud Storage charges if/when GCE emits them; empty
/// smoke stacks typically write nothing.
///
/// Enable `compute.googleapis.com` and `storage.googleapis.com` via
/// [GoogleProjectService] before apply. Prefer a dedicated bucket with
/// `forceDestroy: true` in smoke stacks so teardown can empty it.
///
/// Example:
/// ```dart
/// final reports = GoogleStorageBucket(
///   localName: 'usage_reports',
///   name: TfArg.literal('my-usage-reports'),
///   location: TfArg.literal('US'),
///   forceDestroy: TfArg.literal(true),
/// );
/// GoogleProjectUsageExportBucket(
///   localName: 'usage_export',
///   bucketName: TfArg.ref(reports.nameRef),
///   prefix: TfArg.literal('gce-usage'),
/// );
/// ```
final class GoogleProjectUsageExportBucket extends Resource {
  static const String tfType = 'google_project_usage_export_bucket';

  GoogleProjectUsageExportBucket({
    required super.localName,
    required TfArg<String> bucketName,
    TfArg<String>? prefix,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_name': bucketName,
           if (prefix != null) 'prefix': prefix,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectUsageExportBucketSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
