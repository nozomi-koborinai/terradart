// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pipeline_sink`.
const Set<String> _cloudflarePipelineSinkSensitive = <String>{
  'config.credentials.secret_access_key',
  'config.token',
};

/// Pipeline Sink enum for `type`.
enum PipelineSinkType implements TerraformEnum {
  r2('r2'),
  r2DataCatalog('r2_data_catalog');

  const PipelineSinkType(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final RefTo<CloudflareAccount> accountId;

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
    'account_id': accountId.encodeAs('id').toTfJson(),
    'bucket': bucket.toTfJson(),
    'jurisdiction': ?jurisdiction?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'path': ?path?.toTfJson(),
    'table_name': ?tableName?.toTfJson(),
    'token': ?token?.toTfJson(),
    'credentials': ?credentials?.encode(),
    'file_naming': ?fileNaming?.encode(),
    'partitioning': ?partitioning?.encode(),
    'rolling_policy': ?rollingPolicy?.encode(),
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

  final TfArg<PipelineSinkConfigFileNamingStrategy>? strategy;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// `strategy` — derived from the provider schema description.
enum PipelineSinkConfigFileNamingStrategy implements TerraformEnum {
  serial('serial'),
  uuid('uuid'),
  uuidV7('uuid_v7'),
  ulid('ulid');

  const PipelineSinkConfigFileNamingStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.partitioning` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkConfigPartitioning {
  const PipelineSinkConfigPartitioning({this.timePattern});

  final TfArg<String>? timePattern;

  Map<String, Object?> encode() => {'time_pattern': ?timePattern?.toTfJson()};
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
    'file_size_bytes': ?fileSizeBytes?.toTfJson(),
    'inactivity_seconds': ?inactivitySeconds?.toTfJson(),
    'interval_seconds': ?intervalSeconds?.toTfJson(),
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

  final TfArg<PipelineSinkFormatCompression>? compression;

  final TfArg<PipelineSinkFormatDecimalEncoding>? decimalEncoding;

  final TfArg<num>? rowGroupBytes;

  final TfArg<PipelineSinkFormatTimestampFormat>? timestampFormat;

  final TfArg<PipelineSinkFormatType> type;

  final TfArg<bool>? unstructured;

  Map<String, Object?> encode() => {
    'compression': ?compression?.toTfJson(),
    'decimal_encoding': ?decimalEncoding?.toTfJson(),
    'row_group_bytes': ?rowGroupBytes?.toTfJson(),
    'timestamp_format': ?timestampFormat?.toTfJson(),
    'type': type.toTfJson(),
    'unstructured': ?unstructured?.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
enum PipelineSinkFormatCompression implements TerraformEnum {
  uncompressed('uncompressed'),
  gzip('gzip'),
  snappy('snappy'),
  zstd('zstd'),
  lz4('lz4');

  const PipelineSinkFormatCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `decimal_encoding` — derived from the provider schema description.
enum PipelineSinkFormatDecimalEncoding implements TerraformEnum {
  number('number'),
  string('string'),
  bytes('bytes');

  const PipelineSinkFormatDecimalEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

/// `timestamp_format` — derived from the provider schema description.
enum PipelineSinkFormatTimestampFormat implements TerraformEnum {
  rfc3339('rfc3339'),
  unixMillis('unix_millis');

  const PipelineSinkFormatTimestampFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum PipelineSinkFormatType implements TerraformEnum {
  json('json'),
  parquet('parquet');

  const PipelineSinkFormatType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schema` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkSchema {
  const PipelineSinkSchema({this.inferred, this.fields});

  final TfArg<bool>? inferred;

  final List<PipelineSinkSchemaFields>? fields;

  Map<String, Object?> encode() => {
    'inferred': ?inferred?.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
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

  final TfArg<PipelineSinkSchemaFieldsType> type;

  final TfArg<PipelineSinkSchemaFieldsUnit>? unit;

  Map<String, Object?> encode() => {
    'metadata_key': ?metadataKey?.toTfJson(),
    'name': ?name?.toTfJson(),
    'required': ?required?.toTfJson(),
    'sql_name': ?sqlName?.toTfJson(),
    'type': type.toTfJson(),
    'unit': ?unit?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipelineSinkSchemaFieldsType implements TerraformEnum {
  int32('int32'),
  int64('int64'),
  float32('float32'),
  float64('float64'),
  bool('bool'),
  string('string'),
  binary('binary'),
  timestamp('timestamp'),
  json('json');

  const PipelineSinkSchemaFieldsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `unit` — derived from the provider schema description.
enum PipelineSinkSchemaFieldsUnit implements TerraformEnum {
  second('second'),
  millisecond('millisecond'),
  microsecond('microsecond'),
  nanosecond('nanosecond');

  const PipelineSinkSchemaFieldsUnit(this.terraformValue);
  @override
  final String terraformValue;
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
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required TfArg<PipelineSinkType> type,
    PipelineSinkConfig? config,
    PipelineSinkFormat? format,
    PipelineSinkSchema? schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           'type': type,
           if (config != null) 'config': TfArg.literal(config.encode()),
           if (format != null) 'format': TfArg.literal(format.encode()),
           if (schema != null) 'schema': TfArg.literal(schema.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineSinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePipelineSink>`.
  RefTo<CloudflarePipelineSink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
