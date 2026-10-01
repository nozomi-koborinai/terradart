// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_registry_scanning_configuration`.
const Set<String> _awsEcrRegistryScanningConfigurationSensitive = <String>{};

/// Ecr Registry Scanning Configuration Scan enum for `scan_type`.
extension type const EcrRegistryScanningConfigurationScanType._(TfArg<String> _)
    implements TfArg<String> {
  EcrRegistryScanningConfigurationScanType.variable(String name)
    : this._(TfArg.variable(name));
  EcrRegistryScanningConfigurationScanType.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRegistryScanningConfigurationScanType.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = EcrRegistryScanningConfigurationScanType._(
    TfArgLiteral('BASIC'),
  );
  static const enhanced = EcrRegistryScanningConfigurationScanType._(
    TfArgLiteral('ENHANCED'),
  );

  static const List<EcrRegistryScanningConfigurationScanType> values = [
    basic,
    enhanced,
  ];
}

/// Typed helper for the `rule` block of
/// `aws_ecr_registry_scanning_configuration` (derived from provider schema).
@immutable
final class EcrRegistryScanningConfigurationRule {
  const EcrRegistryScanningConfigurationRule({
    required this.scanFrequency,
    required this.repositoryFilter,
  });

  final EcrRegistryScanningConfigurationScanFrequency scanFrequency;

  final List<EcrRegistryScanningConfigurationRepositoryFilter> repositoryFilter;

  Map<String, Object?> encode() => {
    'scan_frequency': scanFrequency.toTfJson(),
    'repository_filter': [for (final e in repositoryFilter) e.encode()],
  };
}

/// `scan_frequency` — derived from the provider schema description.
extension type const EcrRegistryScanningConfigurationScanFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  EcrRegistryScanningConfigurationScanFrequency.variable(String name)
    : this._(TfArg.variable(name));
  EcrRegistryScanningConfigurationScanFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRegistryScanningConfigurationScanFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const scanOnPush = EcrRegistryScanningConfigurationScanFrequency._(
    TfArgLiteral('SCAN_ON_PUSH'),
  );
  static const continuousScan = EcrRegistryScanningConfigurationScanFrequency._(
    TfArgLiteral('CONTINUOUS_SCAN'),
  );
  static const manual = EcrRegistryScanningConfigurationScanFrequency._(
    TfArgLiteral('MANUAL'),
  );

  static const List<EcrRegistryScanningConfigurationScanFrequency> values = [
    scanOnPush,
    continuousScan,
    manual,
  ];
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

  final EcrRegistryScanningConfigurationFilterType filterType;

  Map<String, Object?> encode() => {
    'filter': filter.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
extension type const EcrRegistryScanningConfigurationFilterType._(
  TfArg<String> _
) implements TfArg<String> {
  EcrRegistryScanningConfigurationFilterType.variable(String name)
    : this._(TfArg.variable(name));
  EcrRegistryScanningConfigurationFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const EcrRegistryScanningConfigurationFilterType.arg(TfArg<String> arg)
    : this._(arg);

  static const wildcard = EcrRegistryScanningConfigurationFilterType._(
    TfArgLiteral('WILDCARD'),
  );

  static const List<EcrRegistryScanningConfigurationFilterType> values = [
    wildcard,
  ];
}

/// Factory wrapper for `aws_ecr_registry_scanning_configuration`.
final class AwsEcrRegistryScanningConfiguration extends Resource {
  static const String tfType = 'aws_ecr_registry_scanning_configuration';

  AwsEcrRegistryScanningConfiguration(
    super.localName, {
    TfArg<String>? region,
    required EcrRegistryScanningConfigurationScanType scanType,
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
