// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_organization_configuration`.
const Set<String> _awsSecurityhubOrganizationConfigurationSensitive =
    <String>{};

/// Securityhub Organization Configuration Auto Enable enum for `auto_enable_standards`.
enum SecurityhubOrganizationConfigurationAutoEnableStandards
    implements TerraformEnum {
  none('NONE'),
  defaultCase('DEFAULT');

  const SecurityhubOrganizationConfigurationAutoEnableStandards(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `organization_configuration` block of
/// `aws_securityhub_organization_configuration` (derived from provider schema).
@immutable
final class SecurityhubOrganizationConfigurationOrganizationConfiguration {
  const SecurityhubOrganizationConfigurationOrganizationConfiguration({
    required this.configurationType,
  });

  final TfArg<
    SecurityhubOrganizationConfigurationOrganizationConfigurationConfigurationType
  >
  configurationType;

  Map<String, Object?> encode() => {
    'configuration_type': configurationType.toTfJson(),
  };
}

/// `configuration_type` — derived from the provider schema description.
enum SecurityhubOrganizationConfigurationOrganizationConfigurationConfigurationType
    implements TerraformEnum {
  central('CENTRAL'),
  local('LOCAL');

  const SecurityhubOrganizationConfigurationOrganizationConfigurationConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_securityhub_organization_configuration`.
final class AwsSecurityhubOrganizationConfiguration extends Resource {
  static const String tfType = 'aws_securityhub_organization_configuration';

  AwsSecurityhubOrganizationConfiguration({
    required super.localName,
    required TfArg<bool> autoEnable,
    TfArg<SecurityhubOrganizationConfigurationAutoEnableStandards>?
    autoEnableStandards,
    TfArg<String>? region,
    SecurityhubOrganizationConfigurationOrganizationConfiguration?
    organizationConfiguration,
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
}
