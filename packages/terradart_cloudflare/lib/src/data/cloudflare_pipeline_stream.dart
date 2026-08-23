// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pipeline_stream`.
const Set<String> _cloudflarePipelineStreamSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class DataPipelineStreamFilter {
  const DataPipelineStreamFilter({this.name, this.pipelineId});

  final TfArg<String>? name;

  final TfArg<String>? pipelineId;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (pipelineId != null) 'pipeline_id': pipelineId!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_pipeline_stream`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineStream extends Data {
  static const String tfType = 'cloudflare_pipeline_stream';

  DataCloudflarePipelineStream({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? streamId,
    DataPipelineStreamFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (streamId != null) 'stream_id': streamId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
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
