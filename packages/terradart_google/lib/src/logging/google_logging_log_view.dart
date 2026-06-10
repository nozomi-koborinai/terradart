// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_log_view`.
const Set<String> _googleLoggingLogViewSensitive = <String>{};

/// Factory wrapper for `google_logging_log_view`.
///
/// A filtered view into a log bucket. Pass `bucket` as the bucket id
/// (same value as [GoogleLoggingProjectBucketConfig.bucketId]) and wire
/// IAM via [GoogleLoggingLogViewIamMember].
///
/// Example:
/// ```dart
/// final auditView = GoogleLoggingLogView(
///   localName: 'audit_view',
///   bucket: TfArg.ref(auditBucket.bucketIdRef),
///   name: TfArg.literal('audit-only'),
///   filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
/// );
/// ```
final class GoogleLoggingLogView extends Resource {
  static const String tfType = 'google_logging_log_view';

  GoogleLoggingLogView({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> name,
    TfArg<String>? filter,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<String>? parent,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'name': name,
           if (filter != null) 'filter': filter,
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (parent != null) 'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');
}
