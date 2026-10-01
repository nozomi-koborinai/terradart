// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_log_scope`.
const Set<String> _googleLoggingLogScopeSensitive = <String>{};

/// Factory wrapper for `google_logging_log_scope`.
///
/// Describes a group of resources to read log entries from
///
/// Project log scope limiting which resources a linked analytics dataset
/// can query.
///
/// Example:
/// ```dart
/// GoogleLoggingLogScope(
///   'audit_scope',
///   name: TfArg.literal('audit-scope'),
///   resourceNames: TfArg.literal([
///     'projects/my-proj/locations/global/buckets/audit-logs',
///   ]),
/// );
/// ```
final class GoogleLoggingLogScope extends Resource {
  static const String tfType = 'google_logging_log_scope';

  GoogleLoggingLogScope(
    super.localName, {
    required TfArg<String> name,
    required TfArg<List<String>> resourceNames,
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
           'name': name,
           'resource_names': resourceNames,
           'description': ?description,
           'location': ?location,
           'parent': ?parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingLogScope>`.
  RefTo<GoogleLoggingLogScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `resource_names` attribute.
  TfRef<List<String>> get resourceNames =>
      TfRef.attribute<List<String>>(this, 'resource_names');
}
