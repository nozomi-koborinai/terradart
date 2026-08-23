// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pipeline_sink`.
const Set<String> _cloudflarePipelineSinkSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_pipeline_sink` (derived from provider schema).
@immutable
final class DataPipelineSinkFilter {
  const DataPipelineSinkFilter({this.name, this.pipelineId});

  final TfArg<String>? name;

  final TfArg<String>? pipelineId;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (pipelineId != null) 'pipeline_id': pipelineId!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_pipeline_sink`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineSink extends Data {
  static const String tfType = 'cloudflare_pipeline_sink';

  DataCloudflarePipelineSink({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? sinkId,
    DataPipelineSinkFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (sinkId != null) 'sink_id': sinkId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
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

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
