// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_organization_configuration`.
const Set<String> _awsSecurityhubOrganizationConfigurationSensitive =
    <String>{};

/// Securityhub Organization Configuration Auto Enable enum for `auto_enable_standards`.
extension type const SecurityhubOrganizationConfigurationAutoEnableStandards._(
  TfArg<String> _
) implements TfArg<String> {
  SecurityhubOrganizationConfigurationAutoEnableStandards.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubOrganizationConfigurationAutoEnableStandards.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SecurityhubOrganizationConfigurationAutoEnableStandards.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none = SecurityhubOrganizationConfigurationAutoEnableStandards._(
    TfArgLiteral('NONE'),
  );
  static const defaultCase =
      SecurityhubOrganizationConfigurationAutoEnableStandards._(
        TfArgLiteral('DEFAULT'),
      );

  static const List<SecurityhubOrganizationConfigurationAutoEnableStandards>
  values = [none, defaultCase];
}

/// Typed helper for the `organization_configuration` block of
/// `aws_securityhub_organization_configuration` (derived from provider schema).
@immutable
final class SecurityhubOrganizationConfiguration {
  const SecurityhubOrganizationConfiguration({required this.configurationType});

  final SecurityhubOrganizationConfigurationType configurationType;

  Map<String, Object?> encode() => {
    'configuration_type': configurationType.toTfJson(),
  };
}

/// `configuration_type` — derived from the provider schema description.
extension type const SecurityhubOrganizationConfigurationType._(TfArg<String> _)
    implements TfArg<String> {
  SecurityhubOrganizationConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubOrganizationConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityhubOrganizationConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const central = SecurityhubOrganizationConfigurationType._(
    TfArgLiteral('CENTRAL'),
  );
  static const local = SecurityhubOrganizationConfigurationType._(
    TfArgLiteral('LOCAL'),
  );

  static const List<SecurityhubOrganizationConfigurationType> values = [
    central,
    local,
  ];
}

/// Factory wrapper for `aws_securityhub_organization_configuration`.
final class AwsSecurityhubOrganizationConfiguration extends Resource {
  static const String tfType = 'aws_securityhub_organization_configuration';

  AwsSecurityhubOrganizationConfiguration(
    super.localName, {
    required TfArg<bool> autoEnable,
    SecurityhubOrganizationConfigurationAutoEnableStandards?
    autoEnableStandards,
    TfArg<String>? region,
    SecurityhubOrganizationConfiguration? organizationConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable': autoEnable,
           'auto_enable_standards': ?autoEnableStandards,
           'region': ?region,
           if (organizationConfiguration != null)
             'organization_configuration': TfArg.literal(
               organizationConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubOrganizationConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubOrganizationConfiguration>`.
  RefTo<AwsSecurityhubOrganizationConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_enable` attribute.
  TfRef<bool> get autoEnable => TfRef.attribute<bool>(this, 'auto_enable');

  /// Reference to `auto_enable_standards` attribute.
  TfRef<String> get autoEnableStandards =>
      TfRef.attribute<String>(this, 'auto_enable_standards');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
