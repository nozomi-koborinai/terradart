// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_saved_query`.
const Set<String> _googleLoggingSavedQuerySensitive = <String>{};

/// Logging Saved Query enum for `visibility`.
enum LoggingSavedQueryVisibility implements TerraformEnum {
  shared('SHARED'),
  private('PRIVATE');

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

/// Exactly one of `logging_query`, `ops_analytics_query` on `google_logging_saved_query`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.loggingQuery(...)`.
sealed class LoggingSavedQueryDefinition {
  const LoggingSavedQueryDefinition();

  /// Sets `logging_query`.
  const factory LoggingSavedQueryDefinition.loggingQuery(
    LoggingSavedQueryLoggingQuery loggingQuery,
  ) = LoggingSavedQueryDefinitionLoggingQuery;

  /// Sets `ops_analytics_query`.
  const factory LoggingSavedQueryDefinition.opsAnalyticsQuery(
    LoggingSavedQueryOpsAnalyticsQuery opsAnalyticsQuery,
  ) = LoggingSavedQueryDefinitionOpsAnalyticsQuery;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LoggingSavedQueryDefinition.loggingQuery] choice: sets `logging_query`.
final class LoggingSavedQueryDefinitionLoggingQuery
    extends LoggingSavedQueryDefinition {
  const LoggingSavedQueryDefinitionLoggingQuery(this.loggingQuery);

  final LoggingSavedQueryLoggingQuery loggingQuery;

  @override
  String get blockKey => 'logging_query';

  @override
  Map<String, Object?> encode() => {
    'logging_query': [loggingQuery.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'logging_query': TfArg.literal([loggingQuery.toArgMap()]),
  };
}

/// The [LoggingSavedQueryDefinition.opsAnalyticsQuery] choice: sets `ops_analytics_query`.
final class LoggingSavedQueryDefinitionOpsAnalyticsQuery
    extends LoggingSavedQueryDefinition {
  const LoggingSavedQueryDefinitionOpsAnalyticsQuery(this.opsAnalyticsQuery);

  final LoggingSavedQueryOpsAnalyticsQuery opsAnalyticsQuery;

  @override
  String get blockKey => 'ops_analytics_query';

  @override
  Map<String, Object?> encode() => {
    'ops_analytics_query': [opsAnalyticsQuery.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ops_analytics_query': TfArg.literal([opsAnalyticsQuery.toArgMap()]),
  };
}

/// Factory wrapper for `google_logging_saved_query`.
///
/// Describes a query that has been saved by a user.
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
///   visibility: TfArg.literal(LoggingSavedQueryVisibility.private),
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
    required LoggingSavedQueryDefinition definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'display_name': displayName,
           'parent': parent,
           'location': location,
           'visibility': visibility,
           'description': ?description,
           ...definition.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingSavedQuerySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingSavedQuery>`.
  RefTo<GoogleLoggingSavedQuery> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
