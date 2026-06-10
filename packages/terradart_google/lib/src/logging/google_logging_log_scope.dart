// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_log_scope`.
const Set<String> _googleLoggingLogScopeSensitive = <String>{};

/// Factory wrapper for `google_logging_log_scope`.
///
/// Project log scope limiting which resources a linked analytics dataset
/// can query.
///
/// Example:
/// ```dart
/// GoogleLoggingLogScope(
///   localName: 'audit_scope',
///   name: TfArg.literal('audit-scope'),
///   resourceNames: TfArg.literal([
///     'projects/my-proj/locations/global/buckets/audit-logs',
///   ]),
/// );
/// ```
final class GoogleLoggingLogScope extends Resource {
  static const String tfType = 'google_logging_log_scope';

  GoogleLoggingLogScope({
    required super.localName,
    required TfArg<String> name,
    required TfArg<List<String>> resourceNames,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<String>? parent,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_names': resourceNames,
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (parent != null) 'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogScopeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
