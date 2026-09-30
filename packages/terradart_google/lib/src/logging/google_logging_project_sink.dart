// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_project_sink`.
const Set<String> _googleLoggingProjectSinkSensitive = <String>{};

/// `bigquery_options` block. Toggles partitioned tables for BigQuery
/// destinations (date-sharded vs. partitioned by `_PARTITIONTIME`).
class LoggingProjectSinkBigqueryOptions {
  const LoggingProjectSinkBigqueryOptions({required this.usePartitionedTables});
  final TfArg<bool> usePartitionedTables;
  Map<String, Object?> toArgMap() => {
    'use_partitioned_tables': usePartitionedTables,
  };
}

/// One entry in the `exclusions` list. Log entries matching `filter`
/// are dropped before being routed to the sink's destination.
/// `name` must be unique within the sink.
class LoggingProjectSinkLogSinkExclusion {
  const LoggingProjectSinkLogSinkExclusion({
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

/// Factory wrapper for `google_logging_project_sink`.
///
/// Set `uniqueWriterIdentity: TfArg.literal(true)` to make GCP mint a
/// dedicated writer service account; grant it the destination-side IAM
/// role (e.g. `roles/bigquery.dataEditor`) by passing
/// `TfArg.ref(sink.writerIdentityRef)` to the IAM member resource.
///
/// Example:
/// ```dart
/// final sink = GoogleLoggingProjectSink(
///   localName: 'audit_to_bq',
///   name: TfArg.literal('audit-to-bq'),
///   destination: TfArg.literal(
///     'bigquery.googleapis.com/projects/my-proj/datasets/audit_logs',
///   ),
///   filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
///   uniqueWriterIdentity: TfArg.literal(true),
/// );
/// ```
final class GoogleLoggingProjectSink extends Resource {
  static const String tfType = 'google_logging_project_sink';

  GoogleLoggingProjectSink({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> destination,
    TfArg<String>? filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? uniqueWriterIdentity,
    TfArg<String>? customWriterIdentity,
    LoggingProjectSinkBigqueryOptions? bigqueryOptions,
    List<LoggingProjectSinkLogSinkExclusion>? exclusions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'destination': destination,
           'filter': ?filter,
           'description': ?description,
           'disabled': ?disabled,
           'unique_writer_identity': ?uniqueWriterIdentity,
           'custom_writer_identity': ?customWriterIdentity,
           if (bigqueryOptions != null)
             'bigquery_options': TfArg.literal([bigqueryOptions.toArgMap()]),
           if (exclusions != null)
             'exclusions': TfArg.literal(
               exclusions.map((e) => e.toArgMap()).toList(),
             ),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingProjectSinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLoggingProjectSink>`.
  RefTo<GoogleLoggingProjectSink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `writer_identity` attribute.
  TfRef<String> get writerIdentity =>
      TfRef.attribute<String>(this, 'writer_identity');

  /// Reference to `custom_writer_identity` attribute.
  TfRef<String> get customWriterIdentityRef =>
      TfRef.attribute<String>(this, 'custom_writer_identity');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `destination` attribute.
  TfRef<String> get destinationRef =>
      TfRef.attribute<String>(this, 'destination');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabledRef => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filterRef => TfRef.attribute<String>(this, 'filter');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `unique_writer_identity` attribute.
  TfRef<bool> get uniqueWriterIdentityRef =>
      TfRef.attribute<bool>(this, 'unique_writer_identity');

  /// Reference to `writer_identity` attribute. Auto-populated when
  /// `unique_writer_identity = true`; pass via `TfArg.ref(sink.writerIdentityRef)`
  /// to the destination's IAM member resource so the sink can write logs.
  TfRef<String> get writerIdentityRef =>
      TfRef.attribute<String>(this, 'writer_identity');
}
