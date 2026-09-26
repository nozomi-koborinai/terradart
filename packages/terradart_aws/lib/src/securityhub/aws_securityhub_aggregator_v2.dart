// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_aggregator_v2`.
const Set<String> _awsSecurityhubAggregatorV2Sensitive = <String>{};

/// Factory wrapper for `aws_securityhub_aggregator_v2`.
final class AwsSecurityhubAggregatorV2 extends Resource {
  static const String tfType = 'aws_securityhub_aggregator_v2';

  AwsSecurityhubAggregatorV2({
    required super.localName,
    TfArg<List<String>>? linkedRegions,
    TfArg<String>? region,
    required TfArg<String> regionLinkingMode,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (linkedRegions != null) 'linked_regions': linkedRegions,
           if (region != null) 'region': region,
           'region_linking_mode': regionLinkingMode,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAggregatorV2Sensitive;

  /// Reference to `aggregation_region` attribute.
  TfRef<String> get aggregationRegion =>
      TfRef.attribute<String>(this, 'aggregation_region');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
