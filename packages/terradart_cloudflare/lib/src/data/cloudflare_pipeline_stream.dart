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
  const DataPipelineStreamFilter({
    this.direction,
    this.name,
    this.orderBy,
    this.pipelineId,
  });

  final DataPipelineStreamDirection? direction;

  final TfArg<String>? name;

  final DataPipelineStreamOrderBy? orderBy;

  final TfArg<String>? pipelineId;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order_by': ?orderBy?.toTfJson(),
    'pipeline_id': ?pipelineId?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataPipelineStreamDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataPipelineStreamDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataPipelineStreamDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataPipelineStreamDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataPipelineStreamDirection._(TfArgLiteral('asc'));
  static const desc = DataPipelineStreamDirection._(TfArgLiteral('desc'));

  static const List<DataPipelineStreamDirection> values = [asc, desc];
}

/// `order_by` — derived from the provider schema description.
extension type const DataPipelineStreamOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataPipelineStreamOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataPipelineStreamOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataPipelineStreamOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataPipelineStreamOrderBy._(TfArgLiteral('name'));
  static const createdAt = DataPipelineStreamOrderBy._(
    TfArgLiteral('created_at'),
  );

  static const List<DataPipelineStreamOrderBy> values = [name, createdAt];
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
