// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_logging_project_bucket_config`.
const Set<String> _googleLoggingProjectBucketConfigSensitive = <String>{};

/// Typed helper for the `cmek_settings` block of
/// `google_logging_project_bucket_config` (derived from provider schema).
@immutable
final class LoggingProjectBucketConfigCmekSettings {
  const LoggingProjectBucketConfigCmekSettings({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `index_configs` block of
/// `google_logging_project_bucket_config` (derived from provider schema).
@immutable
final class LoggingProjectBucketConfigIndexConfigs {
  const LoggingProjectBucketConfigIndexConfigs({
    required this.fieldPath,
    required this.type,
  });

  final TfArg<String> fieldPath;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'field_path': fieldPath.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_project_bucket_config`.
///
/// Project-scoped log bucket configuration (retention, analytics, CMEK).
/// Pair with [GoogleLoggingLogView] on the same `bucket_id` / `location`.
///
/// Example:
/// ```dart
/// final auditBucket = GoogleLoggingProjectBucketConfig(
///   'audit_bucket',
///   project: .literal('my-project'),
///   bucketId: .literal('audit-logs'),
///   location: .literal('global'),
///   retentionDays: .literal(30),
///   enableAnalytics: .literal(true),
/// );
/// ```
final class GoogleLoggingProjectBucketConfig extends Resource {
  static const String tfType = 'google_logging_project_bucket_config';

  GoogleLoggingProjectBucketConfig(
    super.localName, {
    required TfArg<String> bucketId,
    required TfArg<String> location,
    required TfArg<String> project,
    TfArg<String>? description,
    TfArg<bool>? enableAnalytics,
    TfArg<num>? retentionDays,
    TfArg<bool>? locked,
    LoggingProjectBucketConfigCmekSettings? cmekSettings,
    List<LoggingProjectBucketConfigIndexConfigs>? indexConfigs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           'location': location,
           'project': project,
           'description': ?description,
           'enable_analytics': ?enableAnalytics,
           'retention_days': ?retentionDays,
           'locked': ?locked,
           if (cmekSettings != null)
             'cmek_settings': TfArg.literal(cmekSettings.encode()),
           if (indexConfigs != null)
             'index_configs': TfArg.literal([
               for (final e in indexConfigs) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectBucketConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingProjectBucketConfig>`.
  RefTo<GoogleLoggingProjectBucketConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `bucket_id` attribute.
  TfRef<String> get bucketId => TfRef.attribute<String>(this, 'bucket_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_analytics` attribute.
  TfRef<bool> get enableAnalytics =>
      TfRef.attribute<bool>(this, 'enable_analytics');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `retention_days` attribute.
  TfRef<num> get retentionDays => TfRef.attribute<num>(this, 'retention_days');
}
