// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_pubsub_topic`.
const Set<String> _googlePubsubTopicSensitive = <String>{};

enum PubsubTopicSchemaEncoding implements TerraformEnum {
  encodingUnspecified('ENCODING_UNSPECIFIED'),
  json('JSON'),
  binary('BINARY');

  const PubsubTopicSchemaEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

enum PubsubTopicPlatformLogsSeverity implements TerraformEnum {
  severityUnspecified('SEVERITY_UNSPECIFIED'),
  disabled('DISABLED'),
  debug('DEBUG'),
  info('INFO'),
  warning('WARNING'),
  error('ERROR');

  const PubsubTopicPlatformLogsSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ingestion_data_source_settings` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettings {
  const PubsubTopicIngestionDataSourceSettings({
    this.source,
    this.platformLogsSettings,
  });

  final PubsubTopicIngestionDataSourceSettingsSource? source;

  final PubsubTopicIngestionDataSourceSettingsPlatformLogsSettings?
  platformLogsSettings;

  Map<String, Object?> encode() => {
    ...?source?.encode(),
    'platform_logs_settings': ?platformLogsSettings?.encode(),
  };
}

/// At most one of `aws_kinesis`, `cloud_storage`, `azure_event_hubs`, `aws_msk`, `confluent_cloud` on the `ingestion_data_source_settings` block of `google_pubsub_topic`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.awsKinesis(...)`.
sealed class PubsubTopicIngestionDataSourceSettingsSource {
  const PubsubTopicIngestionDataSourceSettingsSource();

  /// Sets `aws_kinesis`.
  const factory PubsubTopicIngestionDataSourceSettingsSource.awsKinesis(
    PubsubTopicIngestionDataSourceSettingsAwsKinesis awsKinesis,
  ) = PubsubTopicIngestionDataSourceSettingsSourceAwsKinesis;

  /// Sets `cloud_storage`.
  const factory PubsubTopicIngestionDataSourceSettingsSource.cloudStorage(
    PubsubTopicIngestionDataSourceSettingsCloudStorage cloudStorage,
  ) = PubsubTopicIngestionDataSourceSettingsSourceCloudStorage;

  /// Sets `azure_event_hubs`.
  const factory PubsubTopicIngestionDataSourceSettingsSource.azureEventHubs(
    PubsubTopicIngestionDataSourceSettingsAzureEventHubs azureEventHubs,
  ) = PubsubTopicIngestionDataSourceSettingsSourceAzureEventHubs;

  /// Sets `aws_msk`.
  const factory PubsubTopicIngestionDataSourceSettingsSource.awsMsk(
    PubsubTopicIngestionDataSourceSettingsAwsMsk awsMsk,
  ) = PubsubTopicIngestionDataSourceSettingsSourceAwsMsk;

  /// Sets `confluent_cloud`.
  const factory PubsubTopicIngestionDataSourceSettingsSource.confluentCloud(
    PubsubTopicIngestionDataSourceSettingsConfluentCloud confluentCloud,
  ) = PubsubTopicIngestionDataSourceSettingsSourceConfluentCloud;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PubsubTopicIngestionDataSourceSettingsSource.awsKinesis] choice: sets `aws_kinesis`.
final class PubsubTopicIngestionDataSourceSettingsSourceAwsKinesis
    extends PubsubTopicIngestionDataSourceSettingsSource {
  const PubsubTopicIngestionDataSourceSettingsSourceAwsKinesis(this.awsKinesis);

  final PubsubTopicIngestionDataSourceSettingsAwsKinesis awsKinesis;

  @override
  String get blockKey => 'aws_kinesis';

  @override
  Map<String, Object?> encode() => {'aws_kinesis': awsKinesis.encode()};
}

/// The [PubsubTopicIngestionDataSourceSettingsSource.cloudStorage] choice: sets `cloud_storage`.
final class PubsubTopicIngestionDataSourceSettingsSourceCloudStorage
    extends PubsubTopicIngestionDataSourceSettingsSource {
  const PubsubTopicIngestionDataSourceSettingsSourceCloudStorage(
    this.cloudStorage,
  );

  final PubsubTopicIngestionDataSourceSettingsCloudStorage cloudStorage;

  @override
  String get blockKey => 'cloud_storage';

  @override
  Map<String, Object?> encode() => {'cloud_storage': cloudStorage.encode()};
}

/// The [PubsubTopicIngestionDataSourceSettingsSource.azureEventHubs] choice: sets `azure_event_hubs`.
final class PubsubTopicIngestionDataSourceSettingsSourceAzureEventHubs
    extends PubsubTopicIngestionDataSourceSettingsSource {
  const PubsubTopicIngestionDataSourceSettingsSourceAzureEventHubs(
    this.azureEventHubs,
  );

  final PubsubTopicIngestionDataSourceSettingsAzureEventHubs azureEventHubs;

  @override
  String get blockKey => 'azure_event_hubs';

  @override
  Map<String, Object?> encode() => {
    'azure_event_hubs': azureEventHubs.encode(),
  };
}

/// The [PubsubTopicIngestionDataSourceSettingsSource.awsMsk] choice: sets `aws_msk`.
final class PubsubTopicIngestionDataSourceSettingsSourceAwsMsk
    extends PubsubTopicIngestionDataSourceSettingsSource {
  const PubsubTopicIngestionDataSourceSettingsSourceAwsMsk(this.awsMsk);

  final PubsubTopicIngestionDataSourceSettingsAwsMsk awsMsk;

  @override
  String get blockKey => 'aws_msk';

  @override
  Map<String, Object?> encode() => {'aws_msk': awsMsk.encode()};
}

/// The [PubsubTopicIngestionDataSourceSettingsSource.confluentCloud] choice: sets `confluent_cloud`.
final class PubsubTopicIngestionDataSourceSettingsSourceConfluentCloud
    extends PubsubTopicIngestionDataSourceSettingsSource {
  const PubsubTopicIngestionDataSourceSettingsSourceConfluentCloud(
    this.confluentCloud,
  );

  final PubsubTopicIngestionDataSourceSettingsConfluentCloud confluentCloud;

  @override
  String get blockKey => 'confluent_cloud';

  @override
  Map<String, Object?> encode() => {'confluent_cloud': confluentCloud.encode()};
}

/// Typed helper for the `ingestion_data_source_settings.aws_kinesis` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsAwsKinesis {
  const PubsubTopicIngestionDataSourceSettingsAwsKinesis({
    required this.awsRoleArn,
    required this.consumerArn,
    required this.gcpServiceAccount,
    required this.streamArn,
  });

  final TfArg<String> awsRoleArn;

  final TfArg<String> consumerArn;

  final TfArg<String> gcpServiceAccount;

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {
    'aws_role_arn': awsRoleArn.toTfJson(),
    'consumer_arn': consumerArn.toTfJson(),
    'gcp_service_account': gcpServiceAccount.toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Typed helper for the `ingestion_data_source_settings.aws_msk` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsAwsMsk {
  const PubsubTopicIngestionDataSourceSettingsAwsMsk({
    required this.awsRoleArn,
    required this.clusterArn,
    required this.gcpServiceAccount,
    required this.topic,
  });

  final TfArg<String> awsRoleArn;

  final TfArg<String> clusterArn;

  final TfArg<String> gcpServiceAccount;

  final TfArg<String> topic;

  Map<String, Object?> encode() => {
    'aws_role_arn': awsRoleArn.toTfJson(),
    'cluster_arn': clusterArn.toTfJson(),
    'gcp_service_account': gcpServiceAccount.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// Typed helper for the `ingestion_data_source_settings.azure_event_hubs` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsAzureEventHubs {
  const PubsubTopicIngestionDataSourceSettingsAzureEventHubs({
    this.clientId,
    this.eventHub,
    this.gcpServiceAccount,
    this.namespace,
    this.resourceGroup,
    this.subscriptionId,
    this.tenantId,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? eventHub;

  final TfArg<String>? gcpServiceAccount;

  final TfArg<String>? namespace;

  final TfArg<String>? resourceGroup;

  final TfArg<String>? subscriptionId;

  final TfArg<String>? tenantId;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'event_hub': ?eventHub?.toTfJson(),
    'gcp_service_account': ?gcpServiceAccount?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'resource_group': ?resourceGroup?.toTfJson(),
    'subscription_id': ?subscriptionId?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsCloudStorage {
  const PubsubTopicIngestionDataSourceSettingsCloudStorage({
    required this.bucket,
    this.matchGlob,
    this.minimumObjectCreateTime,
    required this.format,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? matchGlob;

  final TfArg<String>? minimumObjectCreateTime;

  final PubsubTopicIngestionDataSourceSettingsCloudStorageFormat format;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'match_glob': ?matchGlob?.toTfJson(),
    'minimum_object_create_time': ?minimumObjectCreateTime?.toTfJson(),
    ...format.encode(),
  };
}

/// Exactly one of `text_format`, `avro_format`, `pubsub_avro_format` on the `ingestion_data_source_settings.cloud_storage` block of `google_pubsub_topic`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.textFormat(...)`.
sealed class PubsubTopicIngestionDataSourceSettingsCloudStorageFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStorageFormat();

  /// Sets `text_format`.
  const factory PubsubTopicIngestionDataSourceSettingsCloudStorageFormat.textFormat(
    PubsubTopicIngestionDataSourceSettingsCloudStorageTextFormat textFormat,
  ) = PubsubTopicIngestionDataSourceSettingsCloudStorageFormatTextFormat;

  /// Sets `avro_format`.
  const factory PubsubTopicIngestionDataSourceSettingsCloudStorageFormat.avroFormat(
    PubsubTopicIngestionDataSourceSettingsCloudStorageAvroFormat avroFormat,
  ) = PubsubTopicIngestionDataSourceSettingsCloudStorageFormatAvroFormat;

  /// Sets `pubsub_avro_format`.
  const factory PubsubTopicIngestionDataSourceSettingsCloudStorageFormat.pubsubAvroFormat(
    PubsubTopicIngestionDataSourceSettingsCloudStoragePubsubAvroFormat
    pubsubAvroFormat,
  ) = PubsubTopicIngestionDataSourceSettingsCloudStorageFormatPubsubAvroFormat;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PubsubTopicIngestionDataSourceSettingsCloudStorageFormat.textFormat] choice: sets `text_format`.
final class PubsubTopicIngestionDataSourceSettingsCloudStorageFormatTextFormat
    extends PubsubTopicIngestionDataSourceSettingsCloudStorageFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStorageFormatTextFormat(
    this.textFormat,
  );

  final PubsubTopicIngestionDataSourceSettingsCloudStorageTextFormat textFormat;

  @override
  String get blockKey => 'text_format';

  @override
  Map<String, Object?> encode() => {'text_format': textFormat.encode()};
}

/// The [PubsubTopicIngestionDataSourceSettingsCloudStorageFormat.avroFormat] choice: sets `avro_format`.
final class PubsubTopicIngestionDataSourceSettingsCloudStorageFormatAvroFormat
    extends PubsubTopicIngestionDataSourceSettingsCloudStorageFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStorageFormatAvroFormat(
    this.avroFormat,
  );

  final PubsubTopicIngestionDataSourceSettingsCloudStorageAvroFormat avroFormat;

  @override
  String get blockKey => 'avro_format';

  @override
  Map<String, Object?> encode() => {'avro_format': avroFormat.encode()};
}

/// The [PubsubTopicIngestionDataSourceSettingsCloudStorageFormat.pubsubAvroFormat] choice: sets `pubsub_avro_format`.
final class PubsubTopicIngestionDataSourceSettingsCloudStorageFormatPubsubAvroFormat
    extends PubsubTopicIngestionDataSourceSettingsCloudStorageFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStorageFormatPubsubAvroFormat(
    this.pubsubAvroFormat,
  );

  final PubsubTopicIngestionDataSourceSettingsCloudStoragePubsubAvroFormat
  pubsubAvroFormat;

  @override
  String get blockKey => 'pubsub_avro_format';

  @override
  Map<String, Object?> encode() => {
    'pubsub_avro_format': pubsubAvroFormat.encode(),
  };
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage.avro_format` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsCloudStorageAvroFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStorageAvroFormat();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage.pubsub_avro_format` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsCloudStoragePubsubAvroFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStoragePubsubAvroFormat();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage.text_format` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsCloudStorageTextFormat {
  const PubsubTopicIngestionDataSourceSettingsCloudStorageTextFormat({
    this.delimiter,
  });

  final TfArg<String>? delimiter;

  Map<String, Object?> encode() => {'delimiter': ?delimiter?.toTfJson()};
}

/// Typed helper for the `ingestion_data_source_settings.confluent_cloud` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsConfluentCloud {
  const PubsubTopicIngestionDataSourceSettingsConfluentCloud({
    required this.bootstrapServer,
    this.clusterId,
    required this.gcpServiceAccount,
    required this.identityPoolId,
    required this.topic,
  });

  final TfArg<String> bootstrapServer;

  final TfArg<String>? clusterId;

  final TfArg<String> gcpServiceAccount;

  final TfArg<String> identityPoolId;

  final TfArg<String> topic;

  Map<String, Object?> encode() => {
    'bootstrap_server': bootstrapServer.toTfJson(),
    'cluster_id': ?clusterId?.toTfJson(),
    'gcp_service_account': gcpServiceAccount.toTfJson(),
    'identity_pool_id': identityPoolId.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// Typed helper for the `ingestion_data_source_settings.platform_logs_settings` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettingsPlatformLogsSettings {
  const PubsubTopicIngestionDataSourceSettingsPlatformLogsSettings({
    this.severity,
  });

  final TfArg<PubsubTopicPlatformLogsSeverity>? severity;

  Map<String, Object?> encode() => {'severity': ?severity?.toTfJson()};
}

/// Typed helper for the `message_storage_policy` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicMessageStoragePolicy {
  const PubsubTopicMessageStoragePolicy({
    required this.allowedPersistenceRegions,
    this.enforceInTransit,
  });

  final TfArg<List<String>> allowedPersistenceRegions;

  final TfArg<bool>? enforceInTransit;

  Map<String, Object?> encode() => {
    'allowed_persistence_regions': allowedPersistenceRegions.toTfJson(),
    'enforce_in_transit': ?enforceInTransit?.toTfJson(),
  };
}

/// Typed helper for the `message_transforms` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicMessageTransforms {
  const PubsubTopicMessageTransforms({
    this.disabled,
    this.aiInference,
    this.javascriptUdf,
  });

  final TfArg<bool>? disabled;

  final PubsubTopicMessageTransformsAiInference? aiInference;

  final PubsubTopicMessageTransformsJavascriptUdf? javascriptUdf;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'ai_inference': ?aiInference?.encode(),
    'javascript_udf': ?javascriptUdf?.encode(),
  };
}

/// Typed helper for the `message_transforms.ai_inference` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicMessageTransformsAiInference {
  const PubsubTopicMessageTransformsAiInference({
    required this.endpoint,
    this.serviceAccountEmail,
    this.unstructuredInference,
  });

  final TfArg<String> endpoint;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final PubsubTopicMessageTransformsAiInferenceUnstructuredInference?
  unstructuredInference;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'unstructured_inference': ?unstructuredInference?.encode(),
  };
}

/// Typed helper for the `message_transforms.ai_inference.unstructured_inference` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicMessageTransformsAiInferenceUnstructuredInference {
  const PubsubTopicMessageTransformsAiInferenceUnstructuredInference({
    this.parameters,
  });

  final TfArg<Map<String, String>>? parameters;

  Map<String, Object?> encode() => {'parameters': ?parameters?.toTfJson()};
}

/// Typed helper for the `message_transforms.javascript_udf` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicMessageTransformsJavascriptUdf {
  const PubsubTopicMessageTransformsJavascriptUdf({
    required this.code,
    required this.functionName,
  });

  final TfArg<String> code;

  final TfArg<String> functionName;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'function_name': functionName.toTfJson(),
  };
}

/// Typed helper for the `schema_settings` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicSchemaSettings {
  const PubsubTopicSchemaSettings({
    this.encoding,
    this.firstRevisionId,
    this.lastRevisionId,
    required this.schema,
  });

  final TfArg<PubsubTopicSchemaEncoding>? encoding;

  final TfArg<String>? firstRevisionId;

  final TfArg<String>? lastRevisionId;

  final TfArg<String> schema;

  Map<String, Object?> encode() => {
    'encoding': ?encoding?.toTfJson(),
    'first_revision_id': ?firstRevisionId?.toTfJson(),
    'last_revision_id': ?lastRevisionId?.toTfJson(),
    'schema': schema.toTfJson(),
  };
}

/// Factory wrapper for `google_pubsub_topic`.
///
/// A named resource to which messages are sent by publishers.
///
/// Example:
/// ```dart
/// final o = GooglePubsubTopic(
///   localName: 'orders',
///   name: .literal('orders-prod'),
///   messageRetentionDuration: .literal(
///     const Duration(days: 7).toTfDurationString(),
///   ),
///   schemaSettings: PubsubTopicSchemaSettings(
///     schema: .literal('projects/p/schemas/orders'),
///     encoding: .literal(.json),
///   ),
///   lifecycle: const LifecycleOptions(preventDestroy: true),
/// );
/// ```
final class GooglePubsubTopic extends Resource {
  static const String tfType = 'google_pubsub_topic';

  GooglePubsubTopic({
    required super.localName,
    required TfArg<String> name,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    PubsubTopicMessageStoragePolicy? messageStoragePolicy,
    PubsubTopicSchemaSettings? schemaSettings,
    TfArg<String>? messageRetentionDuration,
    PubsubTopicIngestionDataSourceSettings? ingestionDataSourceSettings,
    List<PubsubTopicMessageTransforms>? messageTransforms,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'labels': ?labels,
           if (messageStoragePolicy != null)
             'message_storage_policy': TfArg.literal(
               messageStoragePolicy.encode(),
             ),
           if (schemaSettings != null)
             'schema_settings': TfArg.literal(schemaSettings.encode()),
           'message_retention_duration': ?messageRetentionDuration,
           if (ingestionDataSourceSettings != null)
             'ingestion_data_source_settings': TfArg.literal(
               ingestionDataSourceSettings.encode(),
             ),
           if (messageTransforms != null)
             'message_transforms': TfArg.literal([
               for (final e in messageTransforms) e.encode(),
             ]),
           'tags': ?tags,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubTopic>`.
  RefTo<GooglePubsubTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
