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
extension type const PipelineSinkType._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkType.variable(String name) : this._(TfArg.variable(name));
  PipelineSinkType.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkType.arg(TfArg<String> arg) : this._(arg);

  static const r2 = PipelineSinkType._(TfArgLiteral('r2'));
  static const r2DataCatalog = PipelineSinkType._(
    TfArgLiteral('r2_data_catalog'),
  );

  static const List<PipelineSinkType> values = [r2, r2DataCatalog];
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

  final PipelineSinkCredentials? credentials;

  final PipelineSinkFileNaming? fileNaming;

  final PipelineSinkPartitioning? partitioning;

  final PipelineSinkRollingPolicy? rollingPolicy;

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
final class PipelineSinkCredentials {
  const PipelineSinkCredentials({
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
final class PipelineSinkFileNaming {
  const PipelineSinkFileNaming({this.prefix, this.strategy, this.suffix});

  final TfArg<String>? prefix;

  final PipelineSinkStrategy? strategy;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// `strategy` — derived from the provider schema description.
extension type const PipelineSinkStrategy._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkStrategy.variable(String name) : this._(TfArg.variable(name));
  PipelineSinkStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkStrategy.arg(TfArg<String> arg) : this._(arg);

  static const serial = PipelineSinkStrategy._(TfArgLiteral('serial'));
  static const uuid = PipelineSinkStrategy._(TfArgLiteral('uuid'));
  static const uuidV7 = PipelineSinkStrategy._(TfArgLiteral('uuid_v7'));
  static const ulid = PipelineSinkStrategy._(TfArgLiteral('ulid'));

  static const List<PipelineSinkStrategy> values = [serial, uuid, uuidV7, ulid];
}

/// Typed helper for the `config.partitioning` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkPartitioning {
  const PipelineSinkPartitioning({this.timePattern});

  final TfArg<String>? timePattern;

  Map<String, Object?> encode() => {'time_pattern': ?timePattern?.toTfJson()};
}

/// Typed helper for the `config.rolling_policy` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkRollingPolicy {
  const PipelineSinkRollingPolicy({
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

  final PipelineSinkCompression? compression;

  final PipelineSinkDecimalEncoding? decimalEncoding;

  final TfArg<num>? rowGroupBytes;

  final PipelineSinkTimestampFormat? timestampFormat;

  final PipelineSinkFormatType type;

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
extension type const PipelineSinkCompression._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkCompression.variable(String name) : this._(TfArg.variable(name));
  PipelineSinkCompression.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkCompression.arg(TfArg<String> arg) : this._(arg);

  static const uncompressed = PipelineSinkCompression._(
    TfArgLiteral('uncompressed'),
  );
  static const gzip = PipelineSinkCompression._(TfArgLiteral('gzip'));
  static const snappy = PipelineSinkCompression._(TfArgLiteral('snappy'));
  static const zstd = PipelineSinkCompression._(TfArgLiteral('zstd'));
  static const lz4 = PipelineSinkCompression._(TfArgLiteral('lz4'));

  static const List<PipelineSinkCompression> values = [
    uncompressed,
    gzip,
    snappy,
    zstd,
    lz4,
  ];
}

/// `decimal_encoding` — derived from the provider schema description.
extension type const PipelineSinkDecimalEncoding._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkDecimalEncoding.variable(String name)
    : this._(TfArg.variable(name));
  PipelineSinkDecimalEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkDecimalEncoding.arg(TfArg<String> arg) : this._(arg);

  static const number = PipelineSinkDecimalEncoding._(TfArgLiteral('number'));
  static const string = PipelineSinkDecimalEncoding._(TfArgLiteral('string'));
  static const bytes = PipelineSinkDecimalEncoding._(TfArgLiteral('bytes'));

  static const List<PipelineSinkDecimalEncoding> values = [
    number,
    string,
    bytes,
  ];
}

/// `timestamp_format` — derived from the provider schema description.
extension type const PipelineSinkTimestampFormat._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkTimestampFormat.variable(String name)
    : this._(TfArg.variable(name));
  PipelineSinkTimestampFormat.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkTimestampFormat.arg(TfArg<String> arg) : this._(arg);

  static const rfc3339 = PipelineSinkTimestampFormat._(TfArgLiteral('rfc3339'));
  static const unixMillis = PipelineSinkTimestampFormat._(
    TfArgLiteral('unix_millis'),
  );

  static const List<PipelineSinkTimestampFormat> values = [rfc3339, unixMillis];
}

/// `type` — derived from the provider schema description.
extension type const PipelineSinkFormatType._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkFormatType.variable(String name) : this._(TfArg.variable(name));
  PipelineSinkFormatType.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkFormatType.arg(TfArg<String> arg) : this._(arg);

  static const json = PipelineSinkFormatType._(TfArgLiteral('json'));
  static const parquet = PipelineSinkFormatType._(TfArgLiteral('parquet'));

  static const List<PipelineSinkFormatType> values = [json, parquet];
}

/// Typed helper for the `schema` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkSchema {
  const PipelineSinkSchema({this.inferred, this.fields});

  final TfArg<bool>? inferred;

  final List<PipelineSinkFields>? fields;

  Map<String, Object?> encode() => {
    'inferred': ?inferred?.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `schema.fields` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class PipelineSinkFields {
  const PipelineSinkFields({
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

  final PipelineSinkFieldsType type;

  final PipelineSinkUnit? unit;

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
extension type const PipelineSinkFieldsType._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkFieldsType.variable(String name) : this._(TfArg.variable(name));
  PipelineSinkFieldsType.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkFieldsType.arg(TfArg<String> arg) : this._(arg);

  static const int32 = PipelineSinkFieldsType._(TfArgLiteral('int32'));
  static const int64 = PipelineSinkFieldsType._(TfArgLiteral('int64'));
  static const float32 = PipelineSinkFieldsType._(TfArgLiteral('float32'));
  static const float64 = PipelineSinkFieldsType._(TfArgLiteral('float64'));
  static const bool = PipelineSinkFieldsType._(TfArgLiteral('bool'));
  static const string = PipelineSinkFieldsType._(TfArgLiteral('string'));
  static const binary = PipelineSinkFieldsType._(TfArgLiteral('binary'));
  static const timestamp = PipelineSinkFieldsType._(TfArgLiteral('timestamp'));
  static const json = PipelineSinkFieldsType._(TfArgLiteral('json'));

  static const List<PipelineSinkFieldsType> values = [
    int32,
    int64,
    float32,
    float64,
    bool,
    string,
    binary,
    timestamp,
    json,
  ];
}

/// `unit` — derived from the provider schema description.
extension type const PipelineSinkUnit._(TfArg<String> _)
    implements TfArg<String> {
  PipelineSinkUnit.variable(String name) : this._(TfArg.variable(name));
  PipelineSinkUnit.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineSinkUnit.arg(TfArg<String> arg) : this._(arg);

  static const second = PipelineSinkUnit._(TfArgLiteral('second'));
  static const millisecond = PipelineSinkUnit._(TfArgLiteral('millisecond'));
  static const microsecond = PipelineSinkUnit._(TfArgLiteral('microsecond'));
  static const nanosecond = PipelineSinkUnit._(TfArgLiteral('nanosecond'));

  static const List<PipelineSinkUnit> values = [
    second,
    millisecond,
    microsecond,
    nanosecond,
  ];
}

/// Factory wrapper for `cloudflare_pipeline_sink`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class CloudflarePipelineSink extends Resource {
  static const String tfType = 'cloudflare_pipeline_sink';

  CloudflarePipelineSink(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required PipelineSinkType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
