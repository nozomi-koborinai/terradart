// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../pipeline/cloudflare_pipeline_sink.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    'name': ?name?.toTfJson(),
    'pipeline_id': ?pipelineId?.toTfJson(),
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? sinkId,
    DataPipelineSinkFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'sink_id': ?sinkId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineSinkSensitive;

  /// A reference to the `cloudflare_pipeline_sink` this data source reads, for
  /// arguments typed `RefTo<CloudflarePipelineSink>`.
  RefTo<CloudflarePipelineSink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `sink_id` attribute.
  TfRef<String> get sinkId => TfRef.attribute<String>(this, 'sink_id');
}
