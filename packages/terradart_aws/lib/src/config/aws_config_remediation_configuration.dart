// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_remediation_configuration`.
const Set<String> _awsConfigRemediationConfigurationSensitive = <String>{};

/// Config Remediation Configuration Target enum for `target_type`.
enum ConfigRemediationConfigurationTargetType implements TerraformEnum {
  ssmDocument('SSM_DOCUMENT');

  const ConfigRemediationConfigurationTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `execution_controls` block of
/// `aws_config_remediation_configuration` (derived from provider schema).
@immutable
final class ConfigRemediationConfigurationExecutionControls {
  const ConfigRemediationConfigurationExecutionControls({this.ssmControls});

  final ConfigRemediationConfigurationSsmControls? ssmControls;

  Map<String, Object?> encode() => {'ssm_controls': ?ssmControls?.encode()};
}

/// Typed helper for the `execution_controls.ssm_controls` block of
/// `aws_config_remediation_configuration` (derived from provider schema).
@immutable
final class ConfigRemediationConfigurationSsmControls {
  const ConfigRemediationConfigurationSsmControls({
    this.concurrentExecutionRatePercentage,
    this.errorPercentage,
  });

  final TfArg<num>? concurrentExecutionRatePercentage;

  final TfArg<num>? errorPercentage;

  Map<String, Object?> encode() => {
    'concurrent_execution_rate_percentage': ?concurrentExecutionRatePercentage
        ?.toTfJson(),
    'error_percentage': ?errorPercentage?.toTfJson(),
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

  final TfArg<List<String>>? staticValues;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'resource_value': ?resourceValue?.toTfJson(),
    'static_value': ?staticValue?.toTfJson(),
    'static_values': ?staticValues?.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_remediation_configuration`.
final class AwsConfigRemediationConfiguration extends Resource {
  static const String tfType = 'aws_config_remediation_configuration';

  AwsConfigRemediationConfiguration(
    super.localName, {
    TfArg<bool>? automatic,
    required TfArg<String> configRuleName,
    TfArg<num>? maximumAutomaticAttempts,
    TfArg<String>? region,
    TfArg<String>? resourceType,
    TfArg<num>? retryAttemptSeconds,
    required TfArg<String> targetId,
    required TfArg<ConfigRemediationConfigurationTargetType> targetType,
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
           'automatic': ?automatic,
           'config_rule_name': configRuleName,
           'maximum_automatic_attempts': ?maximumAutomaticAttempts,
           'region': ?region,
           'resource_type': ?resourceType,
           'retry_attempt_seconds': ?retryAttemptSeconds,
           'target_id': targetId,
           'target_type': targetType,
           'target_version': ?targetVersion,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigRemediationConfiguration>`.
  RefTo<AwsConfigRemediationConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `automatic` attribute.
  TfRef<bool> get automatic => TfRef.attribute<bool>(this, 'automatic');

  /// Reference to `config_rule_name` attribute.
  TfRef<String> get configRuleName =>
      TfRef.attribute<String>(this, 'config_rule_name');

  /// Reference to `maximum_automatic_attempts` attribute.
  TfRef<num> get maximumAutomaticAttempts =>
      TfRef.attribute<num>(this, 'maximum_automatic_attempts');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `retry_attempt_seconds` attribute.
  TfRef<num> get retryAttemptSeconds =>
      TfRef.attribute<num>(this, 'retry_attempt_seconds');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');

  /// Reference to `target_version` attribute.
  TfRef<String> get targetVersion =>
      TfRef.attribute<String>(this, 'target_version');
}
