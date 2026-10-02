// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_member_detector_feature`.
const Set<String> _awsGuarddutyMemberDetectorFeatureSensitive = <String>{};

/// Guardduty Member Detector Feature enum for `name`.
extension type const GuarddutyMemberDetectorFeatureName._(TfArg<String> _)
    implements TfArg<String> {
  GuarddutyMemberDetectorFeatureName.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyMemberDetectorFeatureName.expression(String template)
    : this._(TfArg.expression(template));
  const GuarddutyMemberDetectorFeatureName.arg(TfArg<String> arg) : this._(arg);

  static const s3DataEvents = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('S3_DATA_EVENTS'),
  );
  static const eksAuditLogs = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('EKS_AUDIT_LOGS'),
  );
  static const ebsMalwareProtection = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('EBS_MALWARE_PROTECTION'),
  );
  static const rdsLoginEvents = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('RDS_LOGIN_EVENTS'),
  );
  static const lambdaNetworkLogs = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('LAMBDA_NETWORK_LOGS'),
  );
  static const eksRuntimeMonitoring = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('EKS_RUNTIME_MONITORING'),
  );
  static const runtimeMonitoring = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('RUNTIME_MONITORING'),
  );
  static const aiProtection = GuarddutyMemberDetectorFeatureName._(
    TfArgLiteral('AI_PROTECTION'),
  );

  static const List<GuarddutyMemberDetectorFeatureName> values = [
    s3DataEvents,
    eksAuditLogs,
    ebsMalwareProtection,
    rdsLoginEvents,
    lambdaNetworkLogs,
    eksRuntimeMonitoring,
    runtimeMonitoring,
    aiProtection,
  ];
}

/// Guardduty Member Detector Feature enum for `status`.
extension type const GuarddutyMemberDetectorFeatureStatus._(TfArg<String> _)
    implements TfArg<String> {
  GuarddutyMemberDetectorFeatureStatus.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyMemberDetectorFeatureStatus.expression(String template)
    : this._(TfArg.expression(template));
  const GuarddutyMemberDetectorFeatureStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = GuarddutyMemberDetectorFeatureStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = GuarddutyMemberDetectorFeatureStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<GuarddutyMemberDetectorFeatureStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_member_detector_feature` (derived from provider schema).
@immutable
final class GuarddutyMemberDetectorFeatureAdditionalConfiguration {
  const GuarddutyMemberDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  final GuarddutyMemberDetectorFeatureAdditionalConfigurationName name;

  final GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus status;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const GuarddutyMemberDetectorFeatureAdditionalConfigurationName._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyMemberDetectorFeatureAdditionalConfigurationName.variable(
    String name,
  ) : this._(TfArg.variable(name));
  GuarddutyMemberDetectorFeatureAdditionalConfigurationName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyMemberDetectorFeatureAdditionalConfigurationName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const eksAddonManagement =
      GuarddutyMemberDetectorFeatureAdditionalConfigurationName._(
        TfArgLiteral('EKS_ADDON_MANAGEMENT'),
      );
  static const ecsFargateAgentManagement =
      GuarddutyMemberDetectorFeatureAdditionalConfigurationName._(
        TfArgLiteral('ECS_FARGATE_AGENT_MANAGEMENT'),
      );
  static const ec2AgentManagement =
      GuarddutyMemberDetectorFeatureAdditionalConfigurationName._(
        TfArgLiteral('EC2_AGENT_MANAGEMENT'),
      );

  static const List<GuarddutyMemberDetectorFeatureAdditionalConfigurationName>
  values = [eksAddonManagement, ecsFargateAgentManagement, ec2AgentManagement];
}

/// `status` — derived from the provider schema description.
extension type const GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus.variable(
    String name,
  ) : this._(TfArg.variable(name));
  GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus._(
        TfArgLiteral('ENABLED'),
      );
  static const disabled =
      GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus._(
        TfArgLiteral('DISABLED'),
      );

  static const List<GuarddutyMemberDetectorFeatureAdditionalConfigurationStatus>
  values = [enabled, disabled];
}

/// Factory wrapper for `aws_guardduty_member_detector_feature`.
final class AwsGuarddutyMemberDetectorFeature extends Resource {
  static const String tfType = 'aws_guardduty_member_detector_feature';

  AwsGuarddutyMemberDetectorFeature(
    super.localName, {
    required TfArg<String> accountId,
    required TfArg<String> detectorId,
    required GuarddutyMemberDetectorFeatureName name,
    TfArg<String>? region,
    required GuarddutyMemberDetectorFeatureStatus status,
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
