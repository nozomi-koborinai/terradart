// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_organization_configuration`.
const Set<String> _awsGuarddutyOrganizationConfigurationSensitive = <String>{};

/// Guardduty Organization Configuration Auto Enable Organization enum for `auto_enable_organization_members`.
extension type const GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers._(
  TfArg<String> _
) implements TfArg<String> {
  GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers.variable(
    String name,
  ) : this._(TfArg.variable(name));
  GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const newCase =
      GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers._(
        TfArgLiteral('NEW'),
      );
  static const all =
      GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers._(
        TfArgLiteral('ALL'),
      );
  static const none =
      GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers._(
        TfArgLiteral('NONE'),
      );

  static const List<
    GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers
  >
  values = [newCase, all, none];
}

/// Typed helper for the `datasources` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasources {
  const GuarddutyOrganizationConfigurationDatasources({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  final GuarddutyOrganizationConfigurationKubernetes? kubernetes;

  final GuarddutyOrganizationConfigurationMalwareProtection? malwareProtection;

  final GuarddutyOrganizationConfigurationS3Logs? s3Logs;

  Map<String, Object?> encode() => {
    'kubernetes': ?kubernetes?.encode(),
    'malware_protection': ?malwareProtection?.encode(),
    's3_logs': ?s3Logs?.encode(),
  };
}

/// Typed helper for the `datasources.kubernetes` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationKubernetes {
  const GuarddutyOrganizationConfigurationKubernetes({required this.auditLogs});

  final GuarddutyOrganizationConfigurationAuditLogs auditLogs;

  Map<String, Object?> encode() => {'audit_logs': auditLogs.encode()};
}

/// Typed helper for the `datasources.kubernetes.audit_logs` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationAuditLogs {
  const GuarddutyOrganizationConfigurationAuditLogs({required this.enable});

  final TfArg<bool> enable;

  Map<String, Object?> encode() => {'enable': enable.toTfJson()};
}

/// Typed helper for the `datasources.malware_protection` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationMalwareProtection {
  const GuarddutyOrganizationConfigurationMalwareProtection({
    required this.scanEc2InstanceWithFindings,
  });

  final GuarddutyOrganizationConfigurationScanEc2InstanceWithFindings
  scanEc2InstanceWithFindings;

  Map<String, Object?> encode() => {
    'scan_ec2_instance_with_findings': scanEc2InstanceWithFindings.encode(),
  };
}

/// Typed helper for the `datasources.malware_protection.scan_ec2_instance_with_findings` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationScanEc2InstanceWithFindings {
  const GuarddutyOrganizationConfigurationScanEc2InstanceWithFindings({
    required this.ebsVolumes,
  });

  final GuarddutyOrganizationConfigurationEbsVolumes ebsVolumes;

  Map<String, Object?> encode() => {'ebs_volumes': ebsVolumes.encode()};
}

/// Typed helper for the `datasources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationEbsVolumes {
  const GuarddutyOrganizationConfigurationEbsVolumes({
    required this.autoEnable,
  });

  final TfArg<bool> autoEnable;

  Map<String, Object?> encode() => {'auto_enable': autoEnable.toTfJson()};
}

/// Typed helper for the `datasources.s3_logs` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationS3Logs {
  const GuarddutyOrganizationConfigurationS3Logs({required this.autoEnable});

  final TfArg<bool> autoEnable;

  Map<String, Object?> encode() => {'auto_enable': autoEnable.toTfJson()};
}

/// Factory wrapper for `aws_guardduty_organization_configuration`.
final class AwsGuarddutyOrganizationConfiguration extends Resource {
  static const String tfType = 'aws_guardduty_organization_configuration';

  AwsGuarddutyOrganizationConfiguration(
    super.localName, {
    required GuarddutyOrganizationConfigurationAutoEnableOrganizationMembers
    autoEnableOrganizationMembers,
    required TfArg<String> detectorId,
    TfArg<String>? region,
    GuarddutyOrganizationConfigurationDatasources? datasources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable_organization_members': autoEnableOrganizationMembers,
           'detector_id': detectorId,
           'region': ?region,
           if (datasources != null)
             'datasources': TfArg.literal(datasources.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGuarddutyOrganizationConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyOrganizationConfiguration>`.
  RefTo<AwsGuarddutyOrganizationConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_enable_organization_members` attribute.
  TfRef<String> get autoEnableOrganizationMembers =>
      TfRef.attribute<String>(this, 'auto_enable_organization_members');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorId => TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
