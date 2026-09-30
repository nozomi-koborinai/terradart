// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_backup_report_plan`.
const Set<String> _awsBackupReportPlanSensitive = <String>{};

/// Typed helper for the `report_delivery_channel` block of
/// `aws_backup_report_plan` (derived from provider schema).
@immutable
final class BackupReportPlanReportDeliveryChannel {
  const BackupReportPlanReportDeliveryChannel({
    this.formats,
    required this.s3BucketName,
    this.s3KeyPrefix,
  });

  final List<TfArg<BackupReportPlanReportDeliveryChannelFormats>>? formats;

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  Map<String, Object?> encode() => {
    if (formats != null) 'formats': [for (final e in formats!) e.toTfJson()],
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_key_prefix': ?s3KeyPrefix?.toTfJson(),
  };
}

/// `formats` — derived from the provider schema description.
enum BackupReportPlanReportDeliveryChannelFormats implements TerraformEnum {
  csv('CSV'),
  json('JSON');

  const BackupReportPlanReportDeliveryChannelFormats(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `report_setting` block of
/// `aws_backup_report_plan` (derived from provider schema).
@immutable
final class BackupReportPlanReportSetting {
  const BackupReportPlanReportSetting({
    this.accounts,
    this.frameworkArns,
    this.numberOfFrameworks,
    this.organizationUnits,
    this.regions,
    required this.reportTemplate,
  });

  final TfArg<List<String>>? accounts;

  final TfArg<List<String>>? frameworkArns;

  final TfArg<num>? numberOfFrameworks;

  final TfArg<List<String>>? organizationUnits;

  final TfArg<List<String>>? regions;

  final TfArg<BackupReportPlanReportSettingReportTemplate> reportTemplate;

  Map<String, Object?> encode() => {
    'accounts': ?accounts?.toTfJson(),
    'framework_arns': ?frameworkArns?.toTfJson(),
    'number_of_frameworks': ?numberOfFrameworks?.toTfJson(),
    'organization_units': ?organizationUnits?.toTfJson(),
    'regions': ?regions?.toTfJson(),
    'report_template': reportTemplate.toTfJson(),
  };
}

/// `report_template` — derived from the provider schema description.
enum BackupReportPlanReportSettingReportTemplate implements TerraformEnum {
  backupJobReport('BACKUP_JOB_REPORT'),
  controlComplianceReport('CONTROL_COMPLIANCE_REPORT'),
  copyJobReport('COPY_JOB_REPORT'),
  resourceComplianceReport('RESOURCE_COMPLIANCE_REPORT'),
  restoreJobReport('RESTORE_JOB_REPORT');

  const BackupReportPlanReportSettingReportTemplate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_backup_report_plan`.
final class AwsBackupReportPlan extends Resource {
  static const String tfType = 'aws_backup_report_plan';

  AwsBackupReportPlan({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required BackupReportPlanReportDeliveryChannel reportDeliveryChannel,
    required BackupReportPlanReportSetting reportSetting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'report_delivery_channel': TfArg.literal(
             reportDeliveryChannel.encode(),
           ),
           'report_setting': TfArg.literal(reportSetting.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupReportPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupReportPlan>`.
  RefTo<AwsBackupReportPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `deployment_status` attribute.
  TfRef<String> get deploymentStatus =>
      TfRef.attribute<String>(this, 'deployment_status');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
