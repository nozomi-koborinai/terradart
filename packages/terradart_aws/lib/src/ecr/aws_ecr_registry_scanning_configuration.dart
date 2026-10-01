// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_registry_scanning_configuration`.
const Set<String> _awsEcrRegistryScanningConfigurationSensitive = <String>{};

/// Ecr Registry Scanning Configuration Scan enum for `scan_type`.
enum EcrRegistryScanningConfigurationScanType implements TerraformEnum {
  basic('BASIC'),
  enhanced('ENHANCED');

  const EcrRegistryScanningConfigurationScanType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule` block of
/// `aws_ecr_registry_scanning_configuration` (derived from provider schema).
@immutable
final class EcrRegistryScanningConfigurationRule {
  const EcrRegistryScanningConfigurationRule({
    required this.scanFrequency,
    required this.repositoryFilter,
  });

  final TfArg<EcrRegistryScanningConfigurationScanFrequency> scanFrequency;

  final List<EcrRegistryScanningConfigurationRepositoryFilter> repositoryFilter;

  Map<String, Object?> encode() => {
    'scan_frequency': scanFrequency.toTfJson(),
    'repository_filter': [for (final e in repositoryFilter) e.encode()],
  };
}

/// `scan_frequency` — derived from the provider schema description.
enum EcrRegistryScanningConfigurationScanFrequency implements TerraformEnum {
  scanOnPush('SCAN_ON_PUSH'),
  continuousScan('CONTINUOUS_SCAN'),
  manual('MANUAL');

  const EcrRegistryScanningConfigurationScanFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.repository_filter` block of
/// `aws_ecr_registry_scanning_configuration` (derived from provider schema).
@immutable
final class EcrRegistryScanningConfigurationRepositoryFilter {
  const EcrRegistryScanningConfigurationRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  final TfArg<String> filter;

  final TfArg<EcrRegistryScanningConfigurationFilterType> filterType;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum EcrRegistryScanningConfigurationFilterType implements TerraformEnum {
  wildcard('WILDCARD');

  const EcrRegistryScanningConfigurationFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ecr_registry_scanning_configuration`.
final class AwsEcrRegistryScanningConfiguration extends Resource {
  static const String tfType = 'aws_ecr_registry_scanning_configuration';

  AwsEcrRegistryScanningConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<EcrRegistryScanningConfigurationScanType> scanType,
    List<EcrRegistryScanningConfigurationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'scan_type': scanType,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEcrRegistryScanningConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrRegistryScanningConfiguration>`.
  RefTo<AwsEcrRegistryScanningConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scan_type` attribute.
  TfRef<String> get scanType => TfRef.attribute<String>(this, 'scan_type');
}
