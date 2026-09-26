// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourcegroupstaggingapi_resources`.
const Set<String> _awsResourcegroupstaggingapiResourcesSensitive = <String>{};

/// Typed helper for the `tag_filter` block of
/// `aws_resourcegroupstaggingapi_resources` (derived from provider schema).
@immutable
final class DataResourcegroupstaggingapiResourcesTagFilter {
  const DataResourcegroupstaggingapiResourcesTagFilter({
    required this.key,
    this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Factory wrapper for `aws_resourcegroupstaggingapi_resources`.
final class DataAwsResourcegroupstaggingapiResources extends Data {
  static const String tfType = 'aws_resourcegroupstaggingapi_resources';

  DataAwsResourcegroupstaggingapiResources({
    required super.localName,
    TfArg<bool>? excludeCompliantResources,
    TfArg<bool>? includeComplianceDetails,
    TfArg<String>? region,
    TfArg<List<String>>? resourceArnList,
    TfArg<List<String>>? resourceTypeFilters,
    List<DataResourcegroupstaggingapiResourcesTagFilter>? tagFilter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (excludeCompliantResources != null)
             'exclude_compliant_resources': excludeCompliantResources,
           if (includeComplianceDetails != null)
             'include_compliance_details': includeComplianceDetails,
           if (region != null) 'region': region,
           if (resourceArnList != null) 'resource_arn_list': resourceArnList,
           if (resourceTypeFilters != null)
             'resource_type_filters': resourceTypeFilters,
           if (tagFilter != null)
             'tag_filter': TfArg.literal([
               for (final e in tagFilter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsResourcegroupstaggingapiResourcesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_tag_mapping_list` attribute.
  TfRef<List<Map<String, Object?>>> get resourceTagMappingList =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'resource_tag_mapping_list',
      );
}
