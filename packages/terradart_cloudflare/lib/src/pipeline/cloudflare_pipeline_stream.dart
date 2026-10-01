// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pipeline_stream`.
const Set<String> _cloudflarePipelineStreamSensitive = <String>{};

/// Typed helper for the `format` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamFormat {
  const PipelineStreamFormat({
    this.compression,
    this.decimalEncoding,
    this.rowGroupBytes,
    this.timestampFormat,
    required this.type,
    this.unstructured,
  });

  final TfArg<PipelineStreamCompression>? compression;

  final TfArg<PipelineStreamDecimalEncoding>? decimalEncoding;

  final TfArg<num>? rowGroupBytes;

  final TfArg<PipelineStreamTimestampFormat>? timestampFormat;

  final TfArg<PipelineStreamType> type;

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
enum PipelineStreamCompression implements TerraformEnum {
  uncompressed('uncompressed'),
  snappy('snappy'),
  gzip('gzip'),
  zstd('zstd'),
  lz4('lz4');

  const PipelineStreamCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `decimal_encoding` — derived from the provider schema description.
enum PipelineStreamDecimalEncoding implements TerraformEnum {
  number('number'),
  string('string'),
  bytes('bytes');

  const PipelineStreamDecimalEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

/// `timestamp_format` — derived from the provider schema description.
enum PipelineStreamTimestampFormat implements TerraformEnum {
  rfc3339('rfc3339'),
  unixMillis('unix_millis');

  const PipelineStreamTimestampFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum PipelineStreamType implements TerraformEnum {
  json('json'),
  parquet('parquet');

  const PipelineStreamType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `http` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamHttp {
  const PipelineStreamHttp({
    required this.authentication,
    required this.enabled,
    this.cors,
  });

  final TfArg<bool> authentication;

  final TfArg<bool> enabled;

  final PipelineStreamCors? cors;

  Map<String, Object?> encode() => {
    'authentication': authentication.toTfJson(),
    'enabled': enabled.toTfJson(),
    'cors': ?cors?.encode(),
  };
}

/// Typed helper for the `http.cors` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamCors {
  const PipelineStreamCors({this.origins});

  final TfArg<List<String>>? origins;

  Map<String, Object?> encode() => {'origins': ?origins?.toTfJson()};
}

/// Typed helper for the `schema` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamSchema {
  const PipelineStreamSchema({this.inferred, this.fields});

  final TfArg<bool>? inferred;

  final List<PipelineStreamFields>? fields;

  Map<String, Object?> encode() => {
    'inferred': ?inferred?.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `schema.fields` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamFields {
  const PipelineStreamFields({
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

  final TfArg<PipelineStreamFieldsType> type;

  final TfArg<PipelineStreamUnit>? unit;

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
enum PipelineStreamFieldsType implements TerraformEnum {
  int32('int32'),
  int64('int64'),
  float32('float32'),
  float64('float64'),
  bool('bool'),
  string('string'),
  binary('binary'),
  timestamp('timestamp'),
  json('json');

  const PipelineStreamFieldsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `unit` — derived from the provider schema description.
enum PipelineStreamUnit implements TerraformEnum {
  second('second'),
  millisecond('millisecond'),
  microsecond('microsecond'),
  nanosecond('nanosecond');

  const PipelineStreamUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `worker_binding` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamWorkerBinding {
  const PipelineStreamWorkerBinding({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Factory wrapper for `cloudflare_pipeline_stream`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class CloudflarePipelineStream extends Resource {
  static const String tfType = 'cloudflare_pipeline_stream';

  CloudflarePipelineStream({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    PipelineStreamFormat? format,
    PipelineStreamHttp? http,
    PipelineStreamSchema? schema,
    PipelineStreamWorkerBinding? workerBinding,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           if (format != null) 'format': TfArg.literal(format.encode()),
           if (http != null) 'http': TfArg.literal(http.encode()),
           if (schema != null) 'schema': TfArg.literal(schema.encode()),
           if (workerBinding != null)
             'worker_binding': TfArg.literal(workerBinding.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePipelineStream>`.
  RefTo<CloudflarePipelineStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
