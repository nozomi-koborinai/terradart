// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_datasync_task`.
const Set<String> _awsDatasyncTaskSensitive = <String>{};

/// Datasync Task Task enum for `task_mode`.
enum DatasyncTaskTaskMode implements TerraformEnum {
  basic('BASIC'),
  enhanced('ENHANCED');

  const DatasyncTaskTaskMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `excludes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskExcludes {
  const DatasyncTaskExcludes({this.filterType, this.value});

  final TfArg<DatasyncTaskExcludesFilterType>? filterType;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'filter_type': ?filterType?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum DatasyncTaskExcludesFilterType implements TerraformEnum {
  simplePattern('SIMPLE_PATTERN');

  const DatasyncTaskExcludesFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `includes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskIncludes {
  const DatasyncTaskIncludes({this.filterType, this.value});

  final TfArg<DatasyncTaskIncludesFilterType>? filterType;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'filter_type': ?filterType?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
enum DatasyncTaskIncludesFilterType implements TerraformEnum {
  simplePattern('SIMPLE_PATTERN');

  const DatasyncTaskIncludesFilterType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<DatasyncTaskOptionsAtime>? atime;

  final TfArg<num>? bytesPerSecond;

  final TfArg<DatasyncTaskOptionsGid>? gid;

  final TfArg<DatasyncTaskOptionsLogLevel>? logLevel;

  final TfArg<DatasyncTaskOptionsMtime>? mtime;

  final TfArg<DatasyncTaskOptionsObjectTags>? objectTags;

  final TfArg<DatasyncTaskOptionsOverwriteMode>? overwriteMode;

  final TfArg<DatasyncTaskOptionsPosixPermissions>? posixPermissions;

  final TfArg<DatasyncTaskOptionsPreserveDeletedFiles>? preserveDeletedFiles;

  final TfArg<DatasyncTaskOptionsPreserveDevices>? preserveDevices;

  final TfArg<DatasyncTaskOptionsSecurityDescriptorCopyFlags>?
  securityDescriptorCopyFlags;

  final TfArg<DatasyncTaskOptionsTaskQueueing>? taskQueueing;

  final TfArg<DatasyncTaskOptionsTransferMode>? transferMode;

  final TfArg<DatasyncTaskOptionsUid>? uid;

  final TfArg<DatasyncTaskOptionsVerifyMode>? verifyMode;

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
enum DatasyncTaskOptionsAtime implements TerraformEnum {
  none('NONE'),
  bestEffort('BEST_EFFORT');

  const DatasyncTaskOptionsAtime(this.terraformValue);
  @override
  final String terraformValue;
}

/// `gid` — derived from the provider schema description.
enum DatasyncTaskOptionsGid implements TerraformEnum {
  none('NONE'),
  intValue('INT_VALUE'),
  name('NAME'),
  both('BOTH');

  const DatasyncTaskOptionsGid(this.terraformValue);
  @override
  final String terraformValue;
}

/// `log_level` — derived from the provider schema description.
enum DatasyncTaskOptionsLogLevel implements TerraformEnum {
  off('OFF'),
  basic('BASIC'),
  transfer('TRANSFER');

  const DatasyncTaskOptionsLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mtime` — derived from the provider schema description.
enum DatasyncTaskOptionsMtime implements TerraformEnum {
  none('NONE'),
  preserve('PRESERVE');

  const DatasyncTaskOptionsMtime(this.terraformValue);
  @override
  final String terraformValue;
}

/// `object_tags` — derived from the provider schema description.
enum DatasyncTaskOptionsObjectTags implements TerraformEnum {
  preserve('PRESERVE'),
  none('NONE');

  const DatasyncTaskOptionsObjectTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// `overwrite_mode` — derived from the provider schema description.
enum DatasyncTaskOptionsOverwriteMode implements TerraformEnum {
  always('ALWAYS'),
  never('NEVER');

  const DatasyncTaskOptionsOverwriteMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `posix_permissions` — derived from the provider schema description.
enum DatasyncTaskOptionsPosixPermissions implements TerraformEnum {
  none('NONE'),
  preserve('PRESERVE');

  const DatasyncTaskOptionsPosixPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// `preserve_deleted_files` — derived from the provider schema description.
enum DatasyncTaskOptionsPreserveDeletedFiles implements TerraformEnum {
  preserve('PRESERVE'),
  remove('REMOVE');

  const DatasyncTaskOptionsPreserveDeletedFiles(this.terraformValue);
  @override
  final String terraformValue;
}

/// `preserve_devices` — derived from the provider schema description.
enum DatasyncTaskOptionsPreserveDevices implements TerraformEnum {
  none('NONE'),
  preserve('PRESERVE');

  const DatasyncTaskOptionsPreserveDevices(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_descriptor_copy_flags` — derived from the provider schema description.
enum DatasyncTaskOptionsSecurityDescriptorCopyFlags implements TerraformEnum {
  none('NONE'),
  ownerDacl('OWNER_DACL'),
  ownerDaclSacl('OWNER_DACL_SACL');

  const DatasyncTaskOptionsSecurityDescriptorCopyFlags(this.terraformValue);
  @override
  final String terraformValue;
}

/// `task_queueing` — derived from the provider schema description.
enum DatasyncTaskOptionsTaskQueueing implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DatasyncTaskOptionsTaskQueueing(this.terraformValue);
  @override
  final String terraformValue;
}

/// `transfer_mode` — derived from the provider schema description.
enum DatasyncTaskOptionsTransferMode implements TerraformEnum {
  changed('CHANGED'),
  all('ALL');

  const DatasyncTaskOptionsTransferMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `uid` — derived from the provider schema description.
enum DatasyncTaskOptionsUid implements TerraformEnum {
  none('NONE'),
  intValue('INT_VALUE'),
  name('NAME'),
  both('BOTH');

  const DatasyncTaskOptionsUid(this.terraformValue);
  @override
  final String terraformValue;
}

/// `verify_mode` — derived from the provider schema description.
enum DatasyncTaskOptionsVerifyMode implements TerraformEnum {
  pointInTimeConsistent('POINT_IN_TIME_CONSISTENT'),
  onlyFilesTransferred('ONLY_FILES_TRANSFERRED'),
  none('NONE');

  const DatasyncTaskOptionsVerifyMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schedule` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskSchedule {
  const DatasyncTaskSchedule({required this.scheduleExpression, this.status});

  final TfArg<String> scheduleExpression;

  final TfArg<DatasyncTaskScheduleStatus>? status;

  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum DatasyncTaskScheduleStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DatasyncTaskScheduleStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task_report_config` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskTaskReportConfig {
  const DatasyncTaskTaskReportConfig({
    this.outputType,
    this.reportLevel,
    this.s3ObjectVersioning,
    this.reportOverrides,
    required this.s3Destination,
  });

  final TfArg<DatasyncTaskTaskReportConfigOutputType>? outputType;

  final TfArg<DatasyncTaskTaskReportConfigReportLevel>? reportLevel;

  final TfArg<DatasyncTaskTaskReportConfigS3ObjectVersioning>?
  s3ObjectVersioning;

  final DatasyncTaskTaskReportConfigReportOverrides? reportOverrides;

  final DatasyncTaskTaskReportConfigS3Destination s3Destination;

  Map<String, Object?> encode() => {
    'output_type': ?outputType?.toTfJson(),
    'report_level': ?reportLevel?.toTfJson(),
    's3_object_versioning': ?s3ObjectVersioning?.toTfJson(),
    'report_overrides': ?reportOverrides?.encode(),
    's3_destination': s3Destination.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigOutputType implements TerraformEnum {
  summaryOnly('SUMMARY_ONLY'),
  standard('STANDARD');

  const DatasyncTaskTaskReportConfigOutputType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `report_level` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigReportLevel implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskTaskReportConfigReportLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3_object_versioning` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigS3ObjectVersioning implements TerraformEnum {
  include('INCLUDE'),
  none('NONE');

  const DatasyncTaskTaskReportConfigS3ObjectVersioning(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task_report_config.report_overrides` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskTaskReportConfigReportOverrides {
  const DatasyncTaskTaskReportConfigReportOverrides({
    this.deletedOverride,
    this.skippedOverride,
    this.transferredOverride,
    this.verifiedOverride,
  });

  final TfArg<DatasyncTaskTaskReportConfigReportOverridesDeletedOverride>?
  deletedOverride;

  final TfArg<DatasyncTaskTaskReportConfigReportOverridesSkippedOverride>?
  skippedOverride;

  final TfArg<DatasyncTaskTaskReportConfigReportOverridesTransferredOverride>?
  transferredOverride;

  final TfArg<DatasyncTaskTaskReportConfigReportOverridesVerifiedOverride>?
  verifiedOverride;

  Map<String, Object?> encode() => {
    'deleted_override': ?deletedOverride?.toTfJson(),
    'skipped_override': ?skippedOverride?.toTfJson(),
    'transferred_override': ?transferredOverride?.toTfJson(),
    'verified_override': ?verifiedOverride?.toTfJson(),
  };
}

/// `deleted_override` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigReportOverridesDeletedOverride
    implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskTaskReportConfigReportOverridesDeletedOverride(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `skipped_override` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigReportOverridesSkippedOverride
    implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskTaskReportConfigReportOverridesSkippedOverride(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `transferred_override` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigReportOverridesTransferredOverride
    implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskTaskReportConfigReportOverridesTransferredOverride(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `verified_override` — derived from the provider schema description.
enum DatasyncTaskTaskReportConfigReportOverridesVerifiedOverride
    implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  successesAndErrors('SUCCESSES_AND_ERRORS');

  const DatasyncTaskTaskReportConfigReportOverridesVerifiedOverride(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `task_report_config.s3_destination` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskTaskReportConfigS3Destination {
  const DatasyncTaskTaskReportConfigS3Destination({
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

  AwsDatasyncTask({
    required super.localName,
    RefTo<AwsCloudwatchLogGroup>? cloudwatchLogGroupArn,
    required TfArg<String> destinationLocationArn,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> sourceLocationArn,
    TfArg<Map<String, String>>? tags,
    TfArg<DatasyncTaskTaskMode>? taskMode,
    DatasyncTaskExcludes? excludes,
    DatasyncTaskIncludes? includes,
    DatasyncTaskOptions? options,
    DatasyncTaskSchedule? schedule,
    DatasyncTaskTaskReportConfig? taskReportConfig,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cloudwatch_log_group_arn` attribute.
  TfRef<String> get cloudwatchLogGroupArnRef =>
      TfRef.attribute<String>(this, 'cloudwatch_log_group_arn');

  /// Reference to `destination_location_arn` attribute.
  TfRef<String> get destinationLocationArnRef =>
      TfRef.attribute<String>(this, 'destination_location_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_location_arn` attribute.
  TfRef<String> get sourceLocationArnRef =>
      TfRef.attribute<String>(this, 'source_location_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_mode` attribute.
  TfRef<String> get taskModeRef => TfRef.attribute<String>(this, 'task_mode');
}
