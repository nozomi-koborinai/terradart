// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pipeline_sinks`.
const Set<String> _cloudflarePipelineSinksSensitive = <String>{};

/// Data Pipeline Sinks enum for `direction`.
extension type const DataPipelineSinksDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataPipelineSinksDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataPipelineSinksDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataPipelineSinksDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataPipelineSinksDirection._(TfArgLiteral('asc'));
  static const desc = DataPipelineSinksDirection._(TfArgLiteral('desc'));

  static const List<DataPipelineSinksDirection> values = [asc, desc];
}

/// Data Pipeline Sinks Order enum for `order_by`.
extension type const DataPipelineSinksOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataPipelineSinksOrderBy.variable(String name) : this._(TfArg.variable(name));
  DataPipelineSinksOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataPipelineSinksOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataPipelineSinksOrderBy._(TfArgLiteral('name'));
  static const createdAt = DataPipelineSinksOrderBy._(
    TfArgLiteral('created_at'),
  );

  static const List<DataPipelineSinksOrderBy> values = [name, createdAt];
}

/// Factory wrapper for `cloudflare_pipeline_sinks`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineSinks extends Data {
  static const String tfType = 'cloudflare_pipeline_sinks';

  DataCloudflarePipelineSinks(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataPipelineSinksDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataPipelineSinksOrderBy? orderBy,
    TfArg<String>? pipelineId,
    super.dependsOn,
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
  Set<String> get sensitiveFields => _cloudflarePipelineSinksSensitive;

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
