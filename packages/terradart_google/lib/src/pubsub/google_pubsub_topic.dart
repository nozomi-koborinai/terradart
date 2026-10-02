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

extension type const PubsubTopicSchemaEncoding._(TfArg<String> _)
    implements TfArg<String> {
  PubsubTopicSchemaEncoding.variable(String name)
    : this._(TfArg.variable(name));
  PubsubTopicSchemaEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const PubsubTopicSchemaEncoding.arg(TfArg<String> arg) : this._(arg);

  static const encodingUnspecified = PubsubTopicSchemaEncoding._(
    TfArgLiteral('ENCODING_UNSPECIFIED'),
  );
  static const json = PubsubTopicSchemaEncoding._(TfArgLiteral('JSON'));
  static const binary = PubsubTopicSchemaEncoding._(TfArgLiteral('BINARY'));

  static const List<PubsubTopicSchemaEncoding> values = [
    encodingUnspecified,
    json,
    binary,
  ];
}

extension type const PubsubTopicPlatformLogsSeverity._(TfArg<String> _)
    implements TfArg<String> {
  PubsubTopicPlatformLogsSeverity.variable(String name)
    : this._(TfArg.variable(name));
  PubsubTopicPlatformLogsSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const PubsubTopicPlatformLogsSeverity.arg(TfArg<String> arg) : this._(arg);

  static const severityUnspecified = PubsubTopicPlatformLogsSeverity._(
    TfArgLiteral('SEVERITY_UNSPECIFIED'),
  );
  static const disabled = PubsubTopicPlatformLogsSeverity._(
    TfArgLiteral('DISABLED'),
  );
  static const debug = PubsubTopicPlatformLogsSeverity._(TfArgLiteral('DEBUG'));
  static const info = PubsubTopicPlatformLogsSeverity._(TfArgLiteral('INFO'));
  static const warning = PubsubTopicPlatformLogsSeverity._(
    TfArgLiteral('WARNING'),
  );
  static const error = PubsubTopicPlatformLogsSeverity._(TfArgLiteral('ERROR'));

  static const List<PubsubTopicPlatformLogsSeverity> values = [
    severityUnspecified,
    disabled,
    debug,
    info,
    warning,
    error,
  ];
}

/// Typed helper for the `ingestion_data_source_settings` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicIngestionDataSourceSettings {
  const PubsubTopicIngestionDataSourceSettings({
    this.source,
    this.platformLogsSettings,
  });

  final PubsubTopicSource? source;

  final PubsubTopicPlatformLogsSettings? platformLogsSettings;

  @internal
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
sealed class PubsubTopicSource {
  const PubsubTopicSource();

  /// Sets `aws_kinesis`.
  const factory PubsubTopicSource.awsKinesis(PubsubTopicAwsKinesis awsKinesis) =
      PubsubTopicSourceAwsKinesis;

  /// Sets `cloud_storage`.
  const factory PubsubTopicSource.cloudStorage(
    PubsubTopicCloudStorage cloudStorage,
  ) = PubsubTopicSourceCloudStorage;

  /// Sets `azure_event_hubs`.
  const factory PubsubTopicSource.azureEventHubs(
    PubsubTopicAzureEventHubs azureEventHubs,
  ) = PubsubTopicSourceAzureEventHubs;

  /// Sets `aws_msk`.
  const factory PubsubTopicSource.awsMsk(PubsubTopicAwsMsk awsMsk) =
      PubsubTopicSourceAwsMsk;

  /// Sets `confluent_cloud`.
  const factory PubsubTopicSource.confluentCloud(
    PubsubTopicConfluentCloud confluentCloud,
  ) = PubsubTopicSourceConfluentCloud;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PubsubTopicSource.awsKinesis] choice: sets `aws_kinesis`.
final class PubsubTopicSourceAwsKinesis extends PubsubTopicSource {
  const PubsubTopicSourceAwsKinesis(this.awsKinesis);

  final PubsubTopicAwsKinesis awsKinesis;

  @internal
  @override
  String get blockKey => 'aws_kinesis';

  @internal
  @override
  Map<String, Object?> encode() => {'aws_kinesis': awsKinesis.encode()};
}

/// The [PubsubTopicSource.cloudStorage] choice: sets `cloud_storage`.
final class PubsubTopicSourceCloudStorage extends PubsubTopicSource {
  const PubsubTopicSourceCloudStorage(this.cloudStorage);

  final PubsubTopicCloudStorage cloudStorage;

  @internal
  @override
  String get blockKey => 'cloud_storage';

  @internal
  @override
  Map<String, Object?> encode() => {'cloud_storage': cloudStorage.encode()};
}

/// The [PubsubTopicSource.azureEventHubs] choice: sets `azure_event_hubs`.
final class PubsubTopicSourceAzureEventHubs extends PubsubTopicSource {
  const PubsubTopicSourceAzureEventHubs(this.azureEventHubs);

  final PubsubTopicAzureEventHubs azureEventHubs;

  @internal
  @override
  String get blockKey => 'azure_event_hubs';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_event_hubs': azureEventHubs.encode(),
  };
}

/// The [PubsubTopicSource.awsMsk] choice: sets `aws_msk`.
final class PubsubTopicSourceAwsMsk extends PubsubTopicSource {
  const PubsubTopicSourceAwsMsk(this.awsMsk);

  final PubsubTopicAwsMsk awsMsk;

  @internal
  @override
  String get blockKey => 'aws_msk';

  @internal
  @override
  Map<String, Object?> encode() => {'aws_msk': awsMsk.encode()};
}

/// The [PubsubTopicSource.confluentCloud] choice: sets `confluent_cloud`.
final class PubsubTopicSourceConfluentCloud extends PubsubTopicSource {
  const PubsubTopicSourceConfluentCloud(this.confluentCloud);

  final PubsubTopicConfluentCloud confluentCloud;

  @internal
  @override
  String get blockKey => 'confluent_cloud';

  @internal
  @override
  Map<String, Object?> encode() => {'confluent_cloud': confluentCloud.encode()};
}

/// Typed helper for the `ingestion_data_source_settings.aws_kinesis` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicAwsKinesis {
  const PubsubTopicAwsKinesis({
    required this.awsRoleArn,
    required this.consumerArn,
    required this.gcpServiceAccount,
    required this.streamArn,
  });

  final TfArg<String> awsRoleArn;

  final TfArg<String> consumerArn;

  final TfArg<String> gcpServiceAccount;

  final TfArg<String> streamArn;

  @internal
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
final class PubsubTopicAwsMsk {
  const PubsubTopicAwsMsk({
    required this.awsRoleArn,
    required this.clusterArn,
    required this.gcpServiceAccount,
    required this.topic,
  });

  final TfArg<String> awsRoleArn;

  final TfArg<String> clusterArn;

  final TfArg<String> gcpServiceAccount;

  final TfArg<String> topic;

  @internal
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
final class PubsubTopicAzureEventHubs {
  const PubsubTopicAzureEventHubs({
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

  @internal
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
final class PubsubTopicCloudStorage {
  const PubsubTopicCloudStorage({
    required this.bucket,
    this.matchGlob,
    this.minimumObjectCreateTime,
    required this.format,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? matchGlob;

  final TfArg<String>? minimumObjectCreateTime;

  final PubsubTopicFormat format;

  @internal
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
sealed class PubsubTopicFormat {
  const PubsubTopicFormat();

  /// Sets `text_format`.
  const factory PubsubTopicFormat.textFormat(PubsubTopicTextFormat textFormat) =
      PubsubTopicTextFormatChoice;

  /// Sets `avro_format`.
  const factory PubsubTopicFormat.avroFormat([
    PubsubTopicAvroFormat avroFormat,
  ]) = PubsubTopicAvroFormatChoice;

  /// Sets `pubsub_avro_format`.
  const factory PubsubTopicFormat.pubsubAvroFormat([
    PubsubTopicPubsubAvroFormat pubsubAvroFormat,
  ]) = PubsubTopicPubsubAvroFormatChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [PubsubTopicFormat.textFormat] choice: sets `text_format`.
final class PubsubTopicTextFormatChoice extends PubsubTopicFormat {
  const PubsubTopicTextFormatChoice(this.textFormat);

  final PubsubTopicTextFormat textFormat;

  @internal
  @override
  String get blockKey => 'text_format';

  @internal
  @override
  Map<String, Object?> encode() => {'text_format': textFormat.encode()};
}

/// The [PubsubTopicFormat.avroFormat] choice: sets `avro_format`.
final class PubsubTopicAvroFormatChoice extends PubsubTopicFormat {
  const PubsubTopicAvroFormatChoice([
    this.avroFormat = const PubsubTopicAvroFormat(),
  ]);

  final PubsubTopicAvroFormat avroFormat;

  @internal
  @override
  String get blockKey => 'avro_format';

  @internal
  @override
  Map<String, Object?> encode() => {'avro_format': avroFormat.encode()};
}

/// The [PubsubTopicFormat.pubsubAvroFormat] choice: sets `pubsub_avro_format`.
final class PubsubTopicPubsubAvroFormatChoice extends PubsubTopicFormat {
  const PubsubTopicPubsubAvroFormatChoice([
    this.pubsubAvroFormat = const PubsubTopicPubsubAvroFormat(),
  ]);

  final PubsubTopicPubsubAvroFormat pubsubAvroFormat;

  @internal
  @override
  String get blockKey => 'pubsub_avro_format';

  @internal
  @override
  Map<String, Object?> encode() => {
    'pubsub_avro_format': pubsubAvroFormat.encode(),
  };
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage.avro_format` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicAvroFormat {
  const PubsubTopicAvroFormat();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage.pubsub_avro_format` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicPubsubAvroFormat {
  const PubsubTopicPubsubAvroFormat();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `ingestion_data_source_settings.cloud_storage.text_format` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicTextFormat {
  const PubsubTopicTextFormat({this.delimiter});

  final TfArg<String>? delimiter;

  @internal
  Map<String, Object?> encode() => {'delimiter': ?delimiter?.toTfJson()};
}

/// Typed helper for the `ingestion_data_source_settings.confluent_cloud` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicConfluentCloud {
  const PubsubTopicConfluentCloud({
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

  @internal
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
final class PubsubTopicPlatformLogsSettings {
  const PubsubTopicPlatformLogsSettings({this.severity});

  final PubsubTopicPlatformLogsSeverity? severity;

  @internal
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

  @internal
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

  final PubsubTopicAiInference? aiInference;

  final PubsubTopicJavascriptUdf? javascriptUdf;

  @internal
  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'ai_inference': ?aiInference?.encode(),
    'javascript_udf': ?javascriptUdf?.encode(),
  };
}

/// Typed helper for the `message_transforms.ai_inference` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicAiInference {
  const PubsubTopicAiInference({
    required this.endpoint,
    this.serviceAccountEmail,
    this.unstructuredInference,
  });

  final TfArg<String> endpoint;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final PubsubTopicUnstructuredInference? unstructuredInference;

  @internal
  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'unstructured_inference': ?unstructuredInference?.encode(),
  };
}

/// Typed helper for the `message_transforms.ai_inference.unstructured_inference` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicUnstructuredInference {
  const PubsubTopicUnstructuredInference({this.parameters});

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {'parameters': ?parameters?.toTfJson()};
}

/// Typed helper for the `message_transforms.javascript_udf` block of
/// `google_pubsub_topic` (derived from provider schema).
@immutable
final class PubsubTopicJavascriptUdf {
  const PubsubTopicJavascriptUdf({
    required this.code,
    required this.functionName,
  });

  final TfArg<String> code;

  final TfArg<String> functionName;

  @internal
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

  final PubsubTopicSchemaEncoding? encoding;

  final TfArg<String>? firstRevisionId;

  final TfArg<String>? lastRevisionId;

  final TfArg<String> schema;

  @internal
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
///   'orders',
///   name: .literal('orders-prod'),
///   messageRetentionDuration: .literal(
///     const Duration(days: 7).toTfDurationString(),
///   ),
///   schemaSettings: PubsubTopicSchemaSettings(
///     schema: .literal('projects/p/schemas/orders'),
///     encoding: .json,
///   ),
///   lifecycle: const LifecycleOptions(preventDestroy: true),
/// );
/// ```
final class GooglePubsubTopic extends Resource {
  static const String tfType = 'google_pubsub_topic';

  GooglePubsubTopic(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `message_retention_duration` attribute.
  TfRef<String> get messageRetentionDuration =>
      TfRef.attribute<String>(this, 'message_retention_duration');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
