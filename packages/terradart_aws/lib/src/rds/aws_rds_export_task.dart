// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_rds_export_task`.
const Set<String> _awsRdsExportTaskSensitive = <String>{};

/// Factory wrapper for `aws_rds_export_task`.
final class AwsRdsExportTask extends Resource {
  static const String tfType = 'aws_rds_export_task';

  AwsRdsExportTask({
    required super.localName,
    TfArg<List<String>>? exportOnly,
    required TfArg<String> exportTaskIdentifier,
    required RefTo<AwsIamRole> iamRoleArn,
    required RefTo<AwsKmsKey> kmsKeyId,
    TfArg<String>? region,
    required RefTo<AwsS3Bucket> s3BucketName,
    TfArg<String>? s3Prefix,
    required TfArg<String> sourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'export_only': ?exportOnly,
           'export_task_identifier': exportTaskIdentifier,
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'kms_key_id': kmsKeyId.encodeAs('arn'),
           'region': ?region,
           's3_bucket_name': s3BucketName.encodeAs('id'),
           's3_prefix': ?s3Prefix,
           'source_arn': sourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsExportTaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsExportTask>`.
  RefTo<AwsRdsExportTask> get ref => RefTo.of(this);

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

  /// Reference to `export_only` attribute.
  TfRef<List<String>> get exportOnly =>
      TfRef.attribute<List<String>>(this, 'export_only');

  /// Reference to `export_task_identifier` attribute.
  TfRef<String> get exportTaskIdentifier =>
      TfRef.attribute<String>(this, 'export_task_identifier');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_bucket_name` attribute.
  TfRef<String> get s3BucketName =>
      TfRef.attribute<String>(this, 's3_bucket_name');

  /// Reference to `s3_prefix` attribute.
  TfRef<String> get s3Prefix => TfRef.attribute<String>(this, 's3_prefix');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArn => TfRef.attribute<String>(this, 'source_arn');
}
