// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_project_bucket_config`.
const Set<String> _googleLoggingProjectBucketConfigSensitive = <String>{};

/// Factory wrapper for `google_logging_project_bucket_config`.
///
/// Project-scoped log bucket configuration (retention, analytics, CMEK).
/// Pair with [GoogleLoggingLogView] on the same `bucket_id` / `location`.
///
/// Example:
/// ```dart
/// final auditBucket = GoogleLoggingProjectBucketConfig(
///   localName: 'audit_bucket',
///   bucketId: TfArg.literal('audit-logs'),
///   location: TfArg.literal('global'),
///   retentionDays: TfArg.literal(30),
///   enableAnalytics: TfArg.literal(true),
/// );
/// ```
final class GoogleLoggingProjectBucketConfig extends Resource {
  static const String tfType = 'google_logging_project_bucket_config';

  GoogleLoggingProjectBucketConfig({
    required super.localName,
    required TfArg<String> bucketId,
    required TfArg<String> location,
    required TfArg<String> project,
    TfArg<String>? description,
    TfArg<bool>? enableAnalytics,
    TfArg<num>? retentionDays,
    TfArg<bool>? locked,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           'location': location,
           'project': project,
           if (description != null) 'description': description,
           if (enableAnalytics != null) 'enable_analytics': enableAnalytics,
           if (retentionDays != null) 'retention_days': retentionDays,
           if (locked != null) 'locked': locked,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectBucketConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  TfRef<String> get bucketIdRef => TfRef.attribute<String>(this, 'bucket_id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
