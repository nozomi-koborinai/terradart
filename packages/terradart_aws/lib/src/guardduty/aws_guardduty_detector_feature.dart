// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_detector_feature`.
const Set<String> _awsGuarddutyDetectorFeatureSensitive = <String>{};

/// Guardduty Detector Feature enum for `name`.
extension type const GuarddutyDetectorFeatureName._(TfArg<String> _)
    implements TfArg<String> {
  GuarddutyDetectorFeatureName.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyDetectorFeatureName.expression(String template)
    : this._(TfArg.expression(template));
  const GuarddutyDetectorFeatureName.arg(TfArg<String> arg) : this._(arg);

  static const s3DataEvents = GuarddutyDetectorFeatureName._(
    TfArgLiteral('S3_DATA_EVENTS'),
  );
  static const eksAuditLogs = GuarddutyDetectorFeatureName._(
    TfArgLiteral('EKS_AUDIT_LOGS'),
  );
  static const ebsMalwareProtection = GuarddutyDetectorFeatureName._(
    TfArgLiteral('EBS_MALWARE_PROTECTION'),
  );
  static const rdsLoginEvents = GuarddutyDetectorFeatureName._(
    TfArgLiteral('RDS_LOGIN_EVENTS'),
  );
  static const lambdaNetworkLogs = GuarddutyDetectorFeatureName._(
    TfArgLiteral('LAMBDA_NETWORK_LOGS'),
  );
  static const eksRuntimeMonitoring = GuarddutyDetectorFeatureName._(
    TfArgLiteral('EKS_RUNTIME_MONITORING'),
  );
  static const runtimeMonitoring = GuarddutyDetectorFeatureName._(
    TfArgLiteral('RUNTIME_MONITORING'),
  );
  static const aiProtection = GuarddutyDetectorFeatureName._(
    TfArgLiteral('AI_PROTECTION'),
  );
  static const aiAnalyst = GuarddutyDetectorFeatureName._(
    TfArgLiteral('AI_ANALYST'),
  );

  static const List<GuarddutyDetectorFeatureName> values = [
    s3DataEvents,
    eksAuditLogs,
    ebsMalwareProtection,
    rdsLoginEvents,
    lambdaNetworkLogs,
    eksRuntimeMonitoring,
    runtimeMonitoring,
    aiProtection,
    aiAnalyst,
  ];
}

/// Guardduty Detector Feature enum for `status`.
extension type const GuarddutyDetectorFeatureStatus._(TfArg<String> _)
    implements TfArg<String> {
  GuarddutyDetectorFeatureStatus.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyDetectorFeatureStatus.expression(String template)
    : this._(TfArg.expression(template));
  const GuarddutyDetectorFeatureStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = GuarddutyDetectorFeatureStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = GuarddutyDetectorFeatureStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<GuarddutyDetectorFeatureStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_detector_feature` (derived from provider schema).
@immutable
final class GuarddutyDetectorFeatureAdditionalConfiguration {
  const GuarddutyDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  final GuarddutyDetectorFeatureAdditionalConfigurationName name;

  final GuarddutyDetectorFeatureAdditionalConfigurationStatus status;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const GuarddutyDetectorFeatureAdditionalConfigurationName._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyDetectorFeatureAdditionalConfigurationName.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyDetectorFeatureAdditionalConfigurationName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyDetectorFeatureAdditionalConfigurationName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const eksAddonManagement =
      GuarddutyDetectorFeatureAdditionalConfigurationName._(
        TfArgLiteral('EKS_ADDON_MANAGEMENT'),
      );
  static const ecsFargateAgentManagement =
      GuarddutyDetectorFeatureAdditionalConfigurationName._(
        TfArgLiteral('ECS_FARGATE_AGENT_MANAGEMENT'),
      );
  static const ec2AgentManagement =
      GuarddutyDetectorFeatureAdditionalConfigurationName._(
        TfArgLiteral('EC2_AGENT_MANAGEMENT'),
      );

  static const List<GuarddutyDetectorFeatureAdditionalConfigurationName>
  values = [eksAddonManagement, ecsFargateAgentManagement, ec2AgentManagement];
}

/// `status` — derived from the provider schema description.
extension type const GuarddutyDetectorFeatureAdditionalConfigurationStatus._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyDetectorFeatureAdditionalConfigurationStatus.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyDetectorFeatureAdditionalConfigurationStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyDetectorFeatureAdditionalConfigurationStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      GuarddutyDetectorFeatureAdditionalConfigurationStatus._(
        TfArgLiteral('ENABLED'),
      );
  static const disabled =
      GuarddutyDetectorFeatureAdditionalConfigurationStatus._(
        TfArgLiteral('DISABLED'),
      );

  static const List<GuarddutyDetectorFeatureAdditionalConfigurationStatus>
  values = [enabled, disabled];
}

/// Factory wrapper for `aws_guardduty_detector_feature`.
final class AwsGuarddutyDetectorFeature extends Resource {
  static const String tfType = 'aws_guardduty_detector_feature';

  AwsGuarddutyDetectorFeature(
    super.localName, {
    required TfArg<String> detectorId,
    required GuarddutyDetectorFeatureName name,
    TfArg<String>? region,
    required GuarddutyDetectorFeatureStatus status,
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
           'region': ?region,
           'status': status,
           if (additionalConfiguration != null)
             'additional_configuration': TfArg.literal([
               for (final e in additionalConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyDetectorFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyDetectorFeature>`.
  RefTo<AwsGuarddutyDetectorFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorId => TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
