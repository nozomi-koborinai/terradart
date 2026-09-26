// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? formats;

  final TfArg<String> s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  Map<String, Object?> encode() => {
    if (formats != null) 'formats': formats!.toTfJson(),
    's3_bucket_name': s3BucketName.toTfJson(),
    if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix!.toTfJson(),
  };
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

  final TfArg<List<Object?>>? accounts;

  final TfArg<List<Object?>>? frameworkArns;

  final TfArg<num>? numberOfFrameworks;

  final TfArg<List<Object?>>? organizationUnits;

  final TfArg<List<Object?>>? regions;

  final TfArg<String> reportTemplate;

  Map<String, Object?> encode() => {
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    if (frameworkArns != null) 'framework_arns': frameworkArns!.toTfJson(),
    if (numberOfFrameworks != null)
      'number_of_frameworks': numberOfFrameworks!.toTfJson(),
    if (organizationUnits != null)
      'organization_units': organizationUnits!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
    'report_template': reportTemplate.toTfJson(),
  };
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
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'report_delivery_channel': TfArg.literal(
             reportDeliveryChannel.encode(),
           ),
           'report_setting': TfArg.literal(reportSetting.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupReportPlanSensitive;

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
}
