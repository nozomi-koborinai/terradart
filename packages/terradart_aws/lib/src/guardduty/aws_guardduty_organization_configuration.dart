// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_organization_configuration`.
const Set<String> _awsGuarddutyOrganizationConfigurationSensitive = <String>{};

/// Typed helper for the `datasources` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasources {
  const GuarddutyOrganizationConfigurationDatasources({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  final GuarddutyOrganizationConfigurationDatasourcesKubernetes? kubernetes;

  final GuarddutyOrganizationConfigurationDatasourcesMalwareProtection?
  malwareProtection;

  final GuarddutyOrganizationConfigurationDatasourcesS3Logs? s3Logs;

  Map<String, Object?> encode() => {
    if (kubernetes != null) 'kubernetes': kubernetes!.encode(),
    if (malwareProtection != null)
      'malware_protection': malwareProtection!.encode(),
    if (s3Logs != null) 's3_logs': s3Logs!.encode(),
  };
}

/// Typed helper for the `datasources.kubernetes` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasourcesKubernetes {
  const GuarddutyOrganizationConfigurationDatasourcesKubernetes({
    required this.auditLogs,
  });

  final GuarddutyOrganizationConfigurationDatasourcesKubernetesAuditLogs
  auditLogs;

  Map<String, Object?> encode() => {'audit_logs': auditLogs.encode()};
}

/// Typed helper for the `datasources.kubernetes.audit_logs` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasourcesKubernetesAuditLogs {
  const GuarddutyOrganizationConfigurationDatasourcesKubernetesAuditLogs({
    required this.enable,
  });

  final TfArg<bool> enable;

  Map<String, Object?> encode() => {'enable': enable.toTfJson()};
}

/// Typed helper for the `datasources.malware_protection` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasourcesMalwareProtection {
  const GuarddutyOrganizationConfigurationDatasourcesMalwareProtection({
    required this.scanEc2InstanceWithFindings,
  });

  final GuarddutyOrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindings
  scanEc2InstanceWithFindings;

  Map<String, Object?> encode() => {
    'scan_ec2_instance_with_findings': scanEc2InstanceWithFindings.encode(),
  };
}

/// Typed helper for the `datasources.malware_protection.scan_ec2_instance_with_findings` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindings {
  const GuarddutyOrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindings({
    required this.ebsVolumes,
  });

  final GuarddutyOrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumes
  ebsVolumes;

  Map<String, Object?> encode() => {'ebs_volumes': ebsVolumes.encode()};
}

/// Typed helper for the `datasources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumes {
  const GuarddutyOrganizationConfigurationDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumes({
    required this.autoEnable,
  });

  final TfArg<bool> autoEnable;

  Map<String, Object?> encode() => {'auto_enable': autoEnable.toTfJson()};
}

/// Typed helper for the `datasources.s3_logs` block of
/// `aws_guardduty_organization_configuration` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationDatasourcesS3Logs {
  const GuarddutyOrganizationConfigurationDatasourcesS3Logs({
    required this.autoEnable,
  });

  final TfArg<bool> autoEnable;

  Map<String, Object?> encode() => {'auto_enable': autoEnable.toTfJson()};
}

/// Factory wrapper for `aws_guardduty_organization_configuration`.
final class AwsGuarddutyOrganizationConfiguration extends Resource {
  static const String tfType = 'aws_guardduty_organization_configuration';

  AwsGuarddutyOrganizationConfiguration({
    required super.localName,
    required TfArg<String> autoEnableOrganizationMembers,
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
           if (region != null) 'region': region,
           if (datasources != null)
             'datasources': TfArg.literal(datasources.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGuarddutyOrganizationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
