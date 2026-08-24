// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final PipelineStreamHttpCors? cors;

  Map<String, Object?> encode() => {
    'authentication': authentication.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (cors != null) 'cors': cors!.encode(),
  };
}

/// Typed helper for the `http.cors` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamHttpCors {
  const PipelineStreamHttpCors({this.origins});

  final TfArg<List<Object?>>? origins;

  Map<String, Object?> encode() => {
    if (origins != null) 'origins': origins!.toTfJson(),
  };
}

/// Typed helper for the `schema` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamSchema {
  const PipelineStreamSchema({this.inferred, this.fields, this.format});

  final TfArg<bool>? inferred;

  final List<PipelineStreamSchemaFields>? fields;

  final PipelineStreamSchemaFormat? format;

  Map<String, Object?> encode() => {
    if (inferred != null) 'inferred': inferred!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
    if (format != null) 'format': format!.encode(),
  };
}

/// Typed helper for the `schema.fields` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamSchemaFields {
  const PipelineStreamSchemaFields({
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
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class PipelineStreamSchemaFormat {
  const PipelineStreamSchemaFormat({
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
    required TfArg<String> accountId,
    required TfArg<String> name,
    PipelineStreamFormat? format,
    PipelineStreamHttp? http,
    PipelineStreamSchema? schema,
    PipelineStreamWorkerBinding? workerBinding,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
