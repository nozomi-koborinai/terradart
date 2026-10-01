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
final class SecurityhubConfigurationPolicy {
  const SecurityhubConfigurationPolicy({
    this.enabledStandardArns,
    required this.serviceEnabled,
    this.securityControlsConfiguration,
  });

  final TfArg<List<String>>? enabledStandardArns;

  final TfArg<bool> serviceEnabled;

  final SecurityhubConfigurationPolicySecurityControlsConfiguration?
  securityControlsConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'enabled_standard_arns': ?enabledStandardArns?.toTfJson(),
    'service_enabled': serviceEnabled.toTfJson(),
    'security_controls_configuration': ?securityControlsConfiguration?.encode(),
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicySecurityControlsConfiguration {
  const SecurityhubConfigurationPolicySecurityControlsConfiguration({
    this.controlIdentifiers,
    this.securityControlCustomParameter,
  });

  final SecurityhubConfigurationPolicyControlIdentifiers? controlIdentifiers;

  final List<SecurityhubConfigurationPolicySecurityControlCustomParameter>?
  securityControlCustomParameter;

  @internal
  Map<String, Object?> encode() => {
    ...?controlIdentifiers?.encode(),
    if (securityControlCustomParameter != null)
      'security_control_custom_parameter': [
        for (final e in securityControlCustomParameter!) e.encode(),
      ],
  };
}

/// At most one of `disabled_control_identifiers`, `enabled_control_identifiers` on the `configuration_policy.security_controls_configuration` block of `aws_securityhub_configuration_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.disabledControlIdentifiers(...)`.
sealed class SecurityhubConfigurationPolicyControlIdentifiers {
  const SecurityhubConfigurationPolicyControlIdentifiers();

  /// Sets `disabled_control_identifiers`.
  const factory SecurityhubConfigurationPolicyControlIdentifiers.disabledControlIdentifiers(
    TfArg<List<String>> disabledControlIdentifiers,
  ) = SecurityhubConfigurationPolicyDisabledControlIdentifiers;

  /// Sets `enabled_control_identifiers`.
  const factory SecurityhubConfigurationPolicyControlIdentifiers.enabledControlIdentifiers(
    TfArg<List<String>> enabledControlIdentifiers,
  ) = SecurityhubConfigurationPolicyEnabledControlIdentifiers;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SecurityhubConfigurationPolicyControlIdentifiers.disabledControlIdentifiers] choice: sets `disabled_control_identifiers`.
final class SecurityhubConfigurationPolicyDisabledControlIdentifiers
    extends SecurityhubConfigurationPolicyControlIdentifiers {
  const SecurityhubConfigurationPolicyDisabledControlIdentifiers(
    this.disabledControlIdentifiers,
  );

  final TfArg<List<String>> disabledControlIdentifiers;

  @internal
  @override
  String get blockKey => 'disabled_control_identifiers';

  @internal
  @override
  Map<String, Object?> encode() => {
    'disabled_control_identifiers': disabledControlIdentifiers.toTfJson(),
  };
}

/// The [SecurityhubConfigurationPolicyControlIdentifiers.enabledControlIdentifiers] choice: sets `enabled_control_identifiers`.
final class SecurityhubConfigurationPolicyEnabledControlIdentifiers
    extends SecurityhubConfigurationPolicyControlIdentifiers {
  const SecurityhubConfigurationPolicyEnabledControlIdentifiers(
    this.enabledControlIdentifiers,
  );

  final TfArg<List<String>> enabledControlIdentifiers;

  @internal
  @override
  String get blockKey => 'enabled_control_identifiers';

  @internal
  @override
  Map<String, Object?> encode() => {
    'enabled_control_identifiers': enabledControlIdentifiers.toTfJson(),
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicySecurityControlCustomParameter {
  const SecurityhubConfigurationPolicySecurityControlCustomParameter({
    required this.securityControlId,
    required this.parameter,
  });

  final TfArg<String> securityControlId;

  final List<SecurityhubConfigurationPolicyParameter> parameter;

  @internal
  Map<String, Object?> encode() => {
    'security_control_id': securityControlId.toTfJson(),
    'parameter': [for (final e in parameter) e.encode()],
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyParameter {
  const SecurityhubConfigurationPolicyParameter({
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

  final SecurityhubConfigurationPolicyBool? bool;

  final SecurityhubConfigurationPolicyDouble? double;

  final SecurityhubConfigurationPolicyEnum? enumCase;

  final SecurityhubConfigurationPolicyEnumList? enumList;

  final SecurityhubConfigurationPolicyInt? int;

  final SecurityhubConfigurationPolicyIntList? intList;

  final SecurityhubConfigurationPolicyString? string;

  final SecurityhubConfigurationPolicyStringList? stringList;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value_type': valueType.toTfJson(),
    'bool': ?bool?.encode(),
    'double': ?double?.encode(),
    'enum': ?enumCase?.encode(),
    'enum_list': ?enumList?.encode(),
    'int': ?int?.encode(),
    'int_list': ?intList?.encode(),
    'string': ?string?.encode(),
    'string_list': ?stringList?.encode(),
  };
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.bool` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyBool {
  const SecurityhubConfigurationPolicyBool({required this.value});

  final TfArg<bool> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.double` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyDouble {
  const SecurityhubConfigurationPolicyDouble({required this.value});

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.enum` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyEnum {
  const SecurityhubConfigurationPolicyEnum({required this.value});

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.enum_list` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyEnumList {
  const SecurityhubConfigurationPolicyEnumList({required this.value});

  final TfArg<List<String>> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.int` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyInt {
  const SecurityhubConfigurationPolicyInt({required this.value});

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.int_list` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyIntList {
  const SecurityhubConfigurationPolicyIntList({required this.value});

  final TfArg<List<num>> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.string` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyString {
  const SecurityhubConfigurationPolicyString({required this.value});

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `configuration_policy.security_controls_configuration.security_control_custom_parameter.parameter.string_list` block of
/// `aws_securityhub_configuration_policy` (derived from provider schema).
@immutable
final class SecurityhubConfigurationPolicyStringList {
  const SecurityhubConfigurationPolicyStringList({required this.value});

  final TfArg<List<String>> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Factory wrapper for `aws_securityhub_configuration_policy`.
final class AwsSecurityhubConfigurationPolicy extends Resource {
  static const String tfType = 'aws_securityhub_configuration_policy';

  AwsSecurityhubConfigurationPolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required SecurityhubConfigurationPolicy configurationPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'configuration_policy': TfArg.literal(configurationPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubConfigurationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubConfigurationPolicy>`.
  RefTo<AwsSecurityhubConfigurationPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
