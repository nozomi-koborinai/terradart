// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_transfer_job`.
const Set<String> _googleStorageTransferJobSensitive = <String>{
  'transfer_spec.aws_s3_data_source.aws_access_key.access_key_id',
  'transfer_spec.aws_s3_data_source.aws_access_key.secret_access_key',
  'transfer_spec.azure_blob_storage_data_source.azure_credentials.sas_token',
  'transfer_spec.azure_blob_storage_data_source.federated_identity_config.client_id',
  'transfer_spec.azure_blob_storage_data_source.federated_identity_config.tenant_id',
};

/// Storage Transfer Job enum for `status`.
extension type const StorageTransferJobStatus._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobStatus.variable(String name) : this._(TfArg.variable(name));
  StorageTransferJobStatus.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = StorageTransferJobStatus._(TfArgLiteral('ENABLED'));
  static const disabled = StorageTransferJobStatus._(TfArgLiteral('DISABLED'));
  static const deleted = StorageTransferJobStatus._(TfArgLiteral('DELETED'));

  static const List<StorageTransferJobStatus> values = [
    enabled,
    disabled,
    deleted,
  ];
}

/// Typed helper for the `event_stream` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobEventStream {
  const StorageTransferJobEventStream({
    this.eventStreamExpirationTime,
    this.eventStreamStartTime,
    required this.name,
  });

  final TfArg<String>? eventStreamExpirationTime;

  final TfArg<String>? eventStreamStartTime;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'event_stream_expiration_time': ?eventStreamExpirationTime?.toTfJson(),
    'event_stream_start_time': ?eventStreamStartTime?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `logging_config` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobLoggingConfig {
  const StorageTransferJobLoggingConfig({
    this.enableOnPremGcsTransferLogs,
    this.logActionStates,
    this.logActions,
  });

  final TfArg<bool>? enableOnPremGcsTransferLogs;

  final EnumList<StorageTransferJobLogActionStates>? logActionStates;

  final EnumList<StorageTransferJobLogActions>? logActions;

  @internal
  Map<String, Object?> encode() => {
    'enable_on_prem_gcs_transfer_logs': ?enableOnPremGcsTransferLogs
        ?.toTfJson(),
    'log_action_states': ?logActionStates?.toTfJson(),
    'log_actions': ?logActions?.toTfJson(),
  };
}

/// `log_action_states` — derived from the provider schema description.
extension type const StorageTransferJobLogActionStates._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobLogActionStates.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobLogActionStates.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobLogActionStates.arg(TfArg<String> arg) : this._(arg);

  static const succeeded = StorageTransferJobLogActionStates._(
    TfArgLiteral('SUCCEEDED'),
  );
  static const failed = StorageTransferJobLogActionStates._(
    TfArgLiteral('FAILED'),
  );
  static const skipped = StorageTransferJobLogActionStates._(
    TfArgLiteral('SKIPPED'),
  );

  static const List<StorageTransferJobLogActionStates> values = [
    succeeded,
    failed,
    skipped,
  ];
}

/// `log_actions` — derived from the provider schema description.
extension type const StorageTransferJobLogActions._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobLogActions.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobLogActions.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobLogActions.arg(TfArg<String> arg) : this._(arg);

  static const find = StorageTransferJobLogActions._(TfArgLiteral('FIND'));
  static const delete = StorageTransferJobLogActions._(TfArgLiteral('DELETE'));
  static const copy = StorageTransferJobLogActions._(TfArgLiteral('COPY'));

  static const List<StorageTransferJobLogActions> values = [find, delete, copy];
}

/// Typed helper for the `notification_config` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobNotificationConfig {
  const StorageTransferJobNotificationConfig({
    this.eventTypes,
    required this.payloadFormat,
    required this.pubsubTopic,
  });

  final EnumList<StorageTransferJobEventTypes>? eventTypes;

  final StorageTransferJobPayloadFormat payloadFormat;

  final RefTo<GooglePubsubTopic> pubsubTopic;

  @internal
  Map<String, Object?> encode() => {
    'event_types': ?eventTypes?.toTfJson(),
    'payload_format': payloadFormat.toTfJson(),
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
  };
}

/// `event_types` — derived from the provider schema description.
extension type const StorageTransferJobEventTypes._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobEventTypes.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobEventTypes.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobEventTypes.arg(TfArg<String> arg) : this._(arg);

  static const transferOperationSuccess = StorageTransferJobEventTypes._(
    TfArgLiteral('TRANSFER_OPERATION_SUCCESS'),
  );
  static const transferOperationFailed = StorageTransferJobEventTypes._(
    TfArgLiteral('TRANSFER_OPERATION_FAILED'),
  );
  static const transferOperationAborted = StorageTransferJobEventTypes._(
    TfArgLiteral('TRANSFER_OPERATION_ABORTED'),
  );

  static const List<StorageTransferJobEventTypes> values = [
    transferOperationSuccess,
    transferOperationFailed,
    transferOperationAborted,
  ];
}

/// `payload_format` — derived from the provider schema description.
extension type const StorageTransferJobPayloadFormat._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobPayloadFormat.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobPayloadFormat.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobPayloadFormat.arg(TfArg<String> arg) : this._(arg);

  static const none = StorageTransferJobPayloadFormat._(TfArgLiteral('NONE'));
  static const json = StorageTransferJobPayloadFormat._(TfArgLiteral('JSON'));

  static const List<StorageTransferJobPayloadFormat> values = [none, json];
}

/// Typed helper for the `replication_spec` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobReplicationSpec {
  const StorageTransferJobReplicationSpec({
    this.gcsDataSink,
    this.gcsDataSource,
    this.objectConditions,
    this.transferOptions,
  });

  final StorageTransferJobGcsDataSink? gcsDataSink;

  final StorageTransferJobGcsDataSource? gcsDataSource;

  final StorageTransferJobObjectConditions? objectConditions;

  final StorageTransferJobTransferOptions? transferOptions;

  @internal
  Map<String, Object?> encode() => {
    'gcs_data_sink': ?gcsDataSink?.encode(),
    'gcs_data_source': ?gcsDataSource?.encode(),
    'object_conditions': ?objectConditions?.encode(),
    'transfer_options': ?transferOptions?.encode(),
  };
}

/// Typed helper for the `replication_spec.gcs_data_sink` block of
/// `google_storage_transfer_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageTransferJobGcsDataSink {
  const StorageTransferJobGcsDataSink({required this.bucketName, this.path});

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<String>? path;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `replication_spec.gcs_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageTransferJobGcsDataSource {
  const StorageTransferJobGcsDataSource({required this.bucketName, this.path});

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<String>? path;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `replication_spec.object_conditions` block of
/// `google_storage_transfer_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageTransferJobObjectConditions {
  const StorageTransferJobObjectConditions({
    this.excludePrefixes,
    this.includePrefixes,
    this.lastModifiedBefore,
    this.lastModifiedSince,
    this.maxTimeElapsedSinceLastModification,
    this.minTimeElapsedSinceLastModification,
  });

  final TfArg<List<String>>? excludePrefixes;

  final TfArg<List<String>>? includePrefixes;

  final TfArg<String>? lastModifiedBefore;

  final TfArg<String>? lastModifiedSince;

  final TfArg<String>? maxTimeElapsedSinceLastModification;

  final TfArg<String>? minTimeElapsedSinceLastModification;

  @internal
  Map<String, Object?> encode() => {
    'exclude_prefixes': ?excludePrefixes?.toTfJson(),
    'include_prefixes': ?includePrefixes?.toTfJson(),
    'last_modified_before': ?lastModifiedBefore?.toTfJson(),
    'last_modified_since': ?lastModifiedSince?.toTfJson(),
    'max_time_elapsed_since_last_modification':
        ?maxTimeElapsedSinceLastModification?.toTfJson(),
    'min_time_elapsed_since_last_modification':
        ?minTimeElapsedSinceLastModification?.toTfJson(),
  };
}

/// Typed helper for the `replication_spec.transfer_options` block of
/// `google_storage_transfer_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageTransferJobTransferOptions {
  const StorageTransferJobTransferOptions({
    this.deleteObjectsFromSourceAfterTransfer,
    this.deleteObjectsUniqueInSink,
    this.overwriteObjectsAlreadyExistingInSink,
    this.overwriteWhen,
    this.metadataOptions,
  });

  final TfArg<bool>? deleteObjectsFromSourceAfterTransfer;

  final TfArg<bool>? deleteObjectsUniqueInSink;

  final TfArg<bool>? overwriteObjectsAlreadyExistingInSink;

  final StorageTransferJobOverwriteWhen? overwriteWhen;

  final StorageTransferJobMetadataOptions? metadataOptions;

  @internal
  Map<String, Object?> encode() => {
    'delete_objects_from_source_after_transfer':
        ?deleteObjectsFromSourceAfterTransfer?.toTfJson(),
    'delete_objects_unique_in_sink': ?deleteObjectsUniqueInSink?.toTfJson(),
    'overwrite_objects_already_existing_in_sink':
        ?overwriteObjectsAlreadyExistingInSink?.toTfJson(),
    'overwrite_when': ?overwriteWhen?.toTfJson(),
    'metadata_options': ?metadataOptions?.encode(),
  };
}

/// `overwrite_when` — derived from the provider schema description.
extension type const StorageTransferJobOverwriteWhen._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobOverwriteWhen.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobOverwriteWhen.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobOverwriteWhen.arg(TfArg<String> arg) : this._(arg);

  static const different = StorageTransferJobOverwriteWhen._(
    TfArgLiteral('DIFFERENT'),
  );
  static const never = StorageTransferJobOverwriteWhen._(TfArgLiteral('NEVER'));
  static const always = StorageTransferJobOverwriteWhen._(
    TfArgLiteral('ALWAYS'),
  );

  static const List<StorageTransferJobOverwriteWhen> values = [
    different,
    never,
    always,
  ];
}

/// Typed helper for the `replication_spec.transfer_options.metadata_options` block of
/// `google_storage_transfer_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class StorageTransferJobMetadataOptions {
  const StorageTransferJobMetadataOptions({
    this.acl,
    this.gid,
    this.kmsKey,
    this.mode,
    this.storageClass,
    this.symlink,
    this.temporaryHold,
    this.timeCreated,
    this.uid,
  });

  final StorageTransferJobAcl? acl;

  final StorageTransferJobGid? gid;

  final StorageTransferJobKmsKey? kmsKey;

  final StorageTransferJobMode? mode;

  final StorageTransferJobStorageClass? storageClass;

  final StorageTransferJobSymlink? symlink;

  final StorageTransferJobTemporaryHold? temporaryHold;

  final StorageTransferJobTimeCreated? timeCreated;

  final StorageTransferJobUid? uid;

  @internal
  Map<String, Object?> encode() => {
    'acl': ?acl?.toTfJson(),
    'gid': ?gid?.toTfJson(),
    'kms_key': ?kmsKey?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'storage_class': ?storageClass?.toTfJson(),
    'symlink': ?symlink?.toTfJson(),
    'temporary_hold': ?temporaryHold?.toTfJson(),
    'time_created': ?timeCreated?.toTfJson(),
    'uid': ?uid?.toTfJson(),
  };
}

/// `acl` — derived from the provider schema description.
extension type const StorageTransferJobAcl._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobAcl.variable(String name) : this._(TfArg.variable(name));
  StorageTransferJobAcl.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobAcl.arg(TfArg<String> arg) : this._(arg);

  static const aclDestinationBucketDefault = StorageTransferJobAcl._(
    TfArgLiteral('ACL_DESTINATION_BUCKET_DEFAULT'),
  );
  static const aclPreserve = StorageTransferJobAcl._(
    TfArgLiteral('ACL_PRESERVE'),
  );

  static const List<StorageTransferJobAcl> values = [
    aclDestinationBucketDefault,
    aclPreserve,
  ];
}

/// `gid` — derived from the provider schema description.
extension type const StorageTransferJobGid._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobGid.variable(String name) : this._(TfArg.variable(name));
  StorageTransferJobGid.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobGid.arg(TfArg<String> arg) : this._(arg);

  static const gidSkip = StorageTransferJobGid._(TfArgLiteral('GID_SKIP'));
  static const gidNumber = StorageTransferJobGid._(TfArgLiteral('GID_NUMBER'));

  static const List<StorageTransferJobGid> values = [gidSkip, gidNumber];
}

/// `kms_key` — derived from the provider schema description.
extension type const StorageTransferJobKmsKey._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobKmsKey.variable(String name) : this._(TfArg.variable(name));
  StorageTransferJobKmsKey.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobKmsKey.arg(TfArg<String> arg) : this._(arg);

  static const kmsKeyDestinationBucketDefault = StorageTransferJobKmsKey._(
    TfArgLiteral('KMS_KEY_DESTINATION_BUCKET_DEFAULT'),
  );
  static const kmsKeyPreserve = StorageTransferJobKmsKey._(
    TfArgLiteral('KMS_KEY_PRESERVE'),
  );

  static const List<StorageTransferJobKmsKey> values = [
    kmsKeyDestinationBucketDefault,
    kmsKeyPreserve,
  ];
}

/// `mode` — derived from the provider schema description.
extension type const StorageTransferJobMode._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobMode.variable(String name) : this._(TfArg.variable(name));
  StorageTransferJobMode.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobMode.arg(TfArg<String> arg) : this._(arg);

  static const modeSkip = StorageTransferJobMode._(TfArgLiteral('MODE_SKIP'));
  static const modePreserve = StorageTransferJobMode._(
    TfArgLiteral('MODE_PRESERVE'),
  );

  static const List<StorageTransferJobMode> values = [modeSkip, modePreserve];
}

/// `storage_class` — derived from the provider schema description.
extension type const StorageTransferJobStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobStorageClass.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const storageClassDestinationBucketDefault =
      StorageTransferJobStorageClass._(
        TfArgLiteral('STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT'),
      );
  static const storageClassPreserve = StorageTransferJobStorageClass._(
    TfArgLiteral('STORAGE_CLASS_PRESERVE'),
  );
  static const storageClassStandard = StorageTransferJobStorageClass._(
    TfArgLiteral('STORAGE_CLASS_STANDARD'),
  );
  static const storageClassNearline = StorageTransferJobStorageClass._(
    TfArgLiteral('STORAGE_CLASS_NEARLINE'),
  );
  static const storageClassColdline = StorageTransferJobStorageClass._(
    TfArgLiteral('STORAGE_CLASS_COLDLINE'),
  );
  static const storageClassArchive = StorageTransferJobStorageClass._(
    TfArgLiteral('STORAGE_CLASS_ARCHIVE'),
  );

  static const List<StorageTransferJobStorageClass> values = [
    storageClassDestinationBucketDefault,
    storageClassPreserve,
    storageClassStandard,
    storageClassNearline,
    storageClassColdline,
    storageClassArchive,
  ];
}

/// `symlink` — derived from the provider schema description.
extension type const StorageTransferJobSymlink._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobSymlink.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobSymlink.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobSymlink.arg(TfArg<String> arg) : this._(arg);

  static const symlinkSkip = StorageTransferJobSymlink._(
    TfArgLiteral('SYMLINK_SKIP'),
  );
  static const symlinkPreserve = StorageTransferJobSymlink._(
    TfArgLiteral('SYMLINK_PRESERVE'),
  );

  static const List<StorageTransferJobSymlink> values = [
    symlinkSkip,
    symlinkPreserve,
  ];
}

/// `temporary_hold` — derived from the provider schema description.
extension type const StorageTransferJobTemporaryHold._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobTemporaryHold.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobTemporaryHold.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobTemporaryHold.arg(TfArg<String> arg) : this._(arg);

  static const temporaryHoldSkip = StorageTransferJobTemporaryHold._(
    TfArgLiteral('TEMPORARY_HOLD_SKIP'),
  );
  static const temporaryHoldPreserve = StorageTransferJobTemporaryHold._(
    TfArgLiteral('TEMPORARY_HOLD_PRESERVE'),
  );

  static const List<StorageTransferJobTemporaryHold> values = [
    temporaryHoldSkip,
    temporaryHoldPreserve,
  ];
}

/// `time_created` — derived from the provider schema description.
extension type const StorageTransferJobTimeCreated._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobTimeCreated.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobTimeCreated.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobTimeCreated.arg(TfArg<String> arg) : this._(arg);

  static const timeCreatedSkip = StorageTransferJobTimeCreated._(
    TfArgLiteral('TIME_CREATED_SKIP'),
  );
  static const timeCreatedPreserveAsCustomTime =
      StorageTransferJobTimeCreated._(
        TfArgLiteral('TIME_CREATED_PRESERVE_AS_CUSTOM_TIME'),
      );

  static const List<StorageTransferJobTimeCreated> values = [
    timeCreatedSkip,
    timeCreatedPreserveAsCustomTime,
  ];
}

/// `uid` — derived from the provider schema description.
extension type const StorageTransferJobUid._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobUid.variable(String name) : this._(TfArg.variable(name));
  StorageTransferJobUid.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobUid.arg(TfArg<String> arg) : this._(arg);

  static const uidSkip = StorageTransferJobUid._(TfArgLiteral('UID_SKIP'));
  static const uidNumber = StorageTransferJobUid._(TfArgLiteral('UID_NUMBER'));

  static const List<StorageTransferJobUid> values = [uidSkip, uidNumber];
}

/// Typed helper for the `schedule` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobSchedule {
  const StorageTransferJobSchedule({
    this.repeatInterval,
    this.scheduleEndDate,
    required this.scheduleStartDate,
    this.startTimeOfDay,
  });

  final TfArg<String>? repeatInterval;

  final StorageTransferJobScheduleEndDate? scheduleEndDate;

  final StorageTransferJobScheduleStartDate scheduleStartDate;

  final StorageTransferJobStartTimeOfDay? startTimeOfDay;

  @internal
  Map<String, Object?> encode() => {
    'repeat_interval': ?repeatInterval?.toTfJson(),
    'schedule_end_date': ?scheduleEndDate?.encode(),
    'schedule_start_date': scheduleStartDate.encode(),
    'start_time_of_day': ?startTimeOfDay?.encode(),
  };
}

/// Typed helper for the `schedule.schedule_end_date` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobScheduleEndDate {
  const StorageTransferJobScheduleEndDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  @internal
  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `schedule.schedule_start_date` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobScheduleStartDate {
  const StorageTransferJobScheduleStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  @internal
  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `schedule.start_time_of_day` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobStartTimeOfDay {
  const StorageTransferJobStartTimeOfDay({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  final TfArg<num> hours;

  final TfArg<num> minutes;

  final TfArg<num> nanos;

  final TfArg<num> seconds;

  @internal
  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
    'nanos': nanos.toTfJson(),
    'seconds': seconds.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpec {
  const StorageTransferJobTransferSpec({
    this.sinkAgentPoolName,
    this.sourceAgentPoolName,
    this.awsS3CompatibleDataSource,
    this.awsS3DataSource,
    this.azureBlobStorageDataSource,
    this.gcsDataSink,
    this.gcsDataSource,
    this.hdfsDataSource,
    this.httpDataSource,
    this.objectConditions,
    this.posixDataSink,
    this.posixDataSource,
    this.transferManifest,
    this.transferOptions,
  });

  final TfArg<String>? sinkAgentPoolName;

  final TfArg<String>? sourceAgentPoolName;

  final StorageTransferJobAwsS3CompatibleDataSource? awsS3CompatibleDataSource;

  final StorageTransferJobAwsS3DataSource? awsS3DataSource;

  final StorageTransferJobAzureBlobStorageDataSource?
  azureBlobStorageDataSource;

  final StorageTransferJobGcsDataSink? gcsDataSink;

  final StorageTransferJobGcsDataSource? gcsDataSource;

  final StorageTransferJobHdfsDataSource? hdfsDataSource;

  final StorageTransferJobHttpDataSource? httpDataSource;

  final StorageTransferJobObjectConditions? objectConditions;

  final StorageTransferJobPosixDataSink? posixDataSink;

  final StorageTransferJobPosixDataSource? posixDataSource;

  final StorageTransferJobTransferManifest? transferManifest;

  final StorageTransferJobTransferOptions? transferOptions;

  @internal
  Map<String, Object?> encode() => {
    'sink_agent_pool_name': ?sinkAgentPoolName?.toTfJson(),
    'source_agent_pool_name': ?sourceAgentPoolName?.toTfJson(),
    'aws_s3_compatible_data_source': ?awsS3CompatibleDataSource?.encode(),
    'aws_s3_data_source': ?awsS3DataSource?.encode(),
    'azure_blob_storage_data_source': ?azureBlobStorageDataSource?.encode(),
    'gcs_data_sink': ?gcsDataSink?.encode(),
    'gcs_data_source': ?gcsDataSource?.encode(),
    'hdfs_data_source': ?hdfsDataSource?.encode(),
    'http_data_source': ?httpDataSource?.encode(),
    'object_conditions': ?objectConditions?.encode(),
    'posix_data_sink': ?posixDataSink?.encode(),
    'posix_data_source': ?posixDataSource?.encode(),
    'transfer_manifest': ?transferManifest?.encode(),
    'transfer_options': ?transferOptions?.encode(),
  };
}

/// Typed helper for the `transfer_spec.aws_s3_compatible_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobAwsS3CompatibleDataSource {
  const StorageTransferJobAwsS3CompatibleDataSource({
    required this.bucketName,
    required this.endpoint,
    this.path,
    this.region,
    this.s3Metadata,
  });

  final TfArg<String> bucketName;

  final TfArg<String> endpoint;

  final TfArg<String>? path;

  final TfArg<String>? region;

  final StorageTransferJobS3Metadata? s3Metadata;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    'endpoint': endpoint.toTfJson(),
    'path': ?path?.toTfJson(),
    'region': ?region?.toTfJson(),
    's3_metadata': ?s3Metadata?.encode(),
  };
}

/// Typed helper for the `transfer_spec.aws_s3_compatible_data_source.s3_metadata` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobS3Metadata {
  const StorageTransferJobS3Metadata({
    this.authMethod,
    this.listApi,
    this.protocol,
    this.requestModel,
  });

  final StorageTransferJobAuthMethod? authMethod;

  final StorageTransferJobListApi? listApi;

  final StorageTransferJobProtocol? protocol;

  final StorageTransferJobRequestModel? requestModel;

  @internal
  Map<String, Object?> encode() => {
    'auth_method': ?authMethod?.toTfJson(),
    'list_api': ?listApi?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'request_model': ?requestModel?.toTfJson(),
  };
}

/// `auth_method` — derived from the provider schema description.
extension type const StorageTransferJobAuthMethod._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobAuthMethod.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobAuthMethod.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobAuthMethod.arg(TfArg<String> arg) : this._(arg);

  static const authMethodAwsSignatureV4 = StorageTransferJobAuthMethod._(
    TfArgLiteral('AUTH_METHOD_AWS_SIGNATURE_V4'),
  );
  static const authMethodAwsSignatureV2 = StorageTransferJobAuthMethod._(
    TfArgLiteral('AUTH_METHOD_AWS_SIGNATURE_V2'),
  );

  static const List<StorageTransferJobAuthMethod> values = [
    authMethodAwsSignatureV4,
    authMethodAwsSignatureV2,
  ];
}

/// `list_api` — derived from the provider schema description.
extension type const StorageTransferJobListApi._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobListApi.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobListApi.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobListApi.arg(TfArg<String> arg) : this._(arg);

  static const listObjectsV2 = StorageTransferJobListApi._(
    TfArgLiteral('LIST_OBJECTS_V2'),
  );
  static const listObjects = StorageTransferJobListApi._(
    TfArgLiteral('LIST_OBJECTS'),
  );

  static const List<StorageTransferJobListApi> values = [
    listObjectsV2,
    listObjects,
  ];
}

/// `protocol` — derived from the provider schema description.
extension type const StorageTransferJobProtocol._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobProtocol.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobProtocol.arg(TfArg<String> arg) : this._(arg);

  static const networkProtocolHttps = StorageTransferJobProtocol._(
    TfArgLiteral('NETWORK_PROTOCOL_HTTPS'),
  );
  static const networkProtocolHttp = StorageTransferJobProtocol._(
    TfArgLiteral('NETWORK_PROTOCOL_HTTP'),
  );

  static const List<StorageTransferJobProtocol> values = [
    networkProtocolHttps,
    networkProtocolHttp,
  ];
}

/// `request_model` — derived from the provider schema description.
extension type const StorageTransferJobRequestModel._(TfArg<String> _)
    implements TfArg<String> {
  StorageTransferJobRequestModel.variable(String name)
    : this._(TfArg.variable(name));
  StorageTransferJobRequestModel.expression(String template)
    : this._(TfArg.expression(template));
  const StorageTransferJobRequestModel.arg(TfArg<String> arg) : this._(arg);

  static const requestModelVirtualHostedStyle =
      StorageTransferJobRequestModel._(
        TfArgLiteral('REQUEST_MODEL_VIRTUAL_HOSTED_STYLE'),
      );
  static const requestModelPathStyle = StorageTransferJobRequestModel._(
    TfArgLiteral('REQUEST_MODEL_PATH_STYLE'),
  );

  static const List<StorageTransferJobRequestModel> values = [
    requestModelVirtualHostedStyle,
    requestModelPathStyle,
  ];
}

/// Typed helper for the `transfer_spec.aws_s3_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobAwsS3DataSource {
  const StorageTransferJobAwsS3DataSource({
    required this.bucketName,
    this.cloudfrontDomain,
    this.credentialsSecret,
    this.managedPrivateNetwork,
    this.path,
    this.roleArn,
    this.awsAccessKey,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? cloudfrontDomain;

  final TfArg<String>? credentialsSecret;

  final TfArg<bool>? managedPrivateNetwork;

  final TfArg<String>? path;

  final TfArg<String>? roleArn;

  final StorageTransferJobAwsAccessKey? awsAccessKey;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    'cloudfront_domain': ?cloudfrontDomain?.toTfJson(),
    'credentials_secret': ?credentialsSecret?.toTfJson(),
    'managed_private_network': ?managedPrivateNetwork?.toTfJson(),
    'path': ?path?.toTfJson(),
    'role_arn': ?roleArn?.toTfJson(),
    'aws_access_key': ?awsAccessKey?.encode(),
  };
}

/// Typed helper for the `transfer_spec.aws_s3_data_source.aws_access_key` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobAwsAccessKey {
  const StorageTransferJobAwsAccessKey({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  final Sensitive<String> accessKeyId;

  final Sensitive<String> secretAccessKey;

  @internal
  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'secret_access_key': secretAccessKey.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec.azure_blob_storage_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobAzureBlobStorageDataSource {
  const StorageTransferJobAzureBlobStorageDataSource({
    required this.container,
    this.credentialsSecret,
    this.path,
    this.privateNetworkService,
    required this.storageAccount,
    this.azureCredentials,
    this.federatedIdentityConfig,
  });

  final TfArg<String> container;

  final TfArg<String>? credentialsSecret;

  final TfArg<String>? path;

  final TfArg<String>? privateNetworkService;

  final TfArg<String> storageAccount;

  final StorageTransferJobAzureCredentials? azureCredentials;

  final StorageTransferJobFederatedIdentityConfig? federatedIdentityConfig;

  @internal
  Map<String, Object?> encode() => {
    'container': container.toTfJson(),
    'credentials_secret': ?credentialsSecret?.toTfJson(),
    'path': ?path?.toTfJson(),
    'private_network_service': ?privateNetworkService?.toTfJson(),
    'storage_account': storageAccount.toTfJson(),
    'azure_credentials': ?azureCredentials?.encode(),
    'federated_identity_config': ?federatedIdentityConfig?.encode(),
  };
}

/// Typed helper for the `transfer_spec.azure_blob_storage_data_source.azure_credentials` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobAzureCredentials {
  const StorageTransferJobAzureCredentials({required this.sasToken});

  final Sensitive<String> sasToken;

  @internal
  Map<String, Object?> encode() => {'sas_token': sasToken.toTfJson()};
}

/// Typed helper for the `transfer_spec.azure_blob_storage_data_source.federated_identity_config` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobFederatedIdentityConfig {
  const StorageTransferJobFederatedIdentityConfig({
    required this.clientId,
    required this.tenantId,
  });

  final Sensitive<String> clientId;

  final Sensitive<String> tenantId;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec.hdfs_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobHdfsDataSource {
  const StorageTransferJobHdfsDataSource({required this.path});

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `transfer_spec.http_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobHttpDataSource {
  const StorageTransferJobHttpDataSource({required this.listUrl});

  final TfArg<String> listUrl;

  @internal
  Map<String, Object?> encode() => {'list_url': listUrl.toTfJson()};
}

/// Typed helper for the `transfer_spec.posix_data_sink` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobPosixDataSink {
  const StorageTransferJobPosixDataSink({required this.rootDirectory});

  final TfArg<String> rootDirectory;

  @internal
  Map<String, Object?> encode() => {'root_directory': rootDirectory.toTfJson()};
}

/// Typed helper for the `transfer_spec.posix_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobPosixDataSource {
  const StorageTransferJobPosixDataSource({required this.rootDirectory});

  final TfArg<String> rootDirectory;

  @internal
  Map<String, Object?> encode() => {'root_directory': rootDirectory.toTfJson()};
}

/// Typed helper for the `transfer_spec.transfer_manifest` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferManifest {
  const StorageTransferJobTransferManifest({required this.location});

  final TfArg<String> location;

  @internal
  Map<String, Object?> encode() => {'location': location.toTfJson()};
}

/// Factory wrapper for `google_storage_transfer_job`.
///
/// Storage Transfer Service **job** — a transfer or replication spec plus
/// an optional schedule. Set [status] to `DISABLED` in smoke so the job
/// never runs.
///
/// **Cost:** gcp-cost: Transfer Service `D961-88BE-4D2D` SKUs are
/// S3-private-network / on-prem data-moved (`DC3D-7464-4764`
/// **$0.0125/GiBy**); GCS↔GCS is Cloud Storage Class A ops
/// `4DBF-185F-A415` **$0.005/count after 5k**. billing-behavior: the job
/// record is free metadata; bytes move only when ENABLED and a run
/// starts. Destroy deletes the job.
///
/// Example (disabled GCS→GCS, no bytes moved):
/// ```dart
/// GoogleStorageTransferJob(
///   'copy',
///   description: TfArg.literal('terradart disabled gcs copy'),
///   status: TfArg.literal('DISABLED'),
///   transferSpec: StorageTransferJobTransferSpec(
///     gcsDataSource: .new(
///       bucketName: src.ref,
///     ),
///     gcsDataSink: .new(
///       bucketName: dst.ref,
///     ),
///   ),
/// );
/// ```
final class GoogleStorageTransferJob extends Resource {
  static const String tfType = 'google_storage_transfer_job';

  GoogleStorageTransferJob(
    super.localName, {
    required TfArg<String> description,
    StorageTransferJobTransferSpec? transferSpec,
    StorageTransferJobSchedule? schedule,
    StorageTransferJobStatus? status,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<String>? name,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    StorageTransferJobEventStream? eventStream,
    StorageTransferJobLoggingConfig? loggingConfig,
    StorageTransferJobNotificationConfig? notificationConfig,
    StorageTransferJobReplicationSpec? replicationSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           if (transferSpec != null)
             'transfer_spec': TfArg.literal(transferSpec.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
           'status': ?status,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'name': ?name,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (eventStream != null)
             'event_stream': TfArg.literal(eventStream.encode()),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (notificationConfig != null)
             'notification_config': TfArg.literal(notificationConfig.encode()),
           if (replicationSpec != null)
             'replication_spec': TfArg.literal(replicationSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageTransferJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageTransferJob>`.
  RefTo<GoogleStorageTransferJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `deletion_time` attribute.
  TfRef<String> get deletionTime =>
      TfRef.attribute<String>(this, 'deletion_time');

  /// Reference to `last_modification_time` attribute.
  TfRef<String> get lastModificationTime =>
      TfRef.attribute<String>(this, 'last_modification_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
