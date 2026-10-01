// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_member_detector_feature`.
const Set<String> _awsGuarddutyMemberDetectorFeatureSensitive = <String>{};

/// Guardduty Member Detector Feature enum for `name`.
enum GuarddutyMemberDetectorFeatureName implements TerraformEnum {
  s3DataEvents('S3_DATA_EVENTS'),
  eksAuditLogs('EKS_AUDIT_LOGS'),
  ebsMalwareProtection('EBS_MALWARE_PROTECTION'),
  rdsLoginEvents('RDS_LOGIN_EVENTS'),
  lambdaNetworkLogs('LAMBDA_NETWORK_LOGS'),
  eksRuntimeMonitoring('EKS_RUNTIME_MONITORING'),
  runtimeMonitoring('RUNTIME_MONITORING'),
  aiProtection('AI_PROTECTION');

  const GuarddutyMemberDetectorFeatureName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Guardduty Member Detector Feature enum for `status`.
enum GuarddutyMemberDetectorFeatureStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const GuarddutyMemberDetectorFeatureStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_member_detector_feature` (derived from provider schema).
@immutable
final class GuarddutyMemberDetectorFeatureAdditionalConfiguration {
  const GuarddutyMemberDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  final TfArg<GuarddutyMemberDetectorFeatureAdditionalConfigurationName> name;

  final TfArg<GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus>
  status;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum GuarddutyMemberDetectorFeatureAdditionalConfigurationName
    implements TerraformEnum {
  eksAddonManagement('EKS_ADDON_MANAGEMENT'),
  ecsFargateAgentManagement('ECS_FARGATE_AGENT_MANAGEMENT'),
  ec2AgentManagement('EC2_AGENT_MANAGEMENT');

  const GuarddutyMemberDetectorFeatureAdditionalConfigurationName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_guardduty_member_detector_feature`.
final class AwsGuarddutyMemberDetectorFeature extends Resource {
  static const String tfType = 'aws_guardduty_member_detector_feature';

  AwsGuarddutyMemberDetectorFeature({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> detectorId,
    required TfArg<GuarddutyMemberDetectorFeatureName> name,
    TfArg<String>? region,
    required TfArg<GuarddutyMemberDetectorFeatureStatus> status,
    List<GuarddutyMemberDetectorFeatureAdditionalConfiguration>?
    additionalConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'detector_id': detectorId,
           'name': name,
           'region': ?region,
           'status': status,
           if (additionalConfiguration != null)
             'additional_configuration': TfArg.literal([
               for (final e in additionalConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGuarddutyMemberDetectorFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyMemberDetectorFeature>`.
  RefTo<AwsGuarddutyMemberDetectorFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorId => TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
