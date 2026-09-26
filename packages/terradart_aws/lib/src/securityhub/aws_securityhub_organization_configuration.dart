// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_organization_configuration`.
const Set<String> _awsSecurityhubOrganizationConfigurationSensitive =
    <String>{};

/// Typed helper for the `organization_configuration` block of
/// `aws_securityhub_organization_configuration` (derived from provider schema).
@immutable
final class SecurityhubOrganizationConfigurationOrganizationConfiguration {
  const SecurityhubOrganizationConfigurationOrganizationConfiguration({
    required this.configurationType,
  });

  final TfArg<String> configurationType;

  Map<String, Object?> encode() => {
    'configuration_type': configurationType.toTfJson(),
  };
}

/// Factory wrapper for `aws_securityhub_organization_configuration`.
final class AwsSecurityhubOrganizationConfiguration extends Resource {
  static const String tfType = 'aws_securityhub_organization_configuration';

  AwsSecurityhubOrganizationConfiguration({
    required super.localName,
    required TfArg<bool> autoEnable,
    TfArg<String>? autoEnableStandards,
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
           if (autoEnableStandards != null)
             'auto_enable_standards': autoEnableStandards,
           if (region != null) 'region': region,
           if (organizationConfiguration != null)
             'organization_configuration': TfArg.literal(
               organizationConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubOrganizationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
