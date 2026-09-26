// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_detector`.
const Set<String> _awsGuarddutyDetectorSensitive = <String>{};

/// Typed helper for the `datasources` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasources {
  const GuarddutyDetectorDatasources({
    this.kubernetes,
    this.malwareProtection,
    this.s3Logs,
  });

  final GuarddutyDetectorDatasourcesKubernetes? kubernetes;

  final GuarddutyDetectorDatasourcesMalwareProtection? malwareProtection;

  final GuarddutyDetectorDatasourcesS3Logs? s3Logs;

  Map<String, Object?> encode() => {
    if (kubernetes != null) 'kubernetes': kubernetes!.encode(),
    if (malwareProtection != null)
      'malware_protection': malwareProtection!.encode(),
    if (s3Logs != null) 's3_logs': s3Logs!.encode(),
  };
}

/// Typed helper for the `datasources.kubernetes` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasourcesKubernetes {
  const GuarddutyDetectorDatasourcesKubernetes({required this.auditLogs});

  final GuarddutyDetectorDatasourcesKubernetesAuditLogs auditLogs;

  Map<String, Object?> encode() => {'audit_logs': auditLogs.encode()};
}

/// Typed helper for the `datasources.kubernetes.audit_logs` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasourcesKubernetesAuditLogs {
  const GuarddutyDetectorDatasourcesKubernetesAuditLogs({required this.enable});

  final TfArg<bool> enable;

  Map<String, Object?> encode() => {'enable': enable.toTfJson()};
}

/// Typed helper for the `datasources.malware_protection` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasourcesMalwareProtection {
  const GuarddutyDetectorDatasourcesMalwareProtection({
    required this.scanEc2InstanceWithFindings,
  });

  final GuarddutyDetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindings
  scanEc2InstanceWithFindings;

  Map<String, Object?> encode() => {
    'scan_ec2_instance_with_findings': scanEc2InstanceWithFindings.encode(),
  };
}

/// Typed helper for the `datasources.malware_protection.scan_ec2_instance_with_findings` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindings {
  const GuarddutyDetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindings({
    required this.ebsVolumes,
  });

  final GuarddutyDetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumes
  ebsVolumes;

  Map<String, Object?> encode() => {'ebs_volumes': ebsVolumes.encode()};
}

/// Typed helper for the `datasources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumes {
  const GuarddutyDetectorDatasourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumes({
    required this.enable,
  });

  final TfArg<bool> enable;

  Map<String, Object?> encode() => {'enable': enable.toTfJson()};
}

/// Typed helper for the `datasources.s3_logs` block of
/// `aws_guardduty_detector` (derived from provider schema).
@immutable
final class GuarddutyDetectorDatasourcesS3Logs {
  const GuarddutyDetectorDatasourcesS3Logs({required this.enable});

  final TfArg<bool> enable;

  Map<String, Object?> encode() => {'enable': enable.toTfJson()};
}

/// Factory wrapper for `aws_guardduty_detector`.
final class AwsGuarddutyDetector extends Resource {
  static const String tfType = 'aws_guardduty_detector';

  AwsGuarddutyDetector({
    required super.localName,
    TfArg<bool>? enable,
    TfArg<String>? findingPublishingFrequency,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    GuarddutyDetectorDatasources? datasources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enable != null) 'enable': enable,
           if (findingPublishingFrequency != null)
             'finding_publishing_frequency': findingPublishingFrequency,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (datasources != null)
             'datasources': TfArg.literal(datasources.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyDetectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
