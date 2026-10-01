// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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
///   'usage_reports',
///   name: TfArg.literal('my-usage-reports'),
///   location: TfArg.literal('US'),
///   forceDestroy: TfArg.literal(true),
/// );
/// GoogleProjectUsageExportBucket(
///   'usage_export',
///   bucketName: reports.ref,
///   prefix: TfArg.literal('gce-usage'),
/// );
/// ```
final class GoogleProjectUsageExportBucket extends Resource {
  static const String tfType = 'google_project_usage_export_bucket';

  GoogleProjectUsageExportBucket(
    super.localName, {
    required RefTo<GoogleStorageBucket> bucketName,
    TfArg<String>? prefix,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_name': bucketName.encodeAs('name'),
           'prefix': ?prefix,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectUsageExportBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectUsageExportBucket>`.
  RefTo<GoogleProjectUsageExportBucket> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `prefix` attribute.
  TfRef<String> get prefix => TfRef.attribute<String>(this, 'prefix');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
