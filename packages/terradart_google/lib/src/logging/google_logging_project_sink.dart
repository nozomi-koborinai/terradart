// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_project_sink`.
const Set<String> _googleLoggingProjectSinkSensitive = <String>{};

/// `bigquery_options` block. Toggles partitioned tables for BigQuery
/// destinations (date-sharded vs. partitioned by `_PARTITIONTIME`).
class BigqueryOptions {
  const BigqueryOptions({required this.usePartitionedTables});
  final bool usePartitionedTables;
  Map<String, Object?> toArgMap() => {
        'use_partitioned_tables': usePartitionedTables,
      };
}

/// One entry in the `exclusions` list. Log entries matching `filter`
/// are dropped before being routed to the sink's destination.
/// `name` must be unique within the sink.
class LogSinkExclusion {
  const LogSinkExclusion({
    required this.name,
    required this.filter,
    this.description,
    this.disabled,
  });
  final String name;
  final String filter;
  final String? description;
  final bool? disabled;
  Map<String, Object?> toArgMap() => {
        'name': name,
        'filter': filter,
        if (description != null) 'description': description,
        if (disabled != null) 'disabled': disabled,
      };
}

/// Factory wrapper for `google_logging_project_sink` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_logging_project_sink.`).
/// - `name`: sink name. Pass `TfArg.literal('audit-to-bq')`.
/// - `destination`: URI of the routing target. Supported forms:
///   - `bigquery.googleapis.com/projects/<p>/datasets/<ds>`
///   - `storage.googleapis.com/<bucket>`
///   - `pubsub.googleapis.com/projects/<p>/topics/<t>`
///   - `logging.googleapis.com/projects/<p>/locations/<l>/buckets/<b>`
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
///
/// Routes log entries to a destination (BigQuery, GCS, Pub/Sub, or
/// Logging bucket). Composition pattern: extends
/// `Resource<$GoogleLoggingProjectSink>` for runtime behavior. The
/// `bigquery_options` block and `exclusions` list are modeled as helper
/// classes in the `prelude` below.
final class GoogleLoggingProjectSink extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_logging_project_sink';

  GoogleLoggingProjectSink({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> destination,
    TfArg<String>? filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? uniqueWriterIdentity,
    TfArg<String>? customWriterIdentity,
    BigqueryOptions? bigqueryOptions,
    List<LogSinkExclusion>? exclusions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'destination': destination,
            if (filter != null) 'filter': filter,
            if (description != null) 'description': description,
            if (disabled != null) 'disabled': disabled,
            if (uniqueWriterIdentity != null)
              'unique_writer_identity': uniqueWriterIdentity,
            if (customWriterIdentity != null)
              'custom_writer_identity': customWriterIdentity,
            if (bigqueryOptions != null)
              'bigquery_options': TfArg.literal([bigqueryOptions.toArgMap()]),
            if (exclusions != null)
              'exclusions': TfArg.literal(
                exclusions.map((e) => e.toArgMap()).toList(),
              ),
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleLoggingProjectSinkSensitive;

  /// Reference to `id` attribute (`projects/{project}/sinks/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `writer_identity` attribute. Auto-populated when
  /// `unique_writer_identity = true`; pass via `TfArg.ref(sink.writerIdentityRef)`
  /// to the destination's IAM member resource so the sink can write logs.
  TfRef<String> get writerIdentityRef =>
      TfRef.attribute<String>(this, 'writer_identity');
}
