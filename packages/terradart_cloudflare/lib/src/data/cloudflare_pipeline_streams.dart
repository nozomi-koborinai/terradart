// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pipeline_streams`.
const Set<String> _cloudflarePipelineStreamsSensitive = <String>{};

/// Factory wrapper for `cloudflare_pipeline_streams`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class DataCloudflarePipelineStreams extends Data {
  static const String tfType = 'cloudflare_pipeline_streams';

  DataCloudflarePipelineStreams({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? pipelineId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (pipelineId != null) 'pipeline_id': pipelineId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineStreamsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
