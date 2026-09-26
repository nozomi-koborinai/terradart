// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_export_task`.
const Set<String> _awsRdsExportTaskSensitive = <String>{};

/// Factory wrapper for `aws_rds_export_task`.
final class AwsRdsExportTask extends Resource {
  static const String tfType = 'aws_rds_export_task';

  AwsRdsExportTask({
    required super.localName,
    TfArg<List<String>>? exportOnly,
    required TfArg<String> exportTaskIdentifier,
    required TfArg<String> iamRoleArn,
    required TfArg<String> kmsKeyId,
    TfArg<String>? region,
    required TfArg<String> s3BucketName,
    TfArg<String>? s3Prefix,
    required TfArg<String> sourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (exportOnly != null) 'export_only': exportOnly,
           'export_task_identifier': exportTaskIdentifier,
           'iam_role_arn': iamRoleArn,
           'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           's3_bucket_name': s3BucketName,
           if (s3Prefix != null) 's3_prefix': s3Prefix,
           'source_arn': sourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsExportTaskSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_cause` attribute.
  TfRef<String> get failureCause =>
      TfRef.attribute<String>(this, 'failure_cause');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `snapshot_time` attribute.
  TfRef<String> get snapshotTime =>
      TfRef.attribute<String>(this, 'snapshot_time');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `task_end_time` attribute.
  TfRef<String> get taskEndTime =>
      TfRef.attribute<String>(this, 'task_end_time');

  /// Reference to `task_start_time` attribute.
  TfRef<String> get taskStartTime =>
      TfRef.attribute<String>(this, 'task_start_time');

  /// Reference to `warning_message` attribute.
  TfRef<String> get warningMessage =>
      TfRef.attribute<String>(this, 'warning_message');
}
