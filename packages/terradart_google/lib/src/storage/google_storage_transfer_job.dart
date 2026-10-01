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

  final TfArg<List<String>>? logActionStates;

  final TfArg<List<String>>? logActions;

  @internal
  Map<String, Object?> encode() => {
    'enable_on_prem_gcs_transfer_logs': ?enableOnPremGcsTransferLogs
        ?.toTfJson(),
    'log_action_states': ?logActionStates?.toTfJson(),
    'log_actions': ?logActions?.toTfJson(),
  };
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

  final TfArg<List<String>>? eventTypes;

  final TfArg<String> payloadFormat;

  final RefTo<GooglePubsubTopic> pubsubTopic;

  @internal
  Map<String, Object?> encode() => {
    'event_types': ?eventTypes?.toTfJson(),
    'payload_format': payloadFormat.toTfJson(),
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
  };
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

  final TfArg<String>? overwriteWhen;

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

  final TfArg<String>? acl;

  final TfArg<String>? gid;

  final TfArg<String>? kmsKey;

  final TfArg<String>? mode;

  final TfArg<String>? storageClass;

  final TfArg<String>? symlink;

  final TfArg<String>? temporaryHold;

  final TfArg<String>? timeCreated;

  final TfArg<String>? uid;

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

  final TfArg<String>? authMethod;

  final TfArg<String>? listApi;

  final TfArg<String>? protocol;

  final TfArg<String>? requestModel;

  @internal
  Map<String, Object?> encode() => {
    'auth_method': ?authMethod?.toTfJson(),
    'list_api': ?listApi?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'request_model': ?requestModel?.toTfJson(),
  };
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
    TfArg<String>? status,
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
