// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_replication_configuration`.
const Set<String> _awsEcrReplicationConfigurationSensitive = <String>{};

/// Typed helper for the `replication_configuration` block of
/// `aws_ecr_replication_configuration` (derived from provider schema).
@immutable
final class EcrReplicationConfiguration {
  const EcrReplicationConfiguration({required this.rule});

  final List<EcrReplicationConfigurationRule> rule;

  Map<String, Object?> encode() => {
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `replication_configuration.rule` block of
/// `aws_ecr_replication_configuration` (derived from provider schema).
@immutable
final class EcrReplicationConfigurationRule {
  const EcrReplicationConfigurationRule({
    required this.destination,
    this.repositoryFilter,
  });

  final List<EcrReplicationConfigurationDestination> destination;

  final List<EcrReplicationConfigurationRepositoryFilter>? repositoryFilter;

  Map<String, Object?> encode() => {
    'destination': [for (final e in destination) e.encode()],
    if (repositoryFilter != null)
      'repository_filter': [for (final e in repositoryFilter!) e.encode()],
  };
}

/// Typed helper for the `replication_configuration.rule.destination` block of
/// `aws_ecr_replication_configuration` (derived from provider schema).
@immutable
final class EcrReplicationConfigurationDestination {
  const EcrReplicationConfigurationDestination({
    required this.region,
    required this.registryId,
  });

  final TfArg<String> region;

  final TfArg<String> registryId;

  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    'registry_id': registryId.toTfJson(),
  };
}

/// Typed helper for the `replication_configuration.rule.repository_filter` block of
/// `aws_ecr_replication_configuration` (derived from provider schema).
@immutable
final class EcrReplicationConfigurationRepositoryFilter {
  const EcrReplicationConfigurationRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  final TfArg<String> filter;

  final TfArg<EcrReplicationConfigurationFilterType> filterType;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum EcrReplicationConfigurationFilterType implements TerraformEnum {
  prefixMatch('PREFIX_MATCH');

  const EcrReplicationConfigurationFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ecr_replication_configuration`.
final class AwsEcrReplicationConfiguration extends Resource {
  static const String tfType = 'aws_ecr_replication_configuration';

  AwsEcrReplicationConfiguration({
    required super.localName,
    TfArg<String>? region,
    EcrReplicationConfiguration? replicationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (replicationConfiguration != null)
             'replication_configuration': TfArg.literal(
               replicationConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrReplicationConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrReplicationConfiguration>`.
  RefTo<AwsEcrReplicationConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
