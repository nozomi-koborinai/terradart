// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_registry_scanning_configuration`.
const Set<String> _awsEcrRegistryScanningConfigurationSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_ecr_registry_scanning_configuration` (derived from provider schema).
@immutable
final class EcrRegistryScanningConfigurationRule {
  const EcrRegistryScanningConfigurationRule({
    required this.scanFrequency,
    required this.repositoryFilter,
  });

  final TfArg<String> scanFrequency;

  final List<EcrRegistryScanningConfigurationRuleRepositoryFilter>
  repositoryFilter;

  Map<String, Object?> encode() => {
    'scan_frequency': scanFrequency.toTfJson(),
    'repository_filter': [for (final e in repositoryFilter) e.encode()],
  };
}

/// Typed helper for the `rule.repository_filter` block of
/// `aws_ecr_registry_scanning_configuration` (derived from provider schema).
@immutable
final class EcrRegistryScanningConfigurationRuleRepositoryFilter {
  const EcrRegistryScanningConfigurationRuleRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  final TfArg<String> filter;

  final TfArg<String> filterType;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// Factory wrapper for `aws_ecr_registry_scanning_configuration`.
final class AwsEcrRegistryScanningConfiguration extends Resource {
  static const String tfType = 'aws_ecr_registry_scanning_configuration';

  AwsEcrRegistryScanningConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> scanType,
    List<EcrRegistryScanningConfigurationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'scan_type': scanType,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEcrRegistryScanningConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');
}
