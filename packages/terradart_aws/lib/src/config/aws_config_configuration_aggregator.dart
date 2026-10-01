// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_config_configuration_aggregator`.
const Set<String> _awsConfigConfigurationAggregatorSensitive = <String>{};

/// At most one of `account_aggregation_source`, `organization_aggregation_source` on `aws_config_configuration_aggregator`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.accountAggregationSource(...)`.
sealed class ConfigConfigurationAggregatorAggregationSource {
  const ConfigConfigurationAggregatorAggregationSource();

  /// Sets `account_aggregation_source`.
  const factory ConfigConfigurationAggregatorAggregationSource.accountAggregationSource(
    ConfigConfigurationAggregatorAccountAggregationSource
    accountAggregationSource,
  ) = ConfigConfigurationAggregatorAccountAggregationSourceChoice;

  /// Sets `organization_aggregation_source`.
  const factory ConfigConfigurationAggregatorAggregationSource.organizationAggregationSource(
    ConfigConfigurationAggregatorOrganizationAggregationSource
    organizationAggregationSource,
  ) = ConfigConfigurationAggregatorOrganizationAggregationSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConfigConfigurationAggregatorAggregationSource.accountAggregationSource] choice: sets `account_aggregation_source`.
final class ConfigConfigurationAggregatorAccountAggregationSourceChoice
    extends ConfigConfigurationAggregatorAggregationSource {
  const ConfigConfigurationAggregatorAccountAggregationSourceChoice(
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

/// The [ConfigConfigurationAggregatorAggregationSource.organizationAggregationSource] choice: sets `organization_aggregation_source`.
final class ConfigConfigurationAggregatorOrganizationAggregationSourceChoice
    extends ConfigConfigurationAggregatorAggregationSource {
  const ConfigConfigurationAggregatorOrganizationAggregationSourceChoice(
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

  final TfArg<List<String>> accountIds;

  final TfArg<bool>? allRegions;

  final TfArg<List<String>>? regions;

  Map<String, Object?> encode() => {
    'account_ids': accountIds.toTfJson(),
    'all_regions': ?allRegions?.toTfJson(),
    'regions': ?regions?.toTfJson(),
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

  final TfArg<List<String>>? regions;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'all_regions': ?allRegions?.toTfJson(),
    'regions': ?regions?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_config_configuration_aggregator`.
final class AwsConfigConfigurationAggregator extends Resource {
  static const String tfType = 'aws_config_configuration_aggregator';

  AwsConfigConfigurationAggregator(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ConfigConfigurationAggregatorAggregationSource? aggregationSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'tags': ?tags,
           ...?aggregationSource?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConfigurationAggregatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConfigurationAggregator>`.
  RefTo<AwsConfigConfigurationAggregator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
