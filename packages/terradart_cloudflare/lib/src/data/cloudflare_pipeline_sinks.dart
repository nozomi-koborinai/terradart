// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pipeline_sinks`.
const Set<String> _cloudflarePipelineSinksSensitive = <String>{};

/// Factory wrapper for `cloudflare_pipeline_sinks`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineSinks extends Data {
  static const String tfType = 'cloudflare_pipeline_sinks';

  DataCloudflarePipelineSinks({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? pipelineId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
           'pipeline_id': ?pipelineId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineSinksSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `pipeline_id` attribute.
  TfRef<String> get pipelineId => TfRef.attribute<String>(this, 'pipeline_id');
}
