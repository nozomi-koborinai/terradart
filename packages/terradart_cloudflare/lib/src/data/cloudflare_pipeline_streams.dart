// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pipeline_streams`.
const Set<String> _cloudflarePipelineStreamsSensitive = <String>{};

/// Data Pipeline Streams enum for `direction`.
extension type const DataPipelineStreamsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataPipelineStreamsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataPipelineStreamsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataPipelineStreamsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataPipelineStreamsDirection._(TfArgLiteral('asc'));
  static const desc = DataPipelineStreamsDirection._(TfArgLiteral('desc'));

  static const List<DataPipelineStreamsDirection> values = [asc, desc];
}

/// Data Pipeline Streams Order enum for `order_by`.
extension type const DataPipelineStreamsOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataPipelineStreamsOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataPipelineStreamsOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataPipelineStreamsOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataPipelineStreamsOrderBy._(TfArgLiteral('name'));
  static const createdAt = DataPipelineStreamsOrderBy._(
    TfArgLiteral('created_at'),
  );

  static const List<DataPipelineStreamsOrderBy> values = [name, createdAt];
}

/// Factory wrapper for `cloudflare_pipeline_streams`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineStreams extends Data {
  static const String tfType = 'cloudflare_pipeline_streams';

  DataCloudflarePipelineStreams(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataPipelineStreamsDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataPipelineStreamsOrderBy? orderBy,
    TfArg<String>? pipelineId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'name': ?name,
           'order_by': ?orderBy,
           'pipeline_id': ?pipelineId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineStreamsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `pipeline_id` attribute.
  TfRef<String> get pipelineId => TfRef.attribute<String>(this, 'pipeline_id');
}
