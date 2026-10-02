// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../pipeline/cloudflare_pipeline_stream.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pipeline_stream`.
const Set<String> _cloudflarePipelineStreamSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_pipeline_stream` (derived from provider schema).
@immutable
final class DataPipelineStreamFilter {
  const DataPipelineStreamFilter({this.name, this.pipelineId});

  final TfArg<String>? name;

  final TfArg<String>? pipelineId;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'pipeline_id': ?pipelineId?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_pipeline_stream`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineStream extends Data {
  static const String tfType = 'cloudflare_pipeline_stream';

  DataCloudflarePipelineStream(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? streamId,
    DataPipelineStreamFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'stream_id': ?streamId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineStreamSensitive;

  /// A reference to the `cloudflare_pipeline_stream` this data source reads, for
  /// arguments typed `RefTo<CloudflarePipelineStream>`.
  RefTo<CloudflarePipelineStream> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `stream_id` attribute.
  TfRef<String> get streamId => TfRef.attribute<String>(this, 'stream_id');
}
