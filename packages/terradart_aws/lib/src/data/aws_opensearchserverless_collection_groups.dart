// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection_groups`.
const Set<String> _awsOpensearchserverlessCollectionGroupsSensitive =
    <String>{};

/// Factory wrapper for `aws_opensearchserverless_collection_groups`.
final class DataAwsOpensearchserverlessCollectionGroups extends Data {
  static const String tfType = 'aws_opensearchserverless_collection_groups';

  DataAwsOpensearchserverlessCollectionGroups({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessCollectionGroupsSensitive;

  /// Reference to `collection_group_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get collectionGroupSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'collection_group_summaries',
      );
}
