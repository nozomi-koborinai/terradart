// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_organization_configuration_feature`.
const Set<String> _awsGuarddutyOrganizationConfigurationFeatureSensitive =
    <String>{};

/// Guardduty Organization Configuration Feature Auto enum for `auto_enable`.
extension type const GuarddutyOrganizationConfigurationFeatureAutoEnable._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyOrganizationConfigurationFeatureAutoEnable.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyOrganizationConfigurationFeatureAutoEnable.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyOrganizationConfigurationFeatureAutoEnable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const newCase = GuarddutyOrganizationConfigurationFeatureAutoEnable._(
    TfArgLiteral('NEW'),
  );
  static const none = GuarddutyOrganizationConfigurationFeatureAutoEnable._(
    TfArgLiteral('NONE'),
  );
  static const all = GuarddutyOrganizationConfigurationFeatureAutoEnable._(
    TfArgLiteral('ALL'),
  );

  static const List<GuarddutyOrganizationConfigurationFeatureAutoEnable>
  values = [newCase, none, all];
}

/// Guardduty Organization Configuration Feature enum for `name`.
extension type const GuarddutyOrganizationConfigurationFeatureName._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyOrganizationConfigurationFeatureName.variable(String name)
    : this._(TfArg.variable(name));
  GuarddutyOrganizationConfigurationFeatureName.expression(String template)
    : this._(TfArg.expression(template));
  const GuarddutyOrganizationConfigurationFeatureName.arg(TfArg<String> arg)
    : this._(arg);

  static const s3DataEvents = GuarddutyOrganizationConfigurationFeatureName._(
    TfArgLiteral('S3_DATA_EVENTS'),
  );
  static const eksAuditLogs = GuarddutyOrganizationConfigurationFeatureName._(
    TfArgLiteral('EKS_AUDIT_LOGS'),
  );
  static const ebsMalwareProtection =
      GuarddutyOrganizationConfigurationFeatureName._(
        TfArgLiteral('EBS_MALWARE_PROTECTION'),
      );
  static const rdsLoginEvents = GuarddutyOrganizationConfigurationFeatureName._(
    TfArgLiteral('RDS_LOGIN_EVENTS'),
  );
  static const lambdaNetworkLogs =
      GuarddutyOrganizationConfigurationFeatureName._(
        TfArgLiteral('LAMBDA_NETWORK_LOGS'),
      );
  static const eksRuntimeMonitoring =
      GuarddutyOrganizationConfigurationFeatureName._(
        TfArgLiteral('EKS_RUNTIME_MONITORING'),
      );
  static const runtimeMonitoring =
      GuarddutyOrganizationConfigurationFeatureName._(
        TfArgLiteral('RUNTIME_MONITORING'),
      );
  static const aiProtection = GuarddutyOrganizationConfigurationFeatureName._(
    TfArgLiteral('AI_PROTECTION'),
  );

  static const List<GuarddutyOrganizationConfigurationFeatureName> values = [
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

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_organization_configuration_feature` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration {
  const GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration({
    required this.autoEnable,
    required this.name,
  });

  final GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable
  autoEnable;

  final GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName
  name;

  @internal
  Map<String, Object?> encode() => {
    'auto_enable': autoEnable.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `auto_enable` — derived from the provider schema description.
extension type const GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable.variable(
    String name,
  ) : this._(TfArg.variable(name));
  GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const newCase =
      GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable._(
        TfArgLiteral('NEW'),
      );
  static const none =
      GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable._(
        TfArgLiteral('NONE'),
      );
  static const all =
      GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable._(
        TfArgLiteral('ALL'),
      );

  static const List<
    GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationAutoEnable
  >
  values = [newCase, none, all];
}

/// `name` — derived from the provider schema description.
extension type const GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName.variable(
    String name,
  ) : this._(TfArg.variable(name));
  GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const eksAddonManagement =
      GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName._(
        TfArgLiteral('EKS_ADDON_MANAGEMENT'),
      );
  static const ecsFargateAgentManagement =
      GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName._(
        TfArgLiteral('ECS_FARGATE_AGENT_MANAGEMENT'),
      );
  static const ec2AgentManagement =
      GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName._(
        TfArgLiteral('EC2_AGENT_MANAGEMENT'),
      );

  static const List<
    GuarddutyOrganizationConfigurationFeatureAdditionalConfigurationName
  >
  values = [eksAddonManagement, ecsFargateAgentManagement, ec2AgentManagement];
}

/// Factory wrapper for `aws_guardduty_organization_configuration_feature`.
final class AwsGuarddutyOrganizationConfigurationFeature extends Resource {
  static const String tfType =
      'aws_guardduty_organization_configuration_feature';

  AwsGuarddutyOrganizationConfigurationFeature(
    super.localName, {
    required GuarddutyOrganizationConfigurationFeatureAutoEnable autoEnable,
    required TfArg<String> detectorId,
    required GuarddutyOrganizationConfigurationFeatureName name,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_enable` attribute.
  TfRef<String> get autoEnable => TfRef.attribute<String>(this, 'auto_enable');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorId => TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
