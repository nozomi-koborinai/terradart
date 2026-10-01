// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_finding_aggregator`.
const Set<String> _awsSecurityhubFindingAggregatorSensitive = <String>{};

/// Securityhub Finding Aggregator Linking enum for `linking_mode`.
enum SecurityhubFindingAggregatorLinkingMode implements TerraformEnum {
  allRegions('ALL_REGIONS'),
  allRegionsExceptSpecified('ALL_REGIONS_EXCEPT_SPECIFIED'),
  specifiedRegions('SPECIFIED_REGIONS'),
  noRegions('NO_REGIONS');

  const SecurityhubFindingAggregatorLinkingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_securityhub_finding_aggregator`.
final class AwsSecurityhubFindingAggregator extends Resource {
  static const String tfType = 'aws_securityhub_finding_aggregator';

  AwsSecurityhubFindingAggregator({
    required super.localName,
    required TfArg<SecurityhubFindingAggregatorLinkingMode> linkingMode,
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
           'region': ?region,
           'specified_regions': ?specifiedRegions,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubFindingAggregatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubFindingAggregator>`.
  RefTo<AwsSecurityhubFindingAggregator> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `linking_mode` attribute.
  TfRef<String> get linkingMode =>
      TfRef.attribute<String>(this, 'linking_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `specified_regions` attribute.
  TfRef<List<String>> get specifiedRegions =>
      TfRef.attribute<List<String>>(this, 'specified_regions');
}
