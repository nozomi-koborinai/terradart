// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_saved_query`.
const Set<String> _googleLoggingSavedQuerySensitive = <String>{};

enum LoggingSavedQueryVisibility implements TerraformEnum {
  shared('SHARED'),
  privateVisibility('PRIVATE');

  const LoggingSavedQueryVisibility(this.terraformValue);
  @override
  final String terraformValue;
}

/// `logging_query` block — standard Logs Explorer filter.
class LoggingSavedQueryLoggingQuery {
  const LoggingSavedQueryLoggingQuery({
    required this.filter,
    this.summaryFieldStart,
    this.summaryFieldEnd,
  });
  final TfArg<String> filter;
  final TfArg<String>? summaryFieldStart;
  final TfArg<String>? summaryFieldEnd;
  Map<String, Object?> toArgMap() => {
    'filter': filter.toTfJson(),
    if (summaryFieldStart != null)
      'summary_field_start': summaryFieldStart!.toTfJson(),
    if (summaryFieldEnd != null)
      'summary_field_end': summaryFieldEnd!.toTfJson(),
  };
}

/// `ops_analytics_query` block — SQL against log analytics tables.
class LoggingSavedQueryOpsAnalyticsQuery {
  const LoggingSavedQueryOpsAnalyticsQuery({required this.sqlQueryText});
  final TfArg<String> sqlQueryText;
  Map<String, Object?> toArgMap() => {
    'sql_query_text': sqlQueryText.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_saved_query`.
///
/// Saved Logging query (Logs Explorer or Ops Analytics). Provide exactly
/// one of [loggingQuery] or [opsAnalyticsQuery] — Terraform validates at
/// apply time.
///
/// Example:
/// ```dart
/// GoogleLoggingSavedQuery(
///   localName: 'audit_errors',
///   name: TfArg.literal('audit-errors'),
///   displayName: TfArg.literal('Audit errors (7d)'),
///   parent: TfArg.literal('projects/my-proj/locations/global'),
///   location: TfArg.literal('global'),
///   visibility: TfArg.literal(LoggingSavedQueryVisibility.privateVisibility),
///   loggingQuery: LoggingSavedQueryLoggingQuery(
///     filter: TfArg.literal(
///       'logName:"cloudaudit.googleapis.com" AND severity>=ERROR',
///     ),
///   ),
/// );
/// ```
final class GoogleLoggingSavedQuery extends Resource {
  static const String tfType = 'google_logging_saved_query';

  GoogleLoggingSavedQuery({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> displayName,
    required TfArg<String> parent,
    required TfArg<String> location,
    required TfArg<LoggingSavedQueryVisibility> visibility,
    TfArg<String>? description,
    LoggingSavedQueryLoggingQuery? loggingQuery,
    LoggingSavedQueryOpsAnalyticsQuery? opsAnalyticsQuery,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'display_name': displayName,
           'parent': parent,
           'location': location,
           'visibility': visibility,
           if (description != null) 'description': description,
           if (loggingQuery != null)
             'logging_query': TfArg.literal([loggingQuery.toArgMap()]),
           if (opsAnalyticsQuery != null)
             'ops_analytics_query': TfArg.literal([
               opsAnalyticsQuery.toArgMap(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingSavedQuerySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
