// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_finding_aggregator`.
const Set<String> _awsSecurityhubFindingAggregatorSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_finding_aggregator`.
final class AwsSecurityhubFindingAggregator extends Resource {
  static const String tfType = 'aws_securityhub_finding_aggregator';

  AwsSecurityhubFindingAggregator({
    required super.localName,
    required TfArg<String> linkingMode,
    TfArg<String>? region,
    TfArg<List<String>>? specifiedRegions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'linking_mode': linkingMode,
           if (region != null) 'region': region,
           if (specifiedRegions != null) 'specified_regions': specifiedRegions,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubFindingAggregatorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
