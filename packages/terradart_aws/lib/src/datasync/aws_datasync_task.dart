// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_datasync_task`.
const Set<String> _awsDatasyncTaskSensitive = <String>{};

/// Datasync Task enum for `task_mode`.
enum DatasyncTaskMode implements TerraformEnum {
  basic('BASIC'),
  enhanced('ENHANCED');

  const DatasyncTaskMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `excludes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskExcludes {
  const DatasyncTaskExcludes({this.filterType, this.value});

  final TfArg<DatasyncTaskFilterType>? filterType;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'filter_type': ?filterType?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum DatasyncTaskFilterType implements TerraformEnum {
  simplePattern('SIMPLE_PATTERN');

  const DatasyncTaskFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `includes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskIncludes {
  const DatasyncTaskIncludes({this.filterType, this.value});

  final TfArg<DatasyncTaskFilterType>? filterType;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'filter_type': ?filterType?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `options` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskOptions {
  const DatasyncTaskOptions({
    this.atime,
    this.bytesPerSecond,
    this.gid,
    this.logLevel,
    this.mtime,
    this.objectTags,
    this.overwriteMode,
    this.posixPermissions,
    this.preserveDeletedFiles,
    this.preserveDevices,
    this.securityDescriptorCopyFlags,
    this.taskQueueing,
    this.transferMode,
    this.uid,
    this.verifyMode,
  });

  final TfArg<DatasyncTaskAtime>? atime;

  final TfArg<num>? bytesPerSecond;

  final TfArg<DatasyncTaskGid>? gid;

  final TfArg<DatasyncTaskLogLevel>? logLevel;

  final TfArg<DatasyncTaskMtime>? mtime;

  final TfArg<DatasyncTaskObjectTags>? objectTags;

  final TfArg<DatasyncTaskOverwriteMode>? overwriteMode;

  final TfArg<DatasyncTaskPosixPermissions>? posixPermissions;

  final TfArg<DatasyncTaskPreserveDeletedFiles>? preserveDeletedFiles;

  final TfArg<DatasyncTaskPreserveDevices>? preserveDevices;

  final TfArg<DatasyncTaskSecurityDescriptorCopyFlags>?
  securityDescriptorCopyFlags;

  final TfArg<DatasyncTaskQueueing>? taskQueueing;

  final TfArg<DatasyncTaskTransferMode>? transferMode;

  final TfArg<DatasyncTaskUid>? uid;

  final TfArg<DatasyncTaskVerifyMode>? verifyMode;

  Map<String, Object?> encode() => {
    'atime': ?atime?.toTfJson(),
    'bytes_per_second': ?bytesPerSecond?.toTfJson(),
    'gid': ?gid?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
    'mtime': ?mtime?.toTfJson(),
    'object_tags': ?objectTags?.toTfJson(),
    'overwrite_mode': ?overwriteMode?.toTfJson(),
    'posix_permissions': ?posixPermissions?.toTfJson(),
    'preserve_deleted_files': ?preserveDeletedFiles?.toTfJson(),
    'preserve_devices': ?preserveDevices?.toTfJson(),
    'security_descriptor_copy_flags': ?securityDescriptorCopyFlags?.toTfJson(),
    'task_queueing': ?taskQueueing?.toTfJson(),
    'transfer_mode': ?transferMode?.toTfJson(),
    'uid': ?uid?.toTfJson(),
    'verify_mode': ?verifyMode?.toTfJson(),
  };
}

/// `atime` — derived from the provider schema description.
enum DatasyncTaskAtime implements TerraformEnum {
  none('NONE'),
  bestEffort('BEST_EFFORT');

  const DatasyncTaskAtime(this.terraformValue);
  @override
  final String terraformValue;
}

/// `gid` — derived from the provider schema description.
enum DatasyncTaskGid implements TerraformEnum {
  none('NONE'),
  intValue('INT_VALUE'),
  name('NAME'),
  both('BOTH');

  const DatasyncTaskGid(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_level` — derived from the provider schema description.
enum DatasyncTaskLogLevel implements TerraformEnum {
  off('OFF'),
  basic('BASIC'),
  transfer('TRANSFER');

  const DatasyncTaskLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mtime` — derived from the provider schema description.
enum DatasyncTaskMtime implements TerraformEnum {
  none('NONE'),
  preserve('PRESERVE');

  const DatasyncTaskMtime(this.terraformValue);
  @override
  final String terraformValue;
}

/// `object_tags` — derived from the provider schema description.
enum DatasyncTaskObjectTags implements TerraformEnum {
  preserve('PRESERVE'),
  none('NONE');

  const DatasyncTaskObjectTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// `overwrite_mode` — derived from the provider schema description.
enum DatasyncTaskOverwriteMode implements TerraformEnum {
  always('ALWAYS'),
  never('NEVER');

  const DatasyncTaskOverwriteMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `posix_permissions` — derived from the provider schema description.
enum DatasyncTaskPosixPermissions implements TerraformEnum {
  none('NONE'),
  preserve('PRESERVE');

  const DatasyncTaskPosixPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `preserve_deleted_files` — derived from the provider schema description.
enum DatasyncTaskPreserveDeletedFiles implements TerraformEnum {
  preserve('PRESERVE'),
  remove('REMOVE');

  const DatasyncTaskPreserveDeletedFiles(this.terraformValue);
  @override
  final String terraformValue;
}

/// `preserve_devices` — derived from the provider schema description.
enum DatasyncTaskPreserveDevices implements TerraformEnum {
  none('NONE'),
  preserve('PRESERVE');

  const DatasyncTaskPreserveDevices(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_descriptor_copy_flags` — derived from the provider schema description.
enum DatasyncTaskSecurityDescriptorCopyFlags implements TerraformEnum {
  none('NONE'),
  ownerDacl('OWNER_DACL'),
  ownerDaclSacl('OWNER_DACL_SACL');

  const DatasyncTaskSecurityDescriptorCopyFlags(this.terraformValue);
  @override
  final String terraformValue;
}

/// `task_queueing` — derived from the provider schema description.
enum DatasyncTaskQueueing implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DatasyncTaskQueueing(this.terraformValue);
  @override
  final String terraformValue;
}

/// `transfer_mode` — derived from the provider schema description.
enum DatasyncTaskTransferMode implements TerraformEnum {
  changed('CHANGED'),
  all('ALL');

  const DatasyncTaskTransferMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `uid` — derived from the provider schema description.
enum DatasyncTaskUid implements TerraformEnum {
  none('NONE'),
  intValue('INT_VALUE'),
  name('NAME'),
  both('BOTH');

  const DatasyncTaskUid(this.terraformValue);
  @override
  final String terraformValue;
}

/// `verify_mode` — derived from the provider schema description.
enum DatasyncTaskVerifyMode implements TerraformEnum {
  pointInTimeConsistent('POINT_IN_TIME_CONSISTENT'),
  onlyFilesTransferred('ONLY_FILES_TRANSFERRED'),
  none('NONE');

  const DatasyncTaskVerifyMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schedule` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskSchedule {
  const DatasyncTaskSchedule({required this.scheduleExpression, this.status});

  final TfArg<String> scheduleExpression;

  final TfArg<DatasyncTaskStatus>? status;

  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum DatasyncTaskStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DatasyncTaskStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task_report_config` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskReportConfig {
  const DatasyncTaskReportConfig({
    this.outputType,
    this.reportLevel,
    this.s3ObjectVersioning,
    this.reportOverrides,
    required this.s3Destination,
  });

  final TfArg<DatasyncTaskOutputType>? outputType;

  final TfArg<DatasyncTaskReportLevel>? reportLevel;

  final TfArg<DatasyncTaskS3ObjectVersioning>? s3ObjectVersioning;

  final DatasyncTaskReportOverrides? reportOverrides;

  final DatasyncTaskS3Destination s3Destination;

  Map<String, Object?> encode() => {
    'output_type': ?outputType?.toTfJson(),
    'report_level': ?reportLevel?.toTfJson(),
    's3_object_versioning': ?s3ObjectVersioning?.toTfJson(),
    'report_overrides': ?reportOverrides?.encode(),
    's3_destination': s3Destination.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
enum DatasyncTaskOutputType implements TerraformEnum {
  summaryOnly('SUMMARY_ONLY'),
  standard('STANDARD');

  const DatasyncTaskOutputType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `report_level` — derived from the provider schema description.
enum DatasyncTaskReportLevel implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskReportLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3_object_versioning` — derived from the provider schema description.
enum DatasyncTaskS3ObjectVersioning implements TerraformEnum {
  include('INCLUDE'),
  none('NONE');

  const DatasyncTaskS3ObjectVersioning(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task_report_config.report_overrides` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskReportOverrides {
  const DatasyncTaskReportOverrides({
    this.deletedOverride,
    this.skippedOverride,
    this.transferredOverride,
    this.verifiedOverride,
  });

  final TfArg<DatasyncTaskDeletedOverride>? deletedOverride;

  final TfArg<DatasyncTaskSkippedOverride>? skippedOverride;

  final TfArg<DatasyncTaskTransferredOverride>? transferredOverride;

  final TfArg<DatasyncTaskVerifiedOverride>? verifiedOverride;

  Map<String, Object?> encode() => {
    'deleted_override': ?deletedOverride?.toTfJson(),
    'skipped_override': ?skippedOverride?.toTfJson(),
    'transferred_override': ?transferredOverride?.toTfJson(),
    'verified_override': ?verifiedOverride?.toTfJson(),
  };
}

/// `deleted_override` — derived from the provider schema description.
enum DatasyncTaskDeletedOverride implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskDeletedOverride(this.terraformValue);
  @override
  final String terraformValue;
}

/// `skipped_override` — derived from the provider schema description.
enum DatasyncTaskSkippedOverride implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskSkippedOverride(this.terraformValue);
  @override
  final String terraformValue;
}

/// `transferred_override` — derived from the provider schema description.
enum DatasyncTaskTransferredOverride implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskTransferredOverride(this.terraformValue);
  @override
  final String terraformValue;
}

/// `verified_override` — derived from the provider schema description.
enum DatasyncTaskVerifiedOverride implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskVerifiedOverride(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task_report_config.s3_destination` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskS3Destination {
  const DatasyncTaskS3Destination({
    required this.bucketAccessRoleArn,
    required this.s3BucketArn,
    this.subdirectory,
  });

  final TfArg<String> bucketAccessRoleArn;

  final RefTo<AwsS3Bucket> s3BucketArn;

  final TfArg<String>? subdirectory;

  Map<String, Object?> encode() => {
    'bucket_access_role_arn': bucketAccessRoleArn.toTfJson(),
    's3_bucket_arn': s3BucketArn.encodeAs('arn').toTfJson(),
    'subdirectory': ?subdirectory?.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_task`.
final class AwsDatasyncTask extends Resource {
  static const String tfType = 'aws_datasync_task';

  AwsDatasyncTask(
    super.localName, {
    RefTo<AwsCloudwatchLogGroup>? cloudwatchLogGroupArn,
    required TfArg<String> destinationLocationArn,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> sourceLocationArn,
    TfArg<Map<String, String>>? tags,
    TfArg<DatasyncTaskMode>? taskMode,
    DatasyncTaskExcludes? excludes,
    DatasyncTaskIncludes? includes,
    DatasyncTaskOptions? options,
    DatasyncTaskSchedule? schedule,
    DatasyncTaskReportConfig? taskReportConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloudwatch_log_group_arn': ?cloudwatchLogGroupArn?.encodeAs('arn'),
           'destination_location_arn': destinationLocationArn,
           'name': ?name,
           'region': ?region,
           'source_location_arn': sourceLocationArn,
           'tags': ?tags,
           'task_mode': ?taskMode,
           if (excludes != null) 'excludes': TfArg.literal(excludes.encode()),
           if (includes != null) 'includes': TfArg.literal(includes.encode()),
           if (options != null) 'options': TfArg.literal(options.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
           if (taskReportConfig != null)
             'task_report_config': TfArg.literal(taskReportConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncTaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncTask>`.
  RefTo<AwsDatasyncTask> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cloudwatch_log_group_arn` attribute.
  TfRef<String> get cloudwatchLogGroupArn =>
      TfRef.attribute<String>(this, 'cloudwatch_log_group_arn');

  /// Reference to `destination_location_arn` attribute.
  TfRef<String> get destinationLocationArn =>
      TfRef.attribute<String>(this, 'destination_location_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_location_arn` attribute.
  TfRef<String> get sourceLocationArn =>
      TfRef.attribute<String>(this, 'source_location_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_mode` attribute.
  TfRef<String> get taskMode => TfRef.attribute<String>(this, 'task_mode');
}
