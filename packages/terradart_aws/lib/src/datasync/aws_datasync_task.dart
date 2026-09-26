// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_task`.
const Set<String> _awsDatasyncTaskSensitive = <String>{};

/// Typed helper for the `excludes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskExcludes {
  const DatasyncTaskExcludes({this.filterType, this.value});

  final TfArg<String>? filterType;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (filterType != null) 'filter_type': filterType!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `includes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskIncludes {
  const DatasyncTaskIncludes({this.filterType, this.value});

  final TfArg<String>? filterType;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (filterType != null) 'filter_type': filterType!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<String>? atime;

  final TfArg<num>? bytesPerSecond;

  final TfArg<String>? gid;

  final TfArg<String>? logLevel;

  final TfArg<String>? mtime;

  final TfArg<String>? objectTags;

  final TfArg<String>? overwriteMode;

  final TfArg<String>? posixPermissions;

  final TfArg<String>? preserveDeletedFiles;

  final TfArg<String>? preserveDevices;

  final TfArg<String>? securityDescriptorCopyFlags;

  final TfArg<String>? taskQueueing;

  final TfArg<String>? transferMode;

  final TfArg<String>? uid;

  final TfArg<String>? verifyMode;

  Map<String, Object?> encode() => {
    if (atime != null) 'atime': atime!.toTfJson(),
    if (bytesPerSecond != null) 'bytes_per_second': bytesPerSecond!.toTfJson(),
    if (gid != null) 'gid': gid!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
    if (mtime != null) 'mtime': mtime!.toTfJson(),
    if (objectTags != null) 'object_tags': objectTags!.toTfJson(),
    if (overwriteMode != null) 'overwrite_mode': overwriteMode!.toTfJson(),
    if (posixPermissions != null)
      'posix_permissions': posixPermissions!.toTfJson(),
    if (preserveDeletedFiles != null)
      'preserve_deleted_files': preserveDeletedFiles!.toTfJson(),
    if (preserveDevices != null)
      'preserve_devices': preserveDevices!.toTfJson(),
    if (securityDescriptorCopyFlags != null)
      'security_descriptor_copy_flags': securityDescriptorCopyFlags!.toTfJson(),
    if (taskQueueing != null) 'task_queueing': taskQueueing!.toTfJson(),
    if (transferMode != null) 'transfer_mode': transferMode!.toTfJson(),
    if (uid != null) 'uid': uid!.toTfJson(),
    if (verifyMode != null) 'verify_mode': verifyMode!.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskSchedule {
  const DatasyncTaskSchedule({required this.scheduleExpression, this.status});

  final TfArg<String> scheduleExpression;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
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

  final TfArg<String>? outputType;

  final TfArg<String>? reportLevel;

  final TfArg<String>? s3ObjectVersioning;

  final DatasyncTaskTaskReportConfigReportOverrides? reportOverrides;

  final DatasyncTaskTaskReportConfigS3Destination s3Destination;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
    if (reportLevel != null) 'report_level': reportLevel!.toTfJson(),
    if (s3ObjectVersioning != null)
      's3_object_versioning': s3ObjectVersioning!.toTfJson(),
    if (reportOverrides != null) 'report_overrides': reportOverrides!.encode(),
    's3_destination': s3Destination.encode(),
  };
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

  final TfArg<String>? deletedOverride;

  final TfArg<String>? skippedOverride;

  final TfArg<String>? transferredOverride;

  final TfArg<String>? verifiedOverride;

  Map<String, Object?> encode() => {
    if (deletedOverride != null)
      'deleted_override': deletedOverride!.toTfJson(),
    if (skippedOverride != null)
      'skipped_override': skippedOverride!.toTfJson(),
    if (transferredOverride != null)
      'transferred_override': transferredOverride!.toTfJson(),
    if (verifiedOverride != null)
      'verified_override': verifiedOverride!.toTfJson(),
  };
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

  final TfArg<String> s3BucketArn;

  final TfArg<String>? subdirectory;

  Map<String, Object?> encode() => {
    'bucket_access_role_arn': bucketAccessRoleArn.toTfJson(),
    's3_bucket_arn': s3BucketArn.toTfJson(),
    if (subdirectory != null) 'subdirectory': subdirectory!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_task`.
final class AwsDatasyncTask extends Resource {
  static const String tfType = 'aws_datasync_task';

  AwsDatasyncTask({
    required super.localName,
    TfArg<String>? cloudwatchLogGroupArn,
    required TfArg<String> destinationLocationArn,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> sourceLocationArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? taskMode,
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
           if (cloudwatchLogGroupArn != null)
             'cloudwatch_log_group_arn': cloudwatchLogGroupArn,
           'destination_location_arn': destinationLocationArn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           'source_location_arn': sourceLocationArn,
           if (tags != null) 'tags': tags,
           if (taskMode != null) 'task_mode': taskMode,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
