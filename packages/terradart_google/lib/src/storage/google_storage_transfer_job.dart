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

  final StorageTransferJobReplicationSpecGcsDataSink? gcsDataSink;

  final StorageTransferJobReplicationSpecGcsDataSource? gcsDataSource;

  final StorageTransferJobReplicationSpecObjectConditions? objectConditions;

  final StorageTransferJobReplicationSpecTransferOptions? transferOptions;

  Map<String, Object?> encode() => {
    'gcs_data_sink': ?gcsDataSink?.encode(),
    'gcs_data_source': ?gcsDataSource?.encode(),
    'object_conditions': ?objectConditions?.encode(),
    'transfer_options': ?transferOptions?.encode(),
  };
}

/// Typed helper for the `replication_spec.gcs_data_sink` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobReplicationSpecGcsDataSink {
  const StorageTransferJobReplicationSpecGcsDataSink({
    required this.bucketName,
    this.path,
  });

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `replication_spec.gcs_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobReplicationSpecGcsDataSource {
  const StorageTransferJobReplicationSpecGcsDataSource({
    required this.bucketName,
    this.path,
  });

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `replication_spec.object_conditions` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobReplicationSpecObjectConditions {
  const StorageTransferJobReplicationSpecObjectConditions({
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
@immutable
final class StorageTransferJobReplicationSpecTransferOptions {
  const StorageTransferJobReplicationSpecTransferOptions({
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

  final StorageTransferJobReplicationSpecTransferOptionsMetadataOptions?
  metadataOptions;

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
@immutable
final class StorageTransferJobReplicationSpecTransferOptionsMetadataOptions {
  const StorageTransferJobReplicationSpecTransferOptionsMetadataOptions({
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

  final StorageTransferJobScheduleScheduleEndDate? scheduleEndDate;

  final StorageTransferJobScheduleScheduleStartDate scheduleStartDate;

  final StorageTransferJobScheduleStartTimeOfDay? startTimeOfDay;

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
final class StorageTransferJobScheduleScheduleEndDate {
  const StorageTransferJobScheduleScheduleEndDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `schedule.schedule_start_date` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobScheduleScheduleStartDate {
  const StorageTransferJobScheduleScheduleStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `schedule.start_time_of_day` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobScheduleStartTimeOfDay {
  const StorageTransferJobScheduleStartTimeOfDay({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  final TfArg<num> hours;

  final TfArg<num> minutes;

  final TfArg<num> nanos;

  final TfArg<num> seconds;

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

  final StorageTransferJobTransferSpecAwsS3CompatibleDataSource?
  awsS3CompatibleDataSource;

  final StorageTransferJobTransferSpecAwsS3DataSource? awsS3DataSource;

  final StorageTransferJobTransferSpecAzureBlobStorageDataSource?
  azureBlobStorageDataSource;

  final StorageTransferJobTransferSpecGcsDataSink? gcsDataSink;

  final StorageTransferJobTransferSpecGcsDataSource? gcsDataSource;

  final StorageTransferJobTransferSpecHdfsDataSource? hdfsDataSource;

  final StorageTransferJobTransferSpecHttpDataSource? httpDataSource;

  final StorageTransferJobTransferSpecObjectConditions? objectConditions;

  final StorageTransferJobTransferSpecPosixDataSink? posixDataSink;

  final StorageTransferJobTransferSpecPosixDataSource? posixDataSource;

  final StorageTransferJobTransferSpecTransferManifest? transferManifest;

  final StorageTransferJobTransferSpecTransferOptions? transferOptions;

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
final class StorageTransferJobTransferSpecAwsS3CompatibleDataSource {
  const StorageTransferJobTransferSpecAwsS3CompatibleDataSource({
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

  final StorageTransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata?
  s3Metadata;

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
final class StorageTransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata {
  const StorageTransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata({
    this.authMethod,
    this.listApi,
    this.protocol,
    this.requestModel,
  });

  final TfArg<String>? authMethod;

  final TfArg<String>? listApi;

  final TfArg<String>? protocol;

  final TfArg<String>? requestModel;

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
final class StorageTransferJobTransferSpecAwsS3DataSource {
  const StorageTransferJobTransferSpecAwsS3DataSource({
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

  final StorageTransferJobTransferSpecAwsS3DataSourceAwsAccessKey? awsAccessKey;

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
final class StorageTransferJobTransferSpecAwsS3DataSourceAwsAccessKey {
  const StorageTransferJobTransferSpecAwsS3DataSourceAwsAccessKey({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'secret_access_key': secretAccessKey.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec.azure_blob_storage_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecAzureBlobStorageDataSource {
  const StorageTransferJobTransferSpecAzureBlobStorageDataSource({
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

  final StorageTransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials?
  azureCredentials;

  final StorageTransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig?
  federatedIdentityConfig;

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
final class StorageTransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials {
  const StorageTransferJobTransferSpecAzureBlobStorageDataSourceAzureCredentials({
    required this.sasToken,
  });

  final TfArg<String> sasToken;

  Map<String, Object?> encode() => {'sas_token': sasToken.toTfJson()};
}

/// Typed helper for the `transfer_spec.azure_blob_storage_data_source.federated_identity_config` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig {
  const StorageTransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig({
    required this.clientId,
    required this.tenantId,
  });

  final TfArg<String> clientId;

  final TfArg<String> tenantId;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec.gcs_data_sink` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecGcsDataSink {
  const StorageTransferJobTransferSpecGcsDataSink({
    required this.bucketName,
    this.path,
  });

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec.gcs_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecGcsDataSource {
  const StorageTransferJobTransferSpecGcsDataSource({
    required this.bucketName,
    this.path,
  });

  final RefTo<GoogleStorageBucket> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('name').toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `transfer_spec.hdfs_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecHdfsDataSource {
  const StorageTransferJobTransferSpecHdfsDataSource({required this.path});

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `transfer_spec.http_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecHttpDataSource {
  const StorageTransferJobTransferSpecHttpDataSource({required this.listUrl});

  final TfArg<String> listUrl;

  Map<String, Object?> encode() => {'list_url': listUrl.toTfJson()};
}

/// Typed helper for the `transfer_spec.object_conditions` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecObjectConditions {
  const StorageTransferJobTransferSpecObjectConditions({
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

/// Typed helper for the `transfer_spec.posix_data_sink` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecPosixDataSink {
  const StorageTransferJobTransferSpecPosixDataSink({
    required this.rootDirectory,
  });

  final TfArg<String> rootDirectory;

  Map<String, Object?> encode() => {'root_directory': rootDirectory.toTfJson()};
}

/// Typed helper for the `transfer_spec.posix_data_source` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecPosixDataSource {
  const StorageTransferJobTransferSpecPosixDataSource({
    required this.rootDirectory,
  });

  final TfArg<String> rootDirectory;

  Map<String, Object?> encode() => {'root_directory': rootDirectory.toTfJson()};
}

/// Typed helper for the `transfer_spec.transfer_manifest` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecTransferManifest {
  const StorageTransferJobTransferSpecTransferManifest({
    required this.location,
  });

  final TfArg<String> location;

  Map<String, Object?> encode() => {'location': location.toTfJson()};
}

/// Typed helper for the `transfer_spec.transfer_options` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecTransferOptions {
  const StorageTransferJobTransferSpecTransferOptions({
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

  final StorageTransferJobTransferSpecTransferOptionsMetadataOptions?
  metadataOptions;

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

/// Typed helper for the `transfer_spec.transfer_options.metadata_options` block of
/// `google_storage_transfer_job` (derived from provider schema).
@immutable
final class StorageTransferJobTransferSpecTransferOptionsMetadataOptions {
  const StorageTransferJobTransferSpecTransferOptionsMetadataOptions({
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
///   localName: 'copy',
///   description: TfArg.literal('terradart disabled gcs copy'),
///   status: TfArg.literal('DISABLED'),
///   transferSpec: StorageTransferJobTransferSpec(
///     gcsDataSource: StorageTransferJobTransferSpecGcsDataSource(
///       bucketName: src.ref,
///     ),
///     gcsDataSink: StorageTransferJobTransferSpecGcsDataSink(
///       bucketName: dst.ref,
///     ),
///   ),
/// );
/// ```
final class GoogleStorageTransferJob extends Resource {
  static const String tfType = 'google_storage_transfer_job';

  GoogleStorageTransferJob({
    required super.localName,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
