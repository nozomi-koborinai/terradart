// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_report_plan`.
const Set<String> _awsBackupReportPlanSensitive = <String>{};

/// Factory wrapper for `aws_backup_report_plan`.
final class DataAwsBackupReportPlan extends Data {
  static const String tfType = 'aws_backup_report_plan';

  DataAwsBackupReportPlan({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `report_delivery_channel` attribute.
  TfRef<List<Map<String, Object?>>> get reportDeliveryChannel =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'report_delivery_channel',
      );

  /// Reference to `report_setting` attribute.
  TfRef<List<Map<String, Object?>>> get reportSetting =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'report_setting');
}
