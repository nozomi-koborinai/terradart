// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../logging/google_logging_project_bucket_config.dart'
    show GoogleLoggingProjectBucketConfig;

/// Sensitive field paths for `google_logging_log_view`.
const Set<String> _googleLoggingLogViewSensitive = <String>{};

/// Factory wrapper for `google_logging_log_view`.
///
/// Describes a view over log entries in a bucket.
///
/// A filtered view into a log bucket. Pass `bucket` as the bucket id
/// (same value as [GoogleLoggingProjectBucketConfig.bucketId]) and wire
/// IAM via [GoogleLoggingLogViewIamMember].
///
/// Example:
/// ```dart
/// final auditView = GoogleLoggingLogView(
///   localName: 'audit_view',
///   bucket: auditBucket.ref,
///   name: TfArg.literal('audit-only'),
///   filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
/// );
/// ```
final class GoogleLoggingLogView extends Resource {
  static const String tfType = 'google_logging_log_view';

  GoogleLoggingLogView({
    required super.localName,
    required RefTo<GoogleLoggingProjectBucketConfig> bucket,
    required TfArg<String> name,
    TfArg<String>? filter,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<String>? parent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'name': name,
           'filter': ?filter,
           'description': ?description,
           'location': ?location,
           'parent': ?parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingLogView>`.
  RefTo<GoogleLoggingLogView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
