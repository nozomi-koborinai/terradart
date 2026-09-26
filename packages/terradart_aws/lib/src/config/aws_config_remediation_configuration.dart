// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_remediation_configuration`.
const Set<String> _awsConfigRemediationConfigurationSensitive = <String>{};

/// Typed helper for the `execution_controls` block of
/// `aws_config_remediation_configuration` (derived from provider schema).
@immutable
final class ConfigRemediationConfigurationExecutionControls {
  const ConfigRemediationConfigurationExecutionControls({this.ssmControls});

  final ConfigRemediationConfigurationExecutionControlsSsmControls? ssmControls;

  Map<String, Object?> encode() => {
    if (ssmControls != null) 'ssm_controls': ssmControls!.encode(),
  };
}

/// Typed helper for the `execution_controls.ssm_controls` block of
/// `aws_config_remediation_configuration` (derived from provider schema).
@immutable
final class ConfigRemediationConfigurationExecutionControlsSsmControls {
  const ConfigRemediationConfigurationExecutionControlsSsmControls({
    this.concurrentExecutionRatePercentage,
    this.errorPercentage,
  });

  final TfArg<num>? concurrentExecutionRatePercentage;

  final TfArg<num>? errorPercentage;

  Map<String, Object?> encode() => {
    if (concurrentExecutionRatePercentage != null)
      'concurrent_execution_rate_percentage': concurrentExecutionRatePercentage!
          .toTfJson(),
    if (errorPercentage != null)
      'error_percentage': errorPercentage!.toTfJson(),
  };
}

/// Typed helper for the `parameter` block of
/// `aws_config_remediation_configuration` (derived from provider schema).
@immutable
final class ConfigRemediationConfigurationParameter {
  const ConfigRemediationConfigurationParameter({
    required this.name,
    this.resourceValue,
    this.staticValue,
    this.staticValues,
  });

  final TfArg<String> name;

  final TfArg<String>? resourceValue;

  final TfArg<String>? staticValue;

  final TfArg<List<Object?>>? staticValues;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (resourceValue != null) 'resource_value': resourceValue!.toTfJson(),
    if (staticValue != null) 'static_value': staticValue!.toTfJson(),
    if (staticValues != null) 'static_values': staticValues!.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_remediation_configuration`.
final class AwsConfigRemediationConfiguration extends Resource {
  static const String tfType = 'aws_config_remediation_configuration';

  AwsConfigRemediationConfiguration({
    required super.localName,
    TfArg<bool>? automatic,
    required TfArg<String> configRuleName,
    TfArg<num>? maximumAutomaticAttempts,
    TfArg<String>? region,
    TfArg<String>? resourceType,
    TfArg<num>? retryAttemptSeconds,
    required TfArg<String> targetId,
    required TfArg<String> targetType,
    TfArg<String>? targetVersion,
    ConfigRemediationConfigurationExecutionControls? executionControls,
    List<ConfigRemediationConfigurationParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (automatic != null) 'automatic': automatic,
           'config_rule_name': configRuleName,
           if (maximumAutomaticAttempts != null)
             'maximum_automatic_attempts': maximumAutomaticAttempts,
           if (region != null) 'region': region,
           if (resourceType != null) 'resource_type': resourceType,
           if (retryAttemptSeconds != null)
             'retry_attempt_seconds': retryAttemptSeconds,
           'target_id': targetId,
           'target_type': targetType,
           if (targetVersion != null) 'target_version': targetVersion,
           if (executionControls != null)
             'execution_controls': TfArg.literal(executionControls.encode()),
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConfigRemediationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
