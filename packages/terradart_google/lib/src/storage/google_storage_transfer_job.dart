// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (eventStreamExpirationTime != null)
      'event_stream_expiration_time': eventStreamExpirationTime!.toTfJson(),
    if (eventStreamStartTime != null)
      'event_stream_start_time': eventStreamStartTime!.toTfJson(),
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

  final TfArg<List<Object?>>? logActionStates;

  final TfArg<List<Object?>>? logActions;

  Map<String, Object?> encode() => {
    if (enableOnPremGcsTransferLogs != null)
      'enable_on_prem_gcs_transfer_logs': enableOnPremGcsTransferLogs!
          .toTfJson(),
    if (logActionStates != null)
      'log_action_states': logActionStates!.toTfJson(),
    if (logActions != null) 'log_actions': logActions!.toTfJson(),
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

  final TfArg<List<Object?>>? eventTypes;

  final TfArg<String> payloadFormat;

  final TfArg<String> pubsubTopic;

  Map<String, Object?> encode() => {
    if (eventTypes != null) 'event_types': eventTypes!.toTfJson(),
    'payload_format': payloadFormat.toTfJson(),
    'pubsub_topic': pubsubTopic.toTfJson(),
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
    if (gcsDataSink != null) 'gcs_data_sink': gcsDataSink!.encode(),
    if (gcsDataSource != null) 'gcs_data_source': gcsDataSource!.encode(),
    if (objectConditions != null)
      'object_conditions': objectConditions!.encode(),
    if (transferOptions != null) 'transfer_options': transferOptions!.encode(),
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

  final TfArg<String> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
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

  final TfArg<String> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
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

  final TfArg<List<Object?>>? excludePrefixes;

  final TfArg<List<Object?>>? includePrefixes;

  final TfArg<String>? lastModifiedBefore;

  final TfArg<String>? lastModifiedSince;

  final TfArg<String>? maxTimeElapsedSinceLastModification;

  final TfArg<String>? minTimeElapsedSinceLastModification;

  Map<String, Object?> encode() => {
    if (excludePrefixes != null)
      'exclude_prefixes': excludePrefixes!.toTfJson(),
    if (includePrefixes != null)
      'include_prefixes': includePrefixes!.toTfJson(),
    if (lastModifiedBefore != null)
      'last_modified_before': lastModifiedBefore!.toTfJson(),
    if (lastModifiedSince != null)
      'last_modified_since': lastModifiedSince!.toTfJson(),
    if (maxTimeElapsedSinceLastModification != null)
      'max_time_elapsed_since_last_modification':
          maxTimeElapsedSinceLastModification!.toTfJson(),
    if (minTimeElapsedSinceLastModification != null)
      'min_time_elapsed_since_last_modification':
          minTimeElapsedSinceLastModification!.toTfJson(),
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
    if (deleteObjectsFromSourceAfterTransfer != null)
      'delete_objects_from_source_after_transfer':
          deleteObjectsFromSourceAfterTransfer!.toTfJson(),
    if (deleteObjectsUniqueInSink != null)
      'delete_objects_unique_in_sink': deleteObjectsUniqueInSink!.toTfJson(),
    if (overwriteObjectsAlreadyExistingInSink != null)
      'overwrite_objects_already_existing_in_sink':
          overwriteObjectsAlreadyExistingInSink!.toTfJson(),
    if (overwriteWhen != null) 'overwrite_when': overwriteWhen!.toTfJson(),
    if (metadataOptions != null) 'metadata_options': metadataOptions!.encode(),
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
    if (acl != null) 'acl': acl!.toTfJson(),
    if (gid != null) 'gid': gid!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
    if (symlink != null) 'symlink': symlink!.toTfJson(),
    if (temporaryHold != null) 'temporary_hold': temporaryHold!.toTfJson(),
    if (timeCreated != null) 'time_created': timeCreated!.toTfJson(),
    if (uid != null) 'uid': uid!.toTfJson(),
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
    if (repeatInterval != null) 'repeat_interval': repeatInterval!.toTfJson(),
    if (scheduleEndDate != null) 'schedule_end_date': scheduleEndDate!.encode(),
    'schedule_start_date': scheduleStartDate.encode(),
    if (startTimeOfDay != null) 'start_time_of_day': startTimeOfDay!.encode(),
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
    if (sinkAgentPoolName != null)
      'sink_agent_pool_name': sinkAgentPoolName!.toTfJson(),
    if (sourceAgentPoolName != null)
      'source_agent_pool_name': sourceAgentPoolName!.toTfJson(),
    if (awsS3CompatibleDataSource != null)
      'aws_s3_compatible_data_source': awsS3CompatibleDataSource!.encode(),
    if (awsS3DataSource != null)
      'aws_s3_data_source': awsS3DataSource!.encode(),
    if (azureBlobStorageDataSource != null)
      'azure_blob_storage_data_source': azureBlobStorageDataSource!.encode(),
    if (gcsDataSink != null) 'gcs_data_sink': gcsDataSink!.encode(),
    if (gcsDataSource != null) 'gcs_data_source': gcsDataSource!.encode(),
    if (hdfsDataSource != null) 'hdfs_data_source': hdfsDataSource!.encode(),
    if (httpDataSource != null) 'http_data_source': httpDataSource!.encode(),
    if (objectConditions != null)
      'object_conditions': objectConditions!.encode(),
    if (posixDataSink != null) 'posix_data_sink': posixDataSink!.encode(),
    if (posixDataSource != null) 'posix_data_source': posixDataSource!.encode(),
    if (transferManifest != null)
      'transfer_manifest': transferManifest!.encode(),
    if (transferOptions != null) 'transfer_options': transferOptions!.encode(),
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
    if (path != null) 'path': path!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (s3Metadata != null) 's3_metadata': s3Metadata!.encode(),
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
    if (authMethod != null) 'auth_method': authMethod!.toTfJson(),
    if (listApi != null) 'list_api': listApi!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (requestModel != null) 'request_model': requestModel!.toTfJson(),
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
    if (cloudfrontDomain != null)
      'cloudfront_domain': cloudfrontDomain!.toTfJson(),
    if (credentialsSecret != null)
      'credentials_secret': credentialsSecret!.toTfJson(),
    if (managedPrivateNetwork != null)
      'managed_private_network': managedPrivateNetwork!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (awsAccessKey != null) 'aws_access_key': awsAccessKey!.encode(),
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
    if (credentialsSecret != null)
      'credentials_secret': credentialsSecret!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (privateNetworkService != null)
      'private_network_service': privateNetworkService!.toTfJson(),
    'storage_account': storageAccount.toTfJson(),
    if (azureCredentials != null)
      'azure_credentials': azureCredentials!.encode(),
    if (federatedIdentityConfig != null)
      'federated_identity_config': federatedIdentityConfig!.encode(),
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

  final TfArg<String> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
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

  final TfArg<String> bucketName;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
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

  final TfArg<List<Object?>>? excludePrefixes;

  final TfArg<List<Object?>>? includePrefixes;

  final TfArg<String>? lastModifiedBefore;

  final TfArg<String>? lastModifiedSince;

  final TfArg<String>? maxTimeElapsedSinceLastModification;

  final TfArg<String>? minTimeElapsedSinceLastModification;

  Map<String, Object?> encode() => {
    if (excludePrefixes != null)
      'exclude_prefixes': excludePrefixes!.toTfJson(),
    if (includePrefixes != null)
      'include_prefixes': includePrefixes!.toTfJson(),
    if (lastModifiedBefore != null)
      'last_modified_before': lastModifiedBefore!.toTfJson(),
    if (lastModifiedSince != null)
      'last_modified_since': lastModifiedSince!.toTfJson(),
    if (maxTimeElapsedSinceLastModification != null)
      'max_time_elapsed_since_last_modification':
          maxTimeElapsedSinceLastModification!.toTfJson(),
    if (minTimeElapsedSinceLastModification != null)
      'min_time_elapsed_since_last_modification':
          minTimeElapsedSinceLastModification!.toTfJson(),
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
    if (deleteObjectsFromSourceAfterTransfer != null)
      'delete_objects_from_source_after_transfer':
          deleteObjectsFromSourceAfterTransfer!.toTfJson(),
    if (deleteObjectsUniqueInSink != null)
      'delete_objects_unique_in_sink': deleteObjectsUniqueInSink!.toTfJson(),
    if (overwriteObjectsAlreadyExistingInSink != null)
      'overwrite_objects_already_existing_in_sink':
          overwriteObjectsAlreadyExistingInSink!.toTfJson(),
    if (overwriteWhen != null) 'overwrite_when': overwriteWhen!.toTfJson(),
    if (metadataOptions != null) 'metadata_options': metadataOptions!.encode(),
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
    if (acl != null) 'acl': acl!.toTfJson(),
    if (gid != null) 'gid': gid!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
    if (symlink != null) 'symlink': symlink!.toTfJson(),
    if (temporaryHold != null) 'temporary_hold': temporaryHold!.toTfJson(),
    if (timeCreated != null) 'time_created': timeCreated!.toTfJson(),
    if (uid != null) 'uid': uid!.toTfJson(),
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
///       bucketName: TfArg.ref(src.nameRef),
///     ),
///     gcsDataSink: StorageTransferJobTransferSpecGcsDataSink(
///       bucketName: TfArg.ref(dst.nameRef),
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
    TfArg<String>? serviceAccount,
    TfArg<String>? name,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           if (transferSpec != null)
             'transfer_spec': TfArg.literal(transferSpec.encode()),
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
           if (status != null) 'status': status,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (name != null) 'name': name,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageTransferJobSensitive;

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
