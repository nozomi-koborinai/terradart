// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pipeline_sink`.
const Set<String> _cloudflarePipelineSinkSensitive = <String>{
  'config.credentials.secret_access_key',
  'config.token',
};

/// Typed helper for the `config` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkConfig {
  const PipelineSinkConfig({
    required this.accountId,
    required this.bucket,
    this.jurisdiction,
    this.namespace,
    this.path,
    this.tableName,
    this.token,
    this.credentials,
    this.fileNaming,
    this.partitioning,
    this.rollingPolicy,
  });

  final TfArg<String> accountId;

  final TfArg<String> bucket;

  final TfArg<String>? jurisdiction;

  final TfArg<String>? namespace;

  final TfArg<String>? path;

  final TfArg<String>? tableName;

  final TfArg<String>? token;

  final PipelineSinkConfigCredentials? credentials;

  final PipelineSinkConfigFileNaming? fileNaming;

  final PipelineSinkConfigPartitioning? partitioning;

  final PipelineSinkConfigRollingPolicy? rollingPolicy;

  Map<String, Object?> encode() => {
    'account_id': accountId.toTfJson(),
    'bucket': bucket.toTfJson(),
    if (jurisdiction != null) 'jurisdiction': jurisdiction!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (tableName != null) 'table_name': tableName!.toTfJson(),
    if (token != null) 'token': token!.toTfJson(),
    if (credentials != null) 'credentials': credentials!.encode(),
    if (fileNaming != null) 'file_naming': fileNaming!.encode(),
    if (partitioning != null) 'partitioning': partitioning!.encode(),
    if (rollingPolicy != null) 'rolling_policy': rollingPolicy!.encode(),
  };
}

/// Typed helper for the `config.credentials` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkConfigCredentials {
  const PipelineSinkConfigCredentials({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'secret_access_key': secretAccessKey.toTfJson(),
  };
}

/// Typed helper for the `config.file_naming` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkConfigFileNaming {
  const PipelineSinkConfigFileNaming({this.prefix, this.strategy, this.suffix});

  final TfArg<String>? prefix;

  final TfArg<String>? strategy;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (strategy != null) 'strategy': strategy!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// Typed helper for the `config.partitioning` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkConfigPartitioning {
  const PipelineSinkConfigPartitioning({this.timePattern});

  final TfArg<String>? timePattern;

  Map<String, Object?> encode() => {
    if (timePattern != null) 'time_pattern': timePattern!.toTfJson(),
  };
}

/// Typed helper for the `config.rolling_policy` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkConfigRollingPolicy {
  const PipelineSinkConfigRollingPolicy({
    this.fileSizeBytes,
    this.inactivitySeconds,
    this.intervalSeconds,
  });

  final TfArg<num>? fileSizeBytes;

  final TfArg<num>? inactivitySeconds;

  final TfArg<num>? intervalSeconds;

  Map<String, Object?> encode() => {
    if (fileSizeBytes != null) 'file_size_bytes': fileSizeBytes!.toTfJson(),
    if (inactivitySeconds != null)
      'inactivity_seconds': inactivitySeconds!.toTfJson(),
    if (intervalSeconds != null)
      'interval_seconds': intervalSeconds!.toTfJson(),
  };
}

/// Typed helper for the `format` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkFormat {
  const PipelineSinkFormat({
    this.compression,
    this.decimalEncoding,
    this.rowGroupBytes,
    this.timestampFormat,
    required this.type,
    this.unstructured,
  });

  final TfArg<String>? compression;

  final TfArg<String>? decimalEncoding;

  final TfArg<num>? rowGroupBytes;

  final TfArg<String>? timestampFormat;

  final TfArg<String> type;

  final TfArg<bool>? unstructured;

  Map<String, Object?> encode() => {
    if (compression != null) 'compression': compression!.toTfJson(),
    if (decimalEncoding != null)
      'decimal_encoding': decimalEncoding!.toTfJson(),
    if (rowGroupBytes != null) 'row_group_bytes': rowGroupBytes!.toTfJson(),
    if (timestampFormat != null)
      'timestamp_format': timestampFormat!.toTfJson(),
    'type': type.toTfJson(),
    if (unstructured != null) 'unstructured': unstructured!.toTfJson(),
  };
}

/// Typed helper for the `schema` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkSchema {
  const PipelineSinkSchema({this.inferred, this.fields, this.format});

  final TfArg<bool>? inferred;

  final List<PipelineSinkSchemaFields>? fields;

  final PipelineSinkSchemaFormat? format;

  Map<String, Object?> encode() => {
    if (inferred != null) 'inferred': inferred!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
    if (format != null) 'format': format!.encode(),
  };
}

/// Typed helper for the `schema.fields` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkSchemaFields {
  const PipelineSinkSchemaFields({
    this.metadataKey,
    this.name,
    this.required,
    this.sqlName,
    required this.type,
    this.unit,
  });

  final TfArg<String>? metadataKey;

  final TfArg<String>? name;

  final TfArg<bool>? required;

  final TfArg<String>? sqlName;

  final TfArg<String> type;

  final TfArg<String>? unit;

  Map<String, Object?> encode() => {
    if (metadataKey != null) 'metadata_key': metadataKey!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (sqlName != null) 'sql_name': sqlName!.toTfJson(),
    'type': type.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
  };
}

/// Typed helper for the `schema.format` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkSchemaFormat {
  const PipelineSinkSchemaFormat({
    this.compression,
    this.decimalEncoding,
    this.rowGroupBytes,
    this.timestampFormat,
    required this.type,
    this.unstructured,
  });

  final TfArg<String>? compression;

  final TfArg<String>? decimalEncoding;

  final TfArg<num>? rowGroupBytes;

  final TfArg<String>? timestampFormat;

  final TfArg<String> type;

  final TfArg<bool>? unstructured;

  Map<String, Object?> encode() => {
    if (compression != null) 'compression': compression!.toTfJson(),
    if (decimalEncoding != null)
      'decimal_encoding': decimalEncoding!.toTfJson(),
    if (rowGroupBytes != null) 'row_group_bytes': rowGroupBytes!.toTfJson(),
    if (timestampFormat != null)
      'timestamp_format': timestampFormat!.toTfJson(),
    'type': type.toTfJson(),
    if (unstructured != null) 'unstructured': unstructured!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_pipeline_sink`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class CloudflarePipelineSink extends Resource {
  static const String tfType = 'cloudflare_pipeline_sink';

  CloudflarePipelineSink({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required TfArg<String> type,
    PipelineSinkConfig? config,
    PipelineSinkFormat? format,
    PipelineSinkSchema? schema,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           'type': type,
           if (config != null) 'config': TfArg.literal(config.encode()),
           if (format != null) 'format': TfArg.literal(format.encode()),
           if (schema != null) 'schema': TfArg.literal(schema.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineSinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
