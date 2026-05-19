// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_folder_sink`.
const Set<String> _googleLoggingFolderSinkSensitive = <String>{};

/// `bigquery_options` block for `google_logging_folder_sink`. Toggles
/// partitioned tables for BigQuery destinations (date-sharded vs.
/// partitioned by `_PARTITIONTIME`).
class LoggingFolderSinkBigqueryOptions {
  const LoggingFolderSinkBigqueryOptions({required this.usePartitionedTables});
  final bool usePartitionedTables;
  Map<String, Object?> toArgMap() => {
    'use_partitioned_tables': usePartitionedTables,
  };
}

/// One entry in the `exclusions` list for `google_logging_folder_sink`.
/// Log entries matching `filter` are dropped before being routed to the
/// sink's destination. `name` must be unique within the sink.
class LoggingFolderSinkExclusion {
  const LoggingFolderSinkExclusion({
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

/// Factory wrapper for `google_logging_folder_sink` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_logging_folder_sink.`).
/// - `name`: sink name. Pass `TfArg.literal('audit-to-bq')`.
/// - `folder`: folder to be exported. Either `[FOLDER_ID]` or
///   `"folders/[FOLDER_ID]"` is accepted.
/// - `destination`: URI of the routing target. Supported forms:
///   - `bigquery.googleapis.com/projects/<p>/datasets/<ds>`
///   - `storage.googleapis.com/<bucket>`
///   - `pubsub.googleapis.com/projects/<p>/topics/<t>`
///   - `logging.googleapis.com/projects/<p>/locations/<l>/buckets/<b>`
///
/// Folder-scoped sinks always mint a unique writer service account; grant
/// it the destination-side IAM role (e.g. `roles/bigquery.dataEditor`) by
/// passing `TfArg.ref(sink.writerIdentityRef)` to the IAM member resource.
///
/// Example:
/// ```dart
/// final sink = GoogleLoggingFolderSink(
///   localName: 'folder_audit_to_bq',
///   name: TfArg.literal('folder-audit-to-bq'),
///   folder: TfArg.literal('folders/123456789012'),
///   destination: TfArg.literal(
///     'bigquery.googleapis.com/projects/my-proj/datasets/audit_logs',
///   ),
///   filter: TfArg.literal('logName:"cloudaudit.googleapis.com"'),
///   includeChildren: TfArg.literal(true),
/// );
/// ```
///
/// Routes log entries from a folder (and optionally its descendants) to a
/// destination (BigQuery, GCS, Pub/Sub, or Logging bucket). Composition
/// pattern: extends `Resource<$GoogleLoggingFolderSink>` for runtime
/// behavior. The `bigquery_options` block and `exclusions` list are
/// modeled as helper classes in the `prelude` below.
final class GoogleLoggingFolderSink extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_logging_folder_sink';

  GoogleLoggingFolderSink({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> folder,
    required TfArg<String> destination,
    TfArg<String>? filter,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    TfArg<bool>? includeChildren,
    TfArg<bool>? interceptChildren,
    LoggingFolderSinkBigqueryOptions? bigqueryOptions,
    List<LoggingFolderSinkExclusion>? exclusions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'folder': folder,
           'destination': destination,
           if (filter != null) 'filter': filter,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           if (includeChildren != null) 'include_children': includeChildren,
           if (interceptChildren != null)
             'intercept_children': interceptChildren,
           if (bigqueryOptions != null)
             'bigquery_options': TfArg.literal([bigqueryOptions.toArgMap()]),
           if (exclusions != null)
             'exclusions': TfArg.literal(
               exclusions.map((e) => e.toArgMap()).toList(),
             ),
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleLoggingFolderSinkSensitive;

  /// Reference to `id` attribute (`folders/{folder}/sinks/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `writer_identity` attribute. Auto-populated by the
  /// provider; pass via `TfArg.ref(sink.writerIdentityRef)` to the
  /// destination's IAM member resource so the sink can write logs.
  TfRef<String> get writerIdentityRef =>
      TfRef.attribute<String>(this, 'writer_identity');
}
