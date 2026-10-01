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

  final PipelineStreamCompression? compression;

  final PipelineStreamDecimalEncoding? decimalEncoding;

  final TfArg<num>? rowGroupBytes;

  final PipelineStreamTimestampFormat? timestampFormat;

  final PipelineStreamType type;

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
extension type const PipelineStreamCompression._(TfArg<String> _)
    implements TfArg<String> {
  PipelineStreamCompression.variable(String name)
    : this._(TfArg.variable(name));
  PipelineStreamCompression.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineStreamCompression.arg(TfArg<String> arg) : this._(arg);

  static const uncompressed = PipelineStreamCompression._(
    TfArgLiteral('uncompressed'),
  );
  static const snappy = PipelineStreamCompression._(TfArgLiteral('snappy'));
  static const gzip = PipelineStreamCompression._(TfArgLiteral('gzip'));
  static const zstd = PipelineStreamCompression._(TfArgLiteral('zstd'));
  static const lz4 = PipelineStreamCompression._(TfArgLiteral('lz4'));

  static const List<PipelineStreamCompression> values = [
    uncompressed,
    snappy,
    gzip,
    zstd,
    lz4,
  ];
}

/// `decimal_encoding` — derived from the provider schema description.
extension type const PipelineStreamDecimalEncoding._(TfArg<String> _)
    implements TfArg<String> {
  PipelineStreamDecimalEncoding.variable(String name)
    : this._(TfArg.variable(name));
  PipelineStreamDecimalEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineStreamDecimalEncoding.arg(TfArg<String> arg) : this._(arg);

  static const number = PipelineStreamDecimalEncoding._(TfArgLiteral('number'));
  static const string = PipelineStreamDecimalEncoding._(TfArgLiteral('string'));
  static const bytes = PipelineStreamDecimalEncoding._(TfArgLiteral('bytes'));

  static const List<PipelineStreamDecimalEncoding> values = [
    number,
    string,
    bytes,
  ];
}

/// `timestamp_format` — derived from the provider schema description.
extension type const PipelineStreamTimestampFormat._(TfArg<String> _)
    implements TfArg<String> {
  PipelineStreamTimestampFormat.variable(String name)
    : this._(TfArg.variable(name));
  PipelineStreamTimestampFormat.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineStreamTimestampFormat.arg(TfArg<String> arg) : this._(arg);

  static const rfc3339 = PipelineStreamTimestampFormat._(
    TfArgLiteral('rfc3339'),
  );
  static const unixMillis = PipelineStreamTimestampFormat._(
    TfArgLiteral('unix_millis'),
  );

  static const List<PipelineStreamTimestampFormat> values = [
    rfc3339,
    unixMillis,
  ];
}

/// `type` — derived from the provider schema description.
extension type const PipelineStreamType._(TfArg<String> _)
    implements TfArg<String> {
  PipelineStreamType.variable(String name) : this._(TfArg.variable(name));
  PipelineStreamType.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineStreamType.arg(TfArg<String> arg) : this._(arg);

  static const json = PipelineStreamType._(TfArgLiteral('json'));
  static const parquet = PipelineStreamType._(TfArgLiteral('parquet'));

  static const List<PipelineStreamType> values = [json, parquet];
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

  final PipelineStreamFieldsType type;

  final PipelineStreamUnit? unit;

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
extension type const PipelineStreamFieldsType._(TfArg<String> _)
    implements TfArg<String> {
  PipelineStreamFieldsType.variable(String name) : this._(TfArg.variable(name));
  PipelineStreamFieldsType.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineStreamFieldsType.arg(TfArg<String> arg) : this._(arg);

  static const int32 = PipelineStreamFieldsType._(TfArgLiteral('int32'));
  static const int64 = PipelineStreamFieldsType._(TfArgLiteral('int64'));
  static const float32 = PipelineStreamFieldsType._(TfArgLiteral('float32'));
  static const float64 = PipelineStreamFieldsType._(TfArgLiteral('float64'));
  static const bool = PipelineStreamFieldsType._(TfArgLiteral('bool'));
  static const string = PipelineStreamFieldsType._(TfArgLiteral('string'));
  static const binary = PipelineStreamFieldsType._(TfArgLiteral('binary'));
  static const timestamp = PipelineStreamFieldsType._(
    TfArgLiteral('timestamp'),
  );
  static const json = PipelineStreamFieldsType._(TfArgLiteral('json'));

  static const List<PipelineStreamFieldsType> values = [
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
extension type const PipelineStreamUnit._(TfArg<String> _)
    implements TfArg<String> {
  PipelineStreamUnit.variable(String name) : this._(TfArg.variable(name));
  PipelineStreamUnit.expression(String template)
    : this._(TfArg.expression(template));
  const PipelineStreamUnit.arg(TfArg<String> arg) : this._(arg);

  static const second = PipelineStreamUnit._(TfArgLiteral('second'));
  static const millisecond = PipelineStreamUnit._(TfArgLiteral('millisecond'));
  static const microsecond = PipelineStreamUnit._(TfArgLiteral('microsecond'));
  static const nanosecond = PipelineStreamUnit._(TfArgLiteral('nanosecond'));

  static const List<PipelineStreamUnit> values = [
    second,
    millisecond,
    microsecond,
    nanosecond,
  ];
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

  CloudflarePipelineStream(
    super.localName, {
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
