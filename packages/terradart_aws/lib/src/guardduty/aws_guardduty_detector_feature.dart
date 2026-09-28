// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_detector_feature`.
const Set<String> _awsGuarddutyDetectorFeatureSensitive = <String>{};

/// Guardduty Detector Feature enum for `name`.
enum GuarddutyDetectorFeatureName implements TerraformEnum {
  s3DataEvents('S3_DATA_EVENTS'),
  eksAuditLogs('EKS_AUDIT_LOGS'),
  ebsMalwareProtection('EBS_MALWARE_PROTECTION'),
  rdsLoginEvents('RDS_LOGIN_EVENTS'),
  lambdaNetworkLogs('LAMBDA_NETWORK_LOGS'),
  eksRuntimeMonitoring('EKS_RUNTIME_MONITORING'),
  runtimeMonitoring('RUNTIME_MONITORING'),
  aiProtection('AI_PROTECTION'),
  aiAnalyst('AI_ANALYST');

  const GuarddutyDetectorFeatureName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Guardduty Detector Feature enum for `status`.
enum GuarddutyDetectorFeatureStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const GuarddutyDetectorFeatureStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_detector_feature` (derived from provider schema).
@immutable
final class GuarddutyDetectorFeatureAdditionalConfiguration {
  const GuarddutyDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  final TfArg<GuarddutyDetectorFeatureAdditionalConfigurationName> name;

  final TfArg<GuarddutyDetectorFeatureAdditionalConfigurationStatus> status;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum GuarddutyDetectorFeatureAdditionalConfigurationName
    implements TerraformEnum {
  eksAddonManagement('EKS_ADDON_MANAGEMENT'),
  ecsFargateAgentManagement('ECS_FARGATE_AGENT_MANAGEMENT'),
  ec2AgentManagement('EC2_AGENT_MANAGEMENT');

  const GuarddutyDetectorFeatureAdditionalConfigurationName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum GuarddutyDetectorFeatureAdditionalConfigurationStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const GuarddutyDetectorFeatureAdditionalConfigurationStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_guardduty_detector_feature`.
final class AwsGuarddutyDetectorFeature extends Resource {
  static const String tfType = 'aws_guardduty_detector_feature';

  AwsGuarddutyDetectorFeature({
    required super.localName,
    required TfArg<String> detectorId,
    required TfArg<GuarddutyDetectorFeatureName> name,
    TfArg<String>? region,
    required TfArg<GuarddutyDetectorFeatureStatus> status,
    List<GuarddutyDetectorFeatureAdditionalConfiguration>?
    additionalConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detector_id': detectorId,
           'name': name,
           if (region != null) 'region': region,
           'status': status,
           if (additionalConfiguration != null)
             'additional_configuration': TfArg.literal([
               for (final e in additionalConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyDetectorFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
