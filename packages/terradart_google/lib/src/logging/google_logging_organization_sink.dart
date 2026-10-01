// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_organization_sink`.
const Set<String> _googleLoggingOrganizationSinkSensitive = <String>{};

/// `bigquery_options` block for `google_logging_organization_sink`.
/// Toggles partitioned tables for BigQuery destinations (date-sharded
/// vs. partitioned by `_PARTITIONTIME`).
class LoggingOrganizationSinkBigqueryOptions {
  const LoggingOrganizationSinkBigqueryOptions({
    required this.usePartitionedTables,
  });
  final TfArg<bool> usePartitionedTables;
  Map<String, Object?> toArgMap() => {
    'use_partitioned_tables': usePartitionedTables,
  };
}

/// One entry in the `exclusions` list for
/// `google_logging_organization_sink`. Log entries matching `filter` are
/// dropped before being routed to the sink's destination. `name` must be
/// unique within the sink.
class LoggingOrganizationSinkExclusion {
  const LoggingOrganizationSinkExclusion({
    required this.name,
    required this.filter,
    this.description,
    this.disabled,
  });
  final TfArg<String> name;
  final TfArg<String> filter;
  final TfArg<String>? description;
  final TfArg<bool>? disabled;
  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'filter': filter.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_organization_sink`.
///
/// Organization-scoped sinks always mint a unique writer service account;
/// grant it the destination-side IAM role (e.g. `roles/bigquery.dataEditor`)
/// by passing `sink.writerIdentity` to the IAM member
/// resource.
///
/// Example:
/// ```dart
/// final sink = GoogleLoggingOrganizationSink(
///   localName: 'org_audit_to_bq',
///   name: TfArg.literal('org-audit-to-bq'),
///   orgId: TfArg.literal('123456789012'),
///   destination: TfArg.literal(
///     'bigquery.googleapis.com/projects/my-proj/datasets/audit_logs',
///   ),
///   filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
///   includeChildren: TfArg.literal(true),
/// );
/// ```
final class GoogleLoggingOrganizationSink extends Resource {
  static const String tfType = 'google_logging_organization_sink';

  GoogleLoggingOrganizationSink({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
    required TfArg<String> destination,
    TfArg<String>? filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? includeChildren,
    TfArg<bool>? interceptChildren,
    LoggingOrganizationSinkBigqueryOptions? bigqueryOptions,
    List<LoggingOrganizationSinkExclusion>? exclusions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'destination': destination,
           'filter': ?filter,
           'description': ?description,
           'disabled': ?disabled,
           'include_children': ?includeChildren,
           'intercept_children': ?interceptChildren,
           if (bigqueryOptions != null)
             'bigquery_options': TfArg.literal([bigqueryOptions.toArgMap()]),
           if (exclusions != null)
             'exclusions': TfArg.literal(
               exclusions.map((e) => e.toArgMap()).toList(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingOrganizationSinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingOrganizationSink>`.
  RefTo<GoogleLoggingOrganizationSink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `writer_identity` attribute.
  TfRef<String> get writerIdentity =>
      TfRef.attribute<String>(this, 'writer_identity');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `include_children` attribute.
  TfRef<bool> get includeChildren =>
      TfRef.attribute<bool>(this, 'include_children');

  /// Reference to `intercept_children` attribute.
  TfRef<bool> get interceptChildren =>
      TfRef.attribute<bool>(this, 'intercept_children');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');
}
