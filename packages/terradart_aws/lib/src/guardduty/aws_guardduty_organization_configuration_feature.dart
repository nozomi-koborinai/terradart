// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_organization_configuration_feature`.
const Set<String> _awsGuarddutyOrganizationConfigurationFeatureSensitive =
    <String>{};

/// Guardduty Organization Configuration Feature Auto enum for `auto_enable`.
enum GuarddutyOrganizationConfigurationFeatureAutoEnable
    implements TerraformEnum {
  newCase('NEW'),
  none('NONE'),
  all('ALL');

  const GuarddutyOrganizationConfigurationFeatureAutoEnable(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Guardduty Organization Configuration Feature enum for `name`.
enum GuarddutyOrganizationConfigurationFeatureName implements TerraformEnum {
  s3DataEvents('S3_DATA_EVENTS'),
  eksAuditLogs('EKS_AUDIT_LOGS'),
  ebsMalwareProtection('EBS_MALWARE_PROTECTION'),
  rdsLoginEvents('RDS_LOGIN_EVENTS'),
  lambdaNetworkLogs('LAMBDA_NETWORK_LOGS'),
  eksRuntimeMonitoring('EKS_RUNTIME_MONITORING'),
  runtimeMonitoring('RUNTIME_MONITORING'),
  aiProtection('AI_PROTECTION');

  const GuarddutyOrganizationConfigurationFeatureName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_organization_configuration_feature` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration {
  const GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration({
    required this.autoEnable,
    required this.name,
  });

  final TfArg<
    GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable
  >
  autoEnable;

  final TfArg<
    GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName
  >
  name;

  Map<String, Object?> encode() => {
    'auto_enable': autoEnable.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `auto_enable` — derived from the provider schema description.
enum GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable
    implements TerraformEnum {
  newCase('NEW'),
  none('NONE'),
  all('ALL');

  const GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `name` — derived from the provider schema description.
enum GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName
    implements TerraformEnum {
  eksAddonManagement('EKS_ADDON_MANAGEMENT'),
  ecsFargateAgentManagement('ECS_FARGATE_AGENT_MANAGEMENT'),
  ec2AgentManagement('EC2_AGENT_MANAGEMENT');

  const GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_guardduty_organization_configuration_feature`.
final class AwsGuarddutyOrganizationConfigurationFeature extends Resource {
  static const String tfType =
      'aws_guardduty_organization_configuration_feature';

  AwsGuarddutyOrganizationConfigurationFeature({
    required super.localName,
    required TfArg<GuarddutyOrganizationConfigurationFeatureAutoEnable>
    autoEnable,
    required TfArg<String> detectorId,
    required TfArg<GuarddutyOrganizationConfigurationFeatureName> name,
    TfArg<String>? region,
    List<GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration>?
    additionalConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable': autoEnable,
           'detector_id': detectorId,
           'name': name,
           'region': ?region,
           if (additionalConfiguration != null)
             'additional_configuration': TfArg.literal([
               for (final e in additionalConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGuarddutyOrganizationConfigurationFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyOrganizationConfigurationFeature>`.
  RefTo<AwsGuarddutyOrganizationConfigurationFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
