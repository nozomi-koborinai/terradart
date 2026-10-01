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
extension type const DatasyncTaskMode._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskMode.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskMode.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskMode.arg(TfArg<String> arg) : this._(arg);

  static const basic = DatasyncTaskMode._(TfArgLiteral('BASIC'));
  static const enhanced = DatasyncTaskMode._(TfArgLiteral('ENHANCED'));

  static const List<DatasyncTaskMode> values = [basic, enhanced];
}

/// Typed helper for the `excludes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskExcludes {
  const DatasyncTaskExcludes({this.filterType, this.value});

  final DatasyncTaskFilterType? filterType;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'filter_type': ?filterType?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `filter_type` — derived from the provider schema description.
extension type const DatasyncTaskFilterType._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskFilterType.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskFilterType.arg(TfArg<String> arg) : this._(arg);

  static const simplePattern = DatasyncTaskFilterType._(
    TfArgLiteral('SIMPLE_PATTERN'),
  );

  static const List<DatasyncTaskFilterType> values = [simplePattern];
}

/// Typed helper for the `includes` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskIncludes {
  const DatasyncTaskIncludes({this.filterType, this.value});

  final DatasyncTaskFilterType? filterType;

  final TfArg<String>? value;

  @internal
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

  final DatasyncTaskAtime? atime;

  final TfArg<num>? bytesPerSecond;

  final DatasyncTaskGid? gid;

  final DatasyncTaskLogLevel? logLevel;

  final DatasyncTaskMtime? mtime;

  final DatasyncTaskObjectTags? objectTags;

  final DatasyncTaskOverwriteMode? overwriteMode;

  final DatasyncTaskPosixPermissions? posixPermissions;

  final DatasyncTaskPreserveDeletedFiles? preserveDeletedFiles;

  final DatasyncTaskPreserveDevices? preserveDevices;

  final DatasyncTaskSecurityDescriptorCopyFlags? securityDescriptorCopyFlags;

  final DatasyncTaskQueueing? taskQueueing;

  final DatasyncTaskTransferMode? transferMode;

  final DatasyncTaskUid? uid;

  final DatasyncTaskVerifyMode? verifyMode;

  @internal
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
extension type const DatasyncTaskAtime._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskAtime.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskAtime.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskAtime.arg(TfArg<String> arg) : this._(arg);

  static const none = DatasyncTaskAtime._(TfArgLiteral('NONE'));
  static const bestEffort = DatasyncTaskAtime._(TfArgLiteral('BEST_EFFORT'));

  static const List<DatasyncTaskAtime> values = [none, bestEffort];
}

/// `gid` — derived from the provider schema description.
extension type const DatasyncTaskGid._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskGid.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskGid.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskGid.arg(TfArg<String> arg) : this._(arg);

  static const none = DatasyncTaskGid._(TfArgLiteral('NONE'));
  static const intValue = DatasyncTaskGid._(TfArgLiteral('INT_VALUE'));
  static const name = DatasyncTaskGid._(TfArgLiteral('NAME'));
  static const both = DatasyncTaskGid._(TfArgLiteral('BOTH'));

  static const List<DatasyncTaskGid> values = [none, intValue, name, both];
}

/// `log_level` — derived from the provider schema description.
extension type const DatasyncTaskLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskLogLevel.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const off = DatasyncTaskLogLevel._(TfArgLiteral('OFF'));
  static const basic = DatasyncTaskLogLevel._(TfArgLiteral('BASIC'));
  static const transfer = DatasyncTaskLogLevel._(TfArgLiteral('TRANSFER'));

  static const List<DatasyncTaskLogLevel> values = [off, basic, transfer];
}

/// `mtime` — derived from the provider schema description.
extension type const DatasyncTaskMtime._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskMtime.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskMtime.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskMtime.arg(TfArg<String> arg) : this._(arg);

  static const none = DatasyncTaskMtime._(TfArgLiteral('NONE'));
  static const preserve = DatasyncTaskMtime._(TfArgLiteral('PRESERVE'));

  static const List<DatasyncTaskMtime> values = [none, preserve];
}

/// `object_tags` — derived from the provider schema description.
extension type const DatasyncTaskObjectTags._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskObjectTags.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskObjectTags.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskObjectTags.arg(TfArg<String> arg) : this._(arg);

  static const preserve = DatasyncTaskObjectTags._(TfArgLiteral('PRESERVE'));
  static const none = DatasyncTaskObjectTags._(TfArgLiteral('NONE'));

  static const List<DatasyncTaskObjectTags> values = [preserve, none];
}

/// `overwrite_mode` — derived from the provider schema description.
extension type const DatasyncTaskOverwriteMode._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskOverwriteMode.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskOverwriteMode.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskOverwriteMode.arg(TfArg<String> arg) : this._(arg);

  static const always = DatasyncTaskOverwriteMode._(TfArgLiteral('ALWAYS'));
  static const never = DatasyncTaskOverwriteMode._(TfArgLiteral('NEVER'));

  static const List<DatasyncTaskOverwriteMode> values = [always, never];
}

/// `posix_permissions` — derived from the provider schema description.
extension type const DatasyncTaskPosixPermissions._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskPosixPermissions.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskPosixPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskPosixPermissions.arg(TfArg<String> arg) : this._(arg);

  static const none = DatasyncTaskPosixPermissions._(TfArgLiteral('NONE'));
  static const preserve = DatasyncTaskPosixPermissions._(
    TfArgLiteral('PRESERVE'),
  );

  static const List<DatasyncTaskPosixPermissions> values = [none, preserve];
}

/// `preserve_deleted_files` — derived from the provider schema description.
extension type const DatasyncTaskPreserveDeletedFiles._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskPreserveDeletedFiles.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskPreserveDeletedFiles.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskPreserveDeletedFiles.arg(TfArg<String> arg) : this._(arg);

  static const preserve = DatasyncTaskPreserveDeletedFiles._(
    TfArgLiteral('PRESERVE'),
  );
  static const remove = DatasyncTaskPreserveDeletedFiles._(
    TfArgLiteral('REMOVE'),
  );

  static const List<DatasyncTaskPreserveDeletedFiles> values = [
    preserve,
    remove,
  ];
}

/// `preserve_devices` — derived from the provider schema description.
extension type const DatasyncTaskPreserveDevices._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskPreserveDevices.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskPreserveDevices.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskPreserveDevices.arg(TfArg<String> arg) : this._(arg);

  static const none = DatasyncTaskPreserveDevices._(TfArgLiteral('NONE'));
  static const preserve = DatasyncTaskPreserveDevices._(
    TfArgLiteral('PRESERVE'),
  );

  static const List<DatasyncTaskPreserveDevices> values = [none, preserve];
}

/// `security_descriptor_copy_flags` — derived from the provider schema description.
extension type const DatasyncTaskSecurityDescriptorCopyFlags._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskSecurityDescriptorCopyFlags.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskSecurityDescriptorCopyFlags.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskSecurityDescriptorCopyFlags.arg(TfArg<String> arg)
    : this._(arg);

  static const none = DatasyncTaskSecurityDescriptorCopyFlags._(
    TfArgLiteral('NONE'),
  );
  static const ownerDacl = DatasyncTaskSecurityDescriptorCopyFlags._(
    TfArgLiteral('OWNER_DACL'),
  );
  static const ownerDaclSacl = DatasyncTaskSecurityDescriptorCopyFlags._(
    TfArgLiteral('OWNER_DACL_SACL'),
  );

  static const List<DatasyncTaskSecurityDescriptorCopyFlags> values = [
    none,
    ownerDacl,
    ownerDaclSacl,
  ];
}

/// `task_queueing` — derived from the provider schema description.
extension type const DatasyncTaskQueueing._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskQueueing.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskQueueing.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskQueueing.arg(TfArg<String> arg) : this._(arg);

  static const enabled = DatasyncTaskQueueing._(TfArgLiteral('ENABLED'));
  static const disabled = DatasyncTaskQueueing._(TfArgLiteral('DISABLED'));

  static const List<DatasyncTaskQueueing> values = [enabled, disabled];
}

/// `transfer_mode` — derived from the provider schema description.
extension type const DatasyncTaskTransferMode._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskTransferMode.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskTransferMode.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskTransferMode.arg(TfArg<String> arg) : this._(arg);

  static const changed = DatasyncTaskTransferMode._(TfArgLiteral('CHANGED'));
  static const all = DatasyncTaskTransferMode._(TfArgLiteral('ALL'));

  static const List<DatasyncTaskTransferMode> values = [changed, all];
}

/// `uid` — derived from the provider schema description.
extension type const DatasyncTaskUid._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskUid.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskUid.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskUid.arg(TfArg<String> arg) : this._(arg);

  static const none = DatasyncTaskUid._(TfArgLiteral('NONE'));
  static const intValue = DatasyncTaskUid._(TfArgLiteral('INT_VALUE'));
  static const name = DatasyncTaskUid._(TfArgLiteral('NAME'));
  static const both = DatasyncTaskUid._(TfArgLiteral('BOTH'));

  static const List<DatasyncTaskUid> values = [none, intValue, name, both];
}

/// `verify_mode` — derived from the provider schema description.
extension type const DatasyncTaskVerifyMode._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskVerifyMode.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskVerifyMode.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskVerifyMode.arg(TfArg<String> arg) : this._(arg);

  static const pointInTimeConsistent = DatasyncTaskVerifyMode._(
    TfArgLiteral('POINT_IN_TIME_CONSISTENT'),
  );
  static const onlyFilesTransferred = DatasyncTaskVerifyMode._(
    TfArgLiteral('ONLY_FILES_TRANSFERRED'),
  );
  static const none = DatasyncTaskVerifyMode._(TfArgLiteral('NONE'));

  static const List<DatasyncTaskVerifyMode> values = [
    pointInTimeConsistent,
    onlyFilesTransferred,
    none,
  ];
}

/// Typed helper for the `schedule` block of
/// `aws_datasync_task` (derived from provider schema).
@immutable
final class DatasyncTaskSchedule {
  const DatasyncTaskSchedule({required this.scheduleExpression, this.status});

  final TfArg<String> scheduleExpression;

  final DatasyncTaskStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
extension type const DatasyncTaskStatus._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskStatus.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = DatasyncTaskStatus._(TfArgLiteral('ENABLED'));
  static const disabled = DatasyncTaskStatus._(TfArgLiteral('DISABLED'));

  static const List<DatasyncTaskStatus> values = [enabled, disabled];
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

  final DatasyncTaskOutputType? outputType;

  final DatasyncTaskReportLevel? reportLevel;

  final DatasyncTaskS3ObjectVersioning? s3ObjectVersioning;

  final DatasyncTaskReportOverrides? reportOverrides;

  final DatasyncTaskS3Destination s3Destination;

  @internal
  Map<String, Object?> encode() => {
    'output_type': ?outputType?.toTfJson(),
    'report_level': ?reportLevel?.toTfJson(),
    's3_object_versioning': ?s3ObjectVersioning?.toTfJson(),
    'report_overrides': ?reportOverrides?.encode(),
    's3_destination': s3Destination.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
extension type const DatasyncTaskOutputType._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskOutputType.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskOutputType.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskOutputType.arg(TfArg<String> arg) : this._(arg);

  static const summaryOnly = DatasyncTaskOutputType._(
    TfArgLiteral('SUMMARY_ONLY'),
  );
  static const standard = DatasyncTaskOutputType._(TfArgLiteral('STANDARD'));

  static const List<DatasyncTaskOutputType> values = [summaryOnly, standard];
}

/// `report_level` — derived from the provider schema description.
extension type const DatasyncTaskReportLevel._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskReportLevel.variable(String name) : this._(TfArg.variable(name));
  DatasyncTaskReportLevel.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskReportLevel.arg(TfArg<String> arg) : this._(arg);

  static const errorsOnly = DatasyncTaskReportLevel._(
    TfArgLiteral('ERRORS_ONLY'),
  );
  static const successesAndErrors = DatasyncTaskReportLevel._(
    TfArgLiteral('SUCCESSES_AND_ERRORS'),
  );

  static const List<DatasyncTaskReportLevel> values = [
    errorsOnly,
    successesAndErrors,
  ];
}

/// `s3_object_versioning` — derived from the provider schema description.
extension type const DatasyncTaskS3ObjectVersioning._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskS3ObjectVersioning.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskS3ObjectVersioning.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskS3ObjectVersioning.arg(TfArg<String> arg) : this._(arg);

  static const include = DatasyncTaskS3ObjectVersioning._(
    TfArgLiteral('INCLUDE'),
  );
  static const none = DatasyncTaskS3ObjectVersioning._(TfArgLiteral('NONE'));

  static const List<DatasyncTaskS3ObjectVersioning> values = [include, none];
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

  final DatasyncTaskDeletedOverride? deletedOverride;

  final DatasyncTaskSkippedOverride? skippedOverride;

  final DatasyncTaskTransferredOverride? transferredOverride;

  final DatasyncTaskVerifiedOverride? verifiedOverride;

  @internal
  Map<String, Object?> encode() => {
    'deleted_override': ?deletedOverride?.toTfJson(),
    'skipped_override': ?skippedOverride?.toTfJson(),
    'transferred_override': ?transferredOverride?.toTfJson(),
    'verified_override': ?verifiedOverride?.toTfJson(),
  };
}

/// `deleted_override` — derived from the provider schema description.
extension type const DatasyncTaskDeletedOverride._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskDeletedOverride.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskDeletedOverride.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskDeletedOverride.arg(TfArg<String> arg) : this._(arg);

  static const errorsOnly = DatasyncTaskDeletedOverride._(
    TfArgLiteral('ERRORS_ONLY'),
  );
  static const successesAndErrors = DatasyncTaskDeletedOverride._(
    TfArgLiteral('SUCCESSES_AND_ERRORS'),
  );

  static const List<DatasyncTaskDeletedOverride> values = [
    errorsOnly,
    successesAndErrors,
  ];
}

/// `skipped_override` — derived from the provider schema description.
extension type const DatasyncTaskSkippedOverride._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskSkippedOverride.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskSkippedOverride.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskSkippedOverride.arg(TfArg<String> arg) : this._(arg);

  static const errorsOnly = DatasyncTaskSkippedOverride._(
    TfArgLiteral('ERRORS_ONLY'),
  );
  static const successesAndErrors = DatasyncTaskSkippedOverride._(
    TfArgLiteral('SUCCESSES_AND_ERRORS'),
  );

  static const List<DatasyncTaskSkippedOverride> values = [
    errorsOnly,
    successesAndErrors,
  ];
}

/// `transferred_override` — derived from the provider schema description.
extension type const DatasyncTaskTransferredOverride._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskTransferredOverride.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskTransferredOverride.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskTransferredOverride.arg(TfArg<String> arg) : this._(arg);

  static const errorsOnly = DatasyncTaskTransferredOverride._(
    TfArgLiteral('ERRORS_ONLY'),
  );
  static const successesAndErrors = DatasyncTaskTransferredOverride._(
    TfArgLiteral('SUCCESSES_AND_ERRORS'),
  );

  static const List<DatasyncTaskTransferredOverride> values = [
    errorsOnly,
    successesAndErrors,
  ];
}

/// `verified_override` — derived from the provider schema description.
extension type const DatasyncTaskVerifiedOverride._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncTaskVerifiedOverride.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncTaskVerifiedOverride.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncTaskVerifiedOverride.arg(TfArg<String> arg) : this._(arg);

  static const errorsOnly = DatasyncTaskVerifiedOverride._(
    TfArgLiteral('ERRORS_ONLY'),
  );
  static const successesAndErrors = DatasyncTaskVerifiedOverride._(
    TfArgLiteral('SUCCESSES_AND_ERRORS'),
  );

  static const List<DatasyncTaskVerifiedOverride> values = [
    errorsOnly,
    successesAndErrors,
  ];
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

  @internal
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
    DatasyncTaskMode? taskMode,
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
