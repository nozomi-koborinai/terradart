// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_configuration_policy`.
const Set<String> _awsSecurityhubConfigurationPolicySensitive = <String>{};

/// Typed helper for the `configuration_policy` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicy {
  const SecurityhubConfigurationPolicyConfigurationPolicy({
    this.enabledStandardArns,
    required this.serviceEnabled,
    this.securityControlsConfiguration,
  });

  final TfArg<List<Object?>>? enabledStandardArns;

  final TfArg<bool> serviceEnabled;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfiguration?
  securityControlsConfiguration;

  Map<String, Object?> encode() => {
    if (enabledStandardArns != null)
      'enabled_standard_arns': enabledStandardArns!.toTfJson(),
    'service_enabled': serviceEnabled.toTfJson(),
    if (securityControlsConfiguration != null)
      'security_controls_configuration': securityControlsConfiguration!
          .encode(),
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfiguration {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfiguration({
    this.disabledControlIdentifiers,
    this.enabledControlIdentifiers,
    this.securityControlCustomParameter,
  });

  final TfArg<List<Object?>>? disabledControlIdentifiers;

  final TfArg<List<Object?>>? enabledControlIdentifiers;

  final List<
    SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter
  >?
  securityControlCustomParameter;

  Map<String, Object?> encode() => {
    if (disabledControlIdentifiers != null)
      'disabled_control_identifiers': disabledControlIdentifiers!.toTfJson(),
    if (enabledControlIdentifiers != null)
      'enabled_control_identifiers': enabledControlIdentifiers!.toTfJson(),
    if (securityControlCustomParameter != null)
      'security_control_custom_parameter': [
        for (final e in securityControlCustomParameter!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter({
    required this.securityControlId,
    required this.parameter,
  });

  final TfArg<String> securityControlId;

  final List<
    SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter
  >
  parameter;

  Map<String, Object?> encode() => {
    'security_control_id': securityControlId.toTfJson(),
    'parameter': [for (final e in parameter) e.encode()],
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter({
    required this.name,
    required this.valueType,
    this.bool,
    this.double,
    this.enumCase,
    this.enumList,
    this.int,
    this.intList,
    this.string,
    this.stringList,
  });

  final TfArg<String> name;

  final TfArg<String> valueType;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool?
  bool;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble?
  double;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum?
  enumCase;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList?
  enumList;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt?
  int;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList?
  intList;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString?
  string;

  final SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList?
  stringList;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    if (bool != null) 'bool': bool!.encode(),
    if (double != null) 'double': double!.encode(),
    if (enumCase != null) 'enum': enumCase!.encode(),
    if (enumList != null) 'enum_list': enumList!.encode(),
    if (int != null) 'int': int!.encode(),
    if (intList != null) 'int_list': intList!.encode(),
    if (string != null) 'string': string!.encode(),
    if (stringList != null) 'string_list': stringList!.encode(),
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.bool` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBool({
    required this.value,
  });

  final TfArg<bool> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.double` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterDouble({
    required this.value,
  });

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.enum` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnum({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.enum_list` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumList({
    required this.value,
  });

  final TfArg<List<Object?>> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.int` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterInt({
    required this.value,
  });

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.int_list` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntList({
    required this.value,
  });

  final TfArg<List<Object?>> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.string` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterString({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.string_list` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList {
  const SecurityhubConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterStringList({
    required this.value,
  });

  final TfArg<List<Object?>> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Factory wrapper for `aws_securityhub_configuration_policy`.
final class AwsSecurityhubConfigurationPolicy extends Resource {
  static const String tfType = 'aws_securityhub_configuration_policy';

  AwsSecurityhubConfigurationPolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required SecurityhubConfigurationPolicyConfigurationPolicy
    configurationPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'configuration_policy': TfArg.literal(configurationPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubConfigurationPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
