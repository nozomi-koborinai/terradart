// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_configuration_aggregator`.
const Set<String> _awsConfigConfigurationAggregatorSensitive = <String>{};

/// At most one of `account_aggregation_source`, `organization_aggregation_source` on `aws_config_configuration_aggregator`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.accountAggregationSource(...)`.
sealed class ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource {
  const ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource();

  /// Sets `account_aggregation_source`.
  const factory ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource.accountAggregationSource(
    ConfigConfigurationAggregatorAccountAggregationSource
    accountAggregationSource,
  ) = ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSourceAccountAggregationSource;

  /// Sets `organization_aggregation_source`.
  const factory ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource.organizationAggregationSource(
    ConfigConfigurationAggregatorOrganizationAggregationSource
    organizationAggregationSource,
  ) = ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSourceOrganizationAggregationSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource.accountAggregationSource] choice: sets `account_aggregation_source`.
final class ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSourceAccountAggregationSource
    extends
        ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource {
  const ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSourceAccountAggregationSource(
    this.accountAggregationSource,
  );

  final ConfigConfigurationAggregatorAccountAggregationSource
  accountAggregationSource;

  @override
  String get blockKey => 'account_aggregation_source';

  @override
  Map<String, Object?> encode() => {
    'account_aggregation_source': accountAggregationSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'account_aggregation_source': TfArg.literal(
      accountAggregationSource.encode(),
    ),
  };
}

/// The [ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource.organizationAggregationSource] choice: sets `organization_aggregation_source`.
final class ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSourceOrganizationAggregationSource
    extends
        ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource {
  const ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSourceOrganizationAggregationSource(
    this.organizationAggregationSource,
  );

  final ConfigConfigurationAggregatorOrganizationAggregationSource
  organizationAggregationSource;

  @override
  String get blockKey => 'organization_aggregation_source';

  @override
  Map<String, Object?> encode() => {
    'organization_aggregation_source': organizationAggregationSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'organization_aggregation_source': TfArg.literal(
      organizationAggregationSource.encode(),
    ),
  };
}

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
    ConfigConfigurationAggregatorAccountAggregationSourceOrOrganizationAggregationSource?
    accountAggregationSourceOrOrganizationAggregationSource,
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
           ...?accountAggregationSourceOrOrganizationAggregationSource?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConfigurationAggregatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConfigurationAggregator>`.
  RefTo<AwsConfigConfigurationAggregator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
