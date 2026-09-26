// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_configuration_aggregator`.
const Set<String> _awsConfigConfigurationAggregatorSensitive = <String>{};

/// Typed helper for the `account_aggregation_source` block of
/// `aws_config_configuration_aggregator` (derived from provider schema).
@immutable
final class ConfigConfigurationAggregatorAccountAggregationSource {
  const ConfigConfigurationAggregatorAccountAggregationSource({
    required this.accountIds,
    this.allRegions,
    this.regions,
  });

  final TfArg<List<Object?>> accountIds;

  final TfArg<bool>? allRegions;

  final TfArg<List<Object?>>? regions;

  Map<String, Object?> encode() => {
    'account_ids': accountIds.toTfJson(),
    if (allRegions != null) 'all_regions': allRegions!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
  };
}

/// Typed helper for the `organization_aggregation_source` block of
/// `aws_config_configuration_aggregator` (derived from provider schema).
@immutable
final class ConfigConfigurationAggregatorOrganizationAggregationSource {
  const ConfigConfigurationAggregatorOrganizationAggregationSource({
    this.allRegions,
    this.regions,
    required this.roleArn,
  });

  final TfArg<bool>? allRegions;

  final TfArg<List<Object?>>? regions;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (allRegions != null) 'all_regions': allRegions!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_configuration_aggregator`.
final class AwsConfigConfigurationAggregator extends Resource {
  static const String tfType = 'aws_config_configuration_aggregator';

  AwsConfigConfigurationAggregator({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ConfigConfigurationAggregatorAccountAggregationSource?
    accountAggregationSource,
    ConfigConfigurationAggregatorOrganizationAggregationSource?
    organizationAggregationSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (accountAggregationSource != null)
             'account_aggregation_source': TfArg.literal(
               accountAggregationSource.encode(),
             ),
           if (organizationAggregationSource != null)
             'organization_aggregation_source': TfArg.literal(
               organizationAggregationSource.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConfigurationAggregatorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
