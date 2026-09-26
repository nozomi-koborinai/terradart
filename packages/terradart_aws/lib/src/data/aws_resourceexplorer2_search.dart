// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourceexplorer2_search`.
const Set<String> _awsResourceexplorer2SearchSensitive = <String>{};

/// Factory wrapper for `aws_resourceexplorer2_search`.
final class DataAwsResourceexplorer2Search extends Data {
  static const String tfType = 'aws_resourceexplorer2_search';

  DataAwsResourceexplorer2Search({
    required super.localName,
    required TfArg<String> queryString,
    TfArg<String>? region,
    TfArg<String>? viewArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'query_string': queryString,
           if (region != null) 'region': region,
           if (viewArn != null) 'view_arn': viewArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResourceexplorer2SearchSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_count` attribute.
  TfRef<List<Map<String, Object?>>> get resourceCount =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_count');

  /// Reference to `resources` attribute.
  TfRef<List<Map<String, Object?>>> get resources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resources');
}
