// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_pubsub_topic.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class AwsKinesis {
  /// Creates a [AwsKinesis] from a JSON map.
  factory AwsKinesis.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  AwsKinesis._(this._json);

  AwsKinesis({
    required String awsRoleArn,
    required String consumerArn,
    required String gcpServiceAccount,
    required String streamArn,
  }) {
    _json = {
      'aws_role_arn': awsRoleArn,
      'consumer_arn': consumerArn,
      'gcp_service_account': gcpServiceAccount,
      'stream_arn': streamArn,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AwsKinesis].
  static const SchemanticType<AwsKinesis> $schema = _AwsKinesisTypeFactory();

  String get awsRoleArn {
    return _json['aws_role_arn'] as String;
  }

  set awsRoleArn(String value) {
    _json['aws_role_arn'] = value;
  }

  String get consumerArn {
    return _json['consumer_arn'] as String;
  }

  set consumerArn(String value) {
    _json['consumer_arn'] = value;
  }

  String get gcpServiceAccount {
    return _json['gcp_service_account'] as String;
  }

  set gcpServiceAccount(String value) {
    _json['gcp_service_account'] = value;
  }

  String get streamArn {
    return _json['stream_arn'] as String;
  }

  set streamArn(String value) {
    _json['stream_arn'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AwsKinesis] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AwsKinesisTypeFactory extends SchemanticType<AwsKinesis> {
  const _AwsKinesisTypeFactory();

  @override
  AwsKinesis parse(Object? json) {
    return AwsKinesis._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AwsKinesis',
    definition: $Schema
        .object(
          properties: {
            'aws_role_arn': $Schema.string(
              description:
                  'AWS role ARN to be used for Federated Identity authentication with\nKinesis. Check the Pub/Sub docs for how to set up this role and the\nrequired permissions that need to be attached to it.',
            ),
            'consumer_arn': $Schema.string(
              description:
                  'The Kinesis consumer ARN to used for ingestion in\nEnhanced Fan-Out mode. The consumer must be already\ncreated and ready to be used.',
            ),
            'gcp_service_account': $Schema.string(
              description:
                  'The GCP service account to be used for Federated Identity authentication\nwith Kinesis (via a \'AssumeRoleWithWebIdentity\' call for the provided\nrole). The \'awsRoleArn\' must be set up with \'accounts.google.com:sub\'\nequals to this service account number.',
            ),
            'stream_arn': $Schema.string(
              description: 'The Kinesis stream ARN to ingest data from.',
            ),
          },
          required: [
            'aws_role_arn',
            'consumer_arn',
            'gcp_service_account',
            'stream_arn',
          ],
          description:
              'Settings for ingestion from Amazon Kinesis Data Streams.',
        )
        .value,
    dependencies: [],
  );
}

base class AwsMsk {
  /// Creates a [AwsMsk] from a JSON map.
  factory AwsMsk.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  AwsMsk._(this._json);

  AwsMsk({
    required String awsRoleArn,
    required String clusterArn,
    required String gcpServiceAccount,
    required String topic,
  }) {
    _json = {
      'aws_role_arn': awsRoleArn,
      'cluster_arn': clusterArn,
      'gcp_service_account': gcpServiceAccount,
      'topic': topic,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AwsMsk].
  static const SchemanticType<AwsMsk> $schema = _AwsMskTypeFactory();

  String get awsRoleArn {
    return _json['aws_role_arn'] as String;
  }

  set awsRoleArn(String value) {
    _json['aws_role_arn'] = value;
  }

  String get clusterArn {
    return _json['cluster_arn'] as String;
  }

  set clusterArn(String value) {
    _json['cluster_arn'] = value;
  }

  String get gcpServiceAccount {
    return _json['gcp_service_account'] as String;
  }

  set gcpServiceAccount(String value) {
    _json['gcp_service_account'] = value;
  }

  String get topic {
    return _json['topic'] as String;
  }

  set topic(String value) {
    _json['topic'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AwsMsk] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AwsMskTypeFactory extends SchemanticType<AwsMsk> {
  const _AwsMskTypeFactory();

  @override
  AwsMsk parse(Object? json) {
    return AwsMsk._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AwsMsk',
    definition: $Schema
        .object(
          properties: {
            'aws_role_arn': $Schema.string(
              description:
                  'AWS role ARN to be used for Federated Identity authentication with\nMSK. Check the Pub/Sub docs for how to set up this role and the\nrequired permissions that need to be attached to it.',
            ),
            'cluster_arn': $Schema.string(
              description: 'ARN that uniquely identifies the MSK cluster.',
            ),
            'gcp_service_account': $Schema.string(
              description:
                  'The GCP service account to be used for Federated Identity authentication\nwith MSK (via a \'AssumeRoleWithWebIdentity\' call for the provided\nrole). The \'awsRoleArn\' must be set up with \'accounts.google.com:sub\'\nequals to this service account number.',
            ),
            'topic': $Schema.string(
              description:
                  'The name of the MSK topic that Pub/Sub will import from.',
            ),
          },
          required: [
            'aws_role_arn',
            'cluster_arn',
            'gcp_service_account',
            'topic',
          ],
          description:
              'Settings for ingestion from Amazon Managed Streaming for Apache Kafka.',
        )
        .value,
    dependencies: [],
  );
}

base class AzureEventHubs {
  /// Creates a [AzureEventHubs] from a JSON map.
  factory AzureEventHubs.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AzureEventHubs._(this._json);

  AzureEventHubs({
    String? clientId,
    String? eventHub,
    String? gcpServiceAccount,
    String? namespace,
    String? resourceGroup,
    String? subscriptionId,
    String? tenantId,
  }) {
    _json = {
      'client_id': ?clientId,
      'event_hub': ?eventHub,
      'gcp_service_account': ?gcpServiceAccount,
      'namespace': ?namespace,
      'resource_group': ?resourceGroup,
      'subscription_id': ?subscriptionId,
      'tenant_id': ?tenantId,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AzureEventHubs].
  static const SchemanticType<AzureEventHubs> $schema =
      _AzureEventHubsTypeFactory();

  String? get clientId {
    return _json['client_id'] as String?;
  }

  set clientId(String? value) {
    if (value == null) {
      _json.remove('client_id');
    } else {
      _json['client_id'] = value;
    }
  }

  String? get eventHub {
    return _json['event_hub'] as String?;
  }

  set eventHub(String? value) {
    if (value == null) {
      _json.remove('event_hub');
    } else {
      _json['event_hub'] = value;
    }
  }

  String? get gcpServiceAccount {
    return _json['gcp_service_account'] as String?;
  }

  set gcpServiceAccount(String? value) {
    if (value == null) {
      _json.remove('gcp_service_account');
    } else {
      _json['gcp_service_account'] = value;
    }
  }

  String? get namespace {
    return _json['namespace'] as String?;
  }

  set namespace(String? value) {
    if (value == null) {
      _json.remove('namespace');
    } else {
      _json['namespace'] = value;
    }
  }

  String? get resourceGroup {
    return _json['resource_group'] as String?;
  }

  set resourceGroup(String? value) {
    if (value == null) {
      _json.remove('resource_group');
    } else {
      _json['resource_group'] = value;
    }
  }

  String? get subscriptionId {
    return _json['subscription_id'] as String?;
  }

  set subscriptionId(String? value) {
    if (value == null) {
      _json.remove('subscription_id');
    } else {
      _json['subscription_id'] = value;
    }
  }

  String? get tenantId {
    return _json['tenant_id'] as String?;
  }

  set tenantId(String? value) {
    if (value == null) {
      _json.remove('tenant_id');
    } else {
      _json['tenant_id'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AzureEventHubs] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AzureEventHubsTypeFactory extends SchemanticType<AzureEventHubs> {
  const _AzureEventHubsTypeFactory();

  @override
  AzureEventHubs parse(Object? json) {
    return AzureEventHubs._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AzureEventHubs',
    definition: $Schema
        .object(
          properties: {
            'client_id': $Schema.string(
              description:
                  'The Azure event hub client ID to use for ingestion.',
            ),
            'event_hub': $Schema.string(
              description: 'The Azure event hub to ingest data from.',
            ),
            'gcp_service_account': $Schema.string(
              description:
                  'The GCP service account to be used for Federated Identity authentication\nwith Azure (via a \'AssumeRoleWithWebIdentity\' call for the provided\nrole).',
            ),
            'namespace': $Schema.string(
              description: 'The Azure event hub namespace to ingest data from.',
            ),
            'resource_group': $Schema.string(
              description:
                  'The name of the resource group within an Azure subscription.',
            ),
            'subscription_id': $Schema.string(
              description:
                  'The Azure event hub subscription ID to use for ingestion.',
            ),
            'tenant_id': $Schema.string(
              description:
                  'The Azure event hub tenant ID to use for ingestion.',
            ),
          },
          description: 'Settings for ingestion from Azure Event Hubs.',
        )
        .value,
    dependencies: [],
  );
}

base class AvroFormat {
  /// Creates a [AvroFormat] from a JSON map.
  factory AvroFormat.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  AvroFormat._(this._json);

  AvroFormat() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AvroFormat].
  static const SchemanticType<AvroFormat> $schema = _AvroFormatTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AvroFormat] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AvroFormatTypeFactory extends SchemanticType<AvroFormat> {
  const _AvroFormatTypeFactory();

  @override
  AvroFormat parse(Object? json) {
    return AvroFormat._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AvroFormat',
    definition: $Schema
        .object(
          properties: {},
          description:
              'Configuration for reading Cloud Storage data in Avro binary format. The\nbytes of each object will be set to the \'data\' field of a Pub/Sub message.',
        )
        .value,
    dependencies: [],
  );
}

base class PubsubAvroFormat {
  /// Creates a [PubsubAvroFormat] from a JSON map.
  factory PubsubAvroFormat.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PubsubAvroFormat._(this._json);

  PubsubAvroFormat() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PubsubAvroFormat].
  static const SchemanticType<PubsubAvroFormat> $schema =
      _PubsubAvroFormatTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PubsubAvroFormat] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PubsubAvroFormatTypeFactory
    extends SchemanticType<PubsubAvroFormat> {
  const _PubsubAvroFormatTypeFactory();

  @override
  PubsubAvroFormat parse(Object? json) {
    return PubsubAvroFormat._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PubsubAvroFormat',
    definition: $Schema
        .object(
          properties: {},
          description:
              'Configuration for reading Cloud Storage data written via Cloud Storage\nsubscriptions(See https://cloud.google.com/pubsub/docs/cloudstorage). The\ndata and attributes fields of the originally exported Pub/Sub message\nwill be restored when publishing.',
        )
        .value,
    dependencies: [],
  );
}

base class TextFormat {
  /// Creates a [TextFormat] from a JSON map.
  factory TextFormat.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  TextFormat._(this._json);

  TextFormat({String? delimiter}) {
    _json = {'delimiter': ?delimiter};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TextFormat].
  static const SchemanticType<TextFormat> $schema = _TextFormatTypeFactory();

  String? get delimiter {
    return _json['delimiter'] as String?;
  }

  set delimiter(String? value) {
    if (value == null) {
      _json.remove('delimiter');
    } else {
      _json['delimiter'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TextFormat] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TextFormatTypeFactory extends SchemanticType<TextFormat> {
  const _TextFormatTypeFactory();

  @override
  TextFormat parse(Object? json) {
    return TextFormat._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TextFormat',
    definition: $Schema
        .object(
          properties: {
            'delimiter': $Schema.string(
              description:
                  'The delimiter to use when using the \'text\' format. Each line of text as\nspecified by the delimiter will be set to the \'data\' field of a Pub/Sub\nmessage. When unset, \'\n\' is used.',
            ),
          },
          description:
              'Configuration for reading Cloud Storage data in text format. Each line of\ntext as specified by the delimiter will be set to the \'data\' field of a\nPub/Sub message.',
        )
        .value,
    dependencies: [],
  );
}

base class CloudStorage {
  /// Creates a [CloudStorage] from a JSON map.
  factory CloudStorage.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  CloudStorage._(this._json);

  CloudStorage({
    required String bucket,
    String? matchGlob,
    String? minimumObjectCreateTime,
    AvroFormat? avroFormat,
    PubsubAvroFormat? pubsubAvroFormat,
    TextFormat? textFormat,
  }) {
    _json = {
      'bucket': bucket,
      'match_glob': ?matchGlob,
      'minimum_object_create_time': ?minimumObjectCreateTime,
      'avro_format': ?avroFormat?.toJson(),
      'pubsub_avro_format': ?pubsubAvroFormat?.toJson(),
      'text_format': ?textFormat?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CloudStorage].
  static const SchemanticType<CloudStorage> $schema =
      _CloudStorageTypeFactory();

  String get bucket {
    return _json['bucket'] as String;
  }

  set bucket(String value) {
    _json['bucket'] = value;
  }

  String? get matchGlob {
    return _json['match_glob'] as String?;
  }

  set matchGlob(String? value) {
    if (value == null) {
      _json.remove('match_glob');
    } else {
      _json['match_glob'] = value;
    }
  }

  String? get minimumObjectCreateTime {
    return _json['minimum_object_create_time'] as String?;
  }

  set minimumObjectCreateTime(String? value) {
    if (value == null) {
      _json.remove('minimum_object_create_time');
    } else {
      _json['minimum_object_create_time'] = value;
    }
  }

  AvroFormat? get avroFormat {
    return _json['avro_format'] == null
        ? null
        : AvroFormat.fromJson(_json['avro_format'] as Map<String, dynamic>);
  }

  set avroFormat(AvroFormat? value) {
    if (value == null) {
      _json.remove('avro_format');
    } else {
      _json['avro_format'] = value;
    }
  }

  PubsubAvroFormat? get pubsubAvroFormat {
    return _json['pubsub_avro_format'] == null
        ? null
        : PubsubAvroFormat.fromJson(
            _json['pubsub_avro_format'] as Map<String, dynamic>,
          );
  }

  set pubsubAvroFormat(PubsubAvroFormat? value) {
    if (value == null) {
      _json.remove('pubsub_avro_format');
    } else {
      _json['pubsub_avro_format'] = value;
    }
  }

  TextFormat? get textFormat {
    return _json['text_format'] == null
        ? null
        : TextFormat.fromJson(_json['text_format'] as Map<String, dynamic>);
  }

  set textFormat(TextFormat? value) {
    if (value == null) {
      _json.remove('text_format');
    } else {
      _json['text_format'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CloudStorage] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CloudStorageTypeFactory extends SchemanticType<CloudStorage> {
  const _CloudStorageTypeFactory();

  @override
  CloudStorage parse(Object? json) {
    return CloudStorage._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CloudStorage',
    definition: $Schema
        .object(
          properties: {
            'bucket': $Schema.string(
              description:
                  'Cloud Storage bucket. The bucket name must be without any\nprefix like "gs://". See the bucket naming requirements:\nhttps://cloud.google.com/storage/docs/buckets#naming.',
            ),
            'match_glob': $Schema.string(
              description:
                  'Glob pattern used to match objects that will be ingested. If unset, all\nobjects will be ingested. See the supported patterns:\nhttps://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob',
            ),
            'minimum_object_create_time': $Schema.string(
              description:
                  'The timestamp set in RFC3339 text format. If set, only objects with a\nlarger or equal timestamp will be ingested. Unset by default, meaning\nall objects will be ingested.',
            ),
            'avro_format': $Schema.fromMap({'\$ref': r'#/$defs/AvroFormat'}),
            'pubsub_avro_format': $Schema.fromMap({
              '\$ref': r'#/$defs/PubsubAvroFormat',
            }),
            'text_format': $Schema.fromMap({'\$ref': r'#/$defs/TextFormat'}),
          },
          required: ['bucket'],
          description: 'Settings for ingestion from Cloud Storage.',
        )
        .value,
    dependencies: [
      AvroFormat.$schema,
      PubsubAvroFormat.$schema,
      TextFormat.$schema,
    ],
  );
}

base class ConfluentCloud {
  /// Creates a [ConfluentCloud] from a JSON map.
  factory ConfluentCloud.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ConfluentCloud._(this._json);

  ConfluentCloud({
    required String bootstrapServer,
    String? clusterId,
    required String gcpServiceAccount,
    required String identityPoolId,
    required String topic,
  }) {
    _json = {
      'bootstrap_server': bootstrapServer,
      'cluster_id': ?clusterId,
      'gcp_service_account': gcpServiceAccount,
      'identity_pool_id': identityPoolId,
      'topic': topic,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConfluentCloud].
  static const SchemanticType<ConfluentCloud> $schema =
      _ConfluentCloudTypeFactory();

  String get bootstrapServer {
    return _json['bootstrap_server'] as String;
  }

  set bootstrapServer(String value) {
    _json['bootstrap_server'] = value;
  }

  String? get clusterId {
    return _json['cluster_id'] as String?;
  }

  set clusterId(String? value) {
    if (value == null) {
      _json.remove('cluster_id');
    } else {
      _json['cluster_id'] = value;
    }
  }

  String get gcpServiceAccount {
    return _json['gcp_service_account'] as String;
  }

  set gcpServiceAccount(String value) {
    _json['gcp_service_account'] = value;
  }

  String get identityPoolId {
    return _json['identity_pool_id'] as String;
  }

  set identityPoolId(String value) {
    _json['identity_pool_id'] = value;
  }

  String get topic {
    return _json['topic'] as String;
  }

  set topic(String value) {
    _json['topic'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConfluentCloud] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConfluentCloudTypeFactory extends SchemanticType<ConfluentCloud> {
  const _ConfluentCloudTypeFactory();

  @override
  ConfluentCloud parse(Object? json) {
    return ConfluentCloud._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConfluentCloud',
    definition: $Schema
        .object(
          properties: {
            'bootstrap_server': $Schema.string(
              description:
                  'The Confluent Cloud bootstrap server. The format is url:port.',
            ),
            'cluster_id': $Schema.string(
              description: 'The Confluent Cloud cluster ID.',
            ),
            'gcp_service_account': $Schema.string(
              description:
                  'The GCP service account to be used for Federated Identity authentication\nwith Confluent Cloud.',
            ),
            'identity_pool_id': $Schema.string(
              description:
                  'Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.',
            ),
            'topic': $Schema.string(
              description:
                  'Name of the Confluent Cloud topic that Pub/Sub will import from.',
            ),
          },
          required: [
            'bootstrap_server',
            'gcp_service_account',
            'identity_pool_id',
            'topic',
          ],
          description: 'Settings for ingestion from Confluent Cloud.',
        )
        .value,
    dependencies: [],
  );
}

base class PlatformLogsSettings {
  /// Creates a [PlatformLogsSettings] from a JSON map.
  factory PlatformLogsSettings.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PlatformLogsSettings._(this._json);

  PlatformLogsSettings({String? severity}) {
    _json = {'severity': ?severity};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PlatformLogsSettings].
  static const SchemanticType<PlatformLogsSettings> $schema =
      _PlatformLogsSettingsTypeFactory();

  String? get severity {
    return _json['severity'] as String?;
  }

  set severity(String? value) {
    if (value == null) {
      _json.remove('severity');
    } else {
      _json['severity'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PlatformLogsSettings] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PlatformLogsSettingsTypeFactory
    extends SchemanticType<PlatformLogsSettings> {
  const _PlatformLogsSettingsTypeFactory();

  @override
  PlatformLogsSettings parse(Object? json) {
    return PlatformLogsSettings._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PlatformLogsSettings',
    definition: $Schema
        .object(
          properties: {
            'severity': $Schema.string(
              description:
                  'The minimum severity level of Platform Logs that will be written. If unspecified,\nno Platform Logs will be written. Default value: "SEVERITY_UNSPECIFIED" Possible values: ["SEVERITY_UNSPECIFIED", "DISABLED", "DEBUG", "INFO", "WARNING", "ERROR"]',
            ),
          },
          description:
              'Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,\nno Platform Logs will be generated.\'',
        )
        .value,
    dependencies: [],
  );
}

base class IngestionDataSourceSettings {
  /// Creates a [IngestionDataSourceSettings] from a JSON map.
  factory IngestionDataSourceSettings.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  IngestionDataSourceSettings._(this._json);

  IngestionDataSourceSettings({
    AwsKinesis? awsKinesis,
    AwsMsk? awsMsk,
    AzureEventHubs? azureEventHubs,
    CloudStorage? cloudStorage,
    ConfluentCloud? confluentCloud,
    PlatformLogsSettings? platformLogsSettings,
  }) {
    _json = {
      'aws_kinesis': ?awsKinesis?.toJson(),
      'aws_msk': ?awsMsk?.toJson(),
      'azure_event_hubs': ?azureEventHubs?.toJson(),
      'cloud_storage': ?cloudStorage?.toJson(),
      'confluent_cloud': ?confluentCloud?.toJson(),
      'platform_logs_settings': ?platformLogsSettings?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [IngestionDataSourceSettings].
  static const SchemanticType<IngestionDataSourceSettings> $schema =
      _IngestionDataSourceSettingsTypeFactory();

  AwsKinesis? get awsKinesis {
    return _json['aws_kinesis'] == null
        ? null
        : AwsKinesis.fromJson(_json['aws_kinesis'] as Map<String, dynamic>);
  }

  set awsKinesis(AwsKinesis? value) {
    if (value == null) {
      _json.remove('aws_kinesis');
    } else {
      _json['aws_kinesis'] = value;
    }
  }

  AwsMsk? get awsMsk {
    return _json['aws_msk'] == null
        ? null
        : AwsMsk.fromJson(_json['aws_msk'] as Map<String, dynamic>);
  }

  set awsMsk(AwsMsk? value) {
    if (value == null) {
      _json.remove('aws_msk');
    } else {
      _json['aws_msk'] = value;
    }
  }

  AzureEventHubs? get azureEventHubs {
    return _json['azure_event_hubs'] == null
        ? null
        : AzureEventHubs.fromJson(
            _json['azure_event_hubs'] as Map<String, dynamic>,
          );
  }

  set azureEventHubs(AzureEventHubs? value) {
    if (value == null) {
      _json.remove('azure_event_hubs');
    } else {
      _json['azure_event_hubs'] = value;
    }
  }

  CloudStorage? get cloudStorage {
    return _json['cloud_storage'] == null
        ? null
        : CloudStorage.fromJson(_json['cloud_storage'] as Map<String, dynamic>);
  }

  set cloudStorage(CloudStorage? value) {
    if (value == null) {
      _json.remove('cloud_storage');
    } else {
      _json['cloud_storage'] = value;
    }
  }

  ConfluentCloud? get confluentCloud {
    return _json['confluent_cloud'] == null
        ? null
        : ConfluentCloud.fromJson(
            _json['confluent_cloud'] as Map<String, dynamic>,
          );
  }

  set confluentCloud(ConfluentCloud? value) {
    if (value == null) {
      _json.remove('confluent_cloud');
    } else {
      _json['confluent_cloud'] = value;
    }
  }

  PlatformLogsSettings? get platformLogsSettings {
    return _json['platform_logs_settings'] == null
        ? null
        : PlatformLogsSettings.fromJson(
            _json['platform_logs_settings'] as Map<String, dynamic>,
          );
  }

  set platformLogsSettings(PlatformLogsSettings? value) {
    if (value == null) {
      _json.remove('platform_logs_settings');
    } else {
      _json['platform_logs_settings'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [IngestionDataSourceSettings] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _IngestionDataSourceSettingsTypeFactory
    extends SchemanticType<IngestionDataSourceSettings> {
  const _IngestionDataSourceSettingsTypeFactory();

  @override
  IngestionDataSourceSettings parse(Object? json) {
    return IngestionDataSourceSettings._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'IngestionDataSourceSettings',
    definition: $Schema
        .object(
          properties: {
            'aws_kinesis': $Schema.fromMap({'\$ref': r'#/$defs/AwsKinesis'}),
            'aws_msk': $Schema.fromMap({'\$ref': r'#/$defs/AwsMsk'}),
            'azure_event_hubs': $Schema.fromMap({
              '\$ref': r'#/$defs/AzureEventHubs',
            }),
            'cloud_storage': $Schema.fromMap({
              '\$ref': r'#/$defs/CloudStorage',
            }),
            'confluent_cloud': $Schema.fromMap({
              '\$ref': r'#/$defs/ConfluentCloud',
            }),
            'platform_logs_settings': $Schema.fromMap({
              '\$ref': r'#/$defs/PlatformLogsSettings',
            }),
          },
          description:
              'Settings for ingestion from a data source into this topic.',
        )
        .value,
    dependencies: [
      AwsKinesis.$schema,
      AwsMsk.$schema,
      AzureEventHubs.$schema,
      CloudStorage.$schema,
      ConfluentCloud.$schema,
      PlatformLogsSettings.$schema,
    ],
  );
}

base class MessageStoragePolicy {
  /// Creates a [MessageStoragePolicy] from a JSON map.
  factory MessageStoragePolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  MessageStoragePolicy._(this._json);

  MessageStoragePolicy({
    required List<String> allowedPersistenceRegions,
    bool? enforceInTransit,
  }) {
    _json = {
      'allowed_persistence_regions': allowedPersistenceRegions,
      'enforce_in_transit': ?enforceInTransit,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [MessageStoragePolicy].
  static const SchemanticType<MessageStoragePolicy> $schema =
      _MessageStoragePolicyTypeFactory();

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String> get allowedPersistenceRegions {
    return (_json['allowed_persistence_regions'] as List).cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set allowedPersistenceRegions(List<String> value) {
    _json['allowed_persistence_regions'] = value;
  }

  bool? get enforceInTransit {
    return _json['enforce_in_transit'] as bool?;
  }

  set enforceInTransit(bool? value) {
    if (value == null) {
      _json.remove('enforce_in_transit');
    } else {
      _json['enforce_in_transit'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [MessageStoragePolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _MessageStoragePolicyTypeFactory
    extends SchemanticType<MessageStoragePolicy> {
  const _MessageStoragePolicyTypeFactory();

  @override
  MessageStoragePolicy parse(Object? json) {
    return MessageStoragePolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'MessageStoragePolicy',
    definition: $Schema
        .object(
          properties: {
            'allowed_persistence_regions': $Schema.list(
              description:
                  'A list of IDs of GCP regions where messages that are published to\nthe topic may be persisted in storage. Messages published by\npublishers running in non-allowed GCP regions (or running outside\nof GCP altogether) will be routed for storage in one of the\nallowed regions. An empty list means that no regions are allowed,\nand is not a valid configuration.',
              items: $Schema.string(),
            ),
            'enforce_in_transit': $Schema.boolean(
              description:
                  'If true, \'allowedPersistenceRegions\' is also used to enforce in-transit\nguarantees for messages. That is, Pub/Sub will fail topics.publish\noperations on this topic and subscribe operations on any subscription\nattached to this topic in any region that is not in \'allowedPersistenceRegions\'.',
            ),
          },
          required: ['allowed_persistence_regions'],
          description:
              'Policy constraining the set of Google Cloud Platform regions where\nmessages published to the topic may be stored. If not present, then no\nconstraints are in effect.',
        )
        .value,
    dependencies: [],
  );
}

base class UnstructuredInference {
  /// Creates a [UnstructuredInference] from a JSON map.
  factory UnstructuredInference.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  UnstructuredInference._(this._json);

  UnstructuredInference({Map<String, String>? parameters}) {
    _json = {'parameters': ?parameters};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [UnstructuredInference].
  static const SchemanticType<UnstructuredInference> $schema =
      _UnstructuredInferenceTypeFactory();

  Map<String, String>? get parameters {
    return (_json['parameters'] as Map?)?.cast<String, String>();
  }

  set parameters(Map<String, String>? value) {
    if (value == null) {
      _json.remove('parameters');
    } else {
      _json['parameters'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [UnstructuredInference] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _UnstructuredInferenceTypeFactory
    extends SchemanticType<UnstructuredInference> {
  const _UnstructuredInferenceTypeFactory();

  @override
  UnstructuredInference parse(Object? json) {
    return UnstructuredInference._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'UnstructuredInference',
    definition: $Schema
        .object(
          properties: {
            'parameters': $Schema.object(
              description:
                  'A parameters object to be included in each inference request.\nThe parameters object is combined with the data field of the Pub/Sub\nmessage to form the inference request.',
              additionalProperties: $Schema.string(),
            ),
          },
          description:
              'Configuration for making inferences using arbitrary JSON payloads.',
        )
        .value,
    dependencies: [],
  );
}

base class AiInference {
  /// Creates a [AiInference] from a JSON map.
  factory AiInference.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AiInference._(this._json);

  AiInference({
    required String endpoint,
    String? serviceAccountEmail,
    UnstructuredInference? unstructuredInference,
  }) {
    _json = {
      'endpoint': endpoint,
      'service_account_email': ?serviceAccountEmail,
      'unstructured_inference': ?unstructuredInference?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AiInference].
  static const SchemanticType<AiInference> $schema = _AiInferenceTypeFactory();

  String get endpoint {
    return _json['endpoint'] as String;
  }

  set endpoint(String value) {
    _json['endpoint'] = value;
  }

  String? get serviceAccountEmail {
    return _json['service_account_email'] as String?;
  }

  set serviceAccountEmail(String? value) {
    if (value == null) {
      _json.remove('service_account_email');
    } else {
      _json['service_account_email'] = value;
    }
  }

  UnstructuredInference? get unstructuredInference {
    return _json['unstructured_inference'] == null
        ? null
        : UnstructuredInference.fromJson(
            _json['unstructured_inference'] as Map<String, dynamic>,
          );
  }

  set unstructuredInference(UnstructuredInference? value) {
    if (value == null) {
      _json.remove('unstructured_inference');
    } else {
      _json['unstructured_inference'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AiInference] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AiInferenceTypeFactory extends SchemanticType<AiInference> {
  const _AiInferenceTypeFactory();

  @override
  AiInference parse(Object? json) {
    return AiInference._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AiInference',
    definition: $Schema
        .object(
          properties: {
            'endpoint': $Schema.string(
              description:
                  'The endpoint to a Vertex AI model of the form\n\'projects/{project}/locations/{location}/endpoints/{endpoint}\' or\n\'projects/{project}/locations/{location}/publishers/{publisher}/models/{model}\'.\nVertex AI API requests will be sent to this endpoint.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'The service account to use to make prediction requests against\nendpoints.',
            ),
            'unstructured_inference': $Schema.fromMap({
              '\$ref': r'#/$defs/UnstructuredInference',
            }),
          },
          required: ['endpoint'],
          description:
              'AI Inference. Specifies the Vertex AI endpoint that inference\nrequests built from the Pub/Sub message data and provided parameters will\nbe sent to.',
        )
        .value,
    dependencies: [UnstructuredInference.$schema],
  );
}

base class JavascriptUdf {
  /// Creates a [JavascriptUdf] from a JSON map.
  factory JavascriptUdf.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  JavascriptUdf._(this._json);

  JavascriptUdf({required String code, required String functionName}) {
    _json = {'code': code, 'function_name': functionName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [JavascriptUdf].
  static const SchemanticType<JavascriptUdf> $schema =
      _JavascriptUdfTypeFactory();

  String get code {
    return _json['code'] as String;
  }

  set code(String value) {
    _json['code'] = value;
  }

  String get functionName {
    return _json['function_name'] as String;
  }

  set functionName(String value) {
    _json['function_name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [JavascriptUdf] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _JavascriptUdfTypeFactory extends SchemanticType<JavascriptUdf> {
  const _JavascriptUdfTypeFactory();

  @override
  JavascriptUdf parse(Object? json) {
    return JavascriptUdf._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'JavascriptUdf',
    definition: $Schema
        .object(
          properties: {
            'code': $Schema.string(
              description:
                  'JavaScript code that contains a function \'function_name\' with the\nfollowing signature:\n\'\'\'\n  /**\n  * Transforms a Pub/Sub message.\n  *\n  * @return {(Object<string, (string | Object<string, string>)>|null)} - To\n  * filter a message, return \'null\'. To transform a message return a map\n  * with the following keys:\n  *   - (required) \'data\' : {string}\n  *   - (optional) \'attributes\' : {Object<string, string>}\n  * Returning empty \'attributes\' will remove all attributes from the\n  * message.\n  *\n  * @param  {(Object<string, (string | Object<string, string>)>} Pub/Sub\n  * message. Keys:\n  *   - (required) \'data\' : {string}\n  *   - (required) \'attributes\' : {Object<string, string>}\n  *\n  * @param  {Object<string, any>} metadata - Pub/Sub message metadata.\n  * Keys:\n  *   - (required) \'message_id\'  : {string}\n  *   - (optional) \'publish_time\': {string} YYYY-MM-DDTHH:MM:SSZ format\n  *   - (optional) \'ordering_key\': {string}\n  */\n  function <function_name>(message, metadata) {\n  }\n\'\'\'',
            ),
            'function_name': $Schema.string(
              description:
                  'Name of the JavaScript function that should be applied to Pub/Sub messages.',
            ),
          },
          required: ['code', 'function_name'],
          description:
              'Javascript User Defined Function. If multiple Javascript UDFs are specified on a resource,\neach one must have a unique \'function_name\'.',
        )
        .value,
    dependencies: [],
  );
}

base class MessageTransforms {
  /// Creates a [MessageTransforms] from a JSON map.
  factory MessageTransforms.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  MessageTransforms._(this._json);

  MessageTransforms({
    bool? disabled,
    AiInference? aiInference,
    JavascriptUdf? javascriptUdf,
  }) {
    _json = {
      'disabled': ?disabled,
      'ai_inference': ?aiInference?.toJson(),
      'javascript_udf': ?javascriptUdf?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [MessageTransforms].
  static const SchemanticType<MessageTransforms> $schema =
      _MessageTransformsTypeFactory();

  bool? get disabled {
    return _json['disabled'] as bool?;
  }

  set disabled(bool? value) {
    if (value == null) {
      _json.remove('disabled');
    } else {
      _json['disabled'] = value;
    }
  }

  AiInference? get aiInference {
    return _json['ai_inference'] == null
        ? null
        : AiInference.fromJson(_json['ai_inference'] as Map<String, dynamic>);
  }

  set aiInference(AiInference? value) {
    if (value == null) {
      _json.remove('ai_inference');
    } else {
      _json['ai_inference'] = value;
    }
  }

  JavascriptUdf? get javascriptUdf {
    return _json['javascript_udf'] == null
        ? null
        : JavascriptUdf.fromJson(
            _json['javascript_udf'] as Map<String, dynamic>,
          );
  }

  set javascriptUdf(JavascriptUdf? value) {
    if (value == null) {
      _json.remove('javascript_udf');
    } else {
      _json['javascript_udf'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [MessageTransforms] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _MessageTransformsTypeFactory
    extends SchemanticType<MessageTransforms> {
  const _MessageTransformsTypeFactory();

  @override
  MessageTransforms parse(Object? json) {
    return MessageTransforms._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'MessageTransforms',
    definition: $Schema
        .object(
          properties: {
            'disabled': $Schema.boolean(
              description:
                  'Controls whether or not to use this transform. If not set or \'false\',\nthe transform will be applied to messages. Default: \'true\'.',
            ),
            'ai_inference': $Schema.fromMap({'\$ref': r'#/$defs/AiInference'}),
            'javascript_udf': $Schema.fromMap({
              '\$ref': r'#/$defs/JavascriptUdf',
            }),
          },
          description:
              'Transforms to be applied to messages published to the topic. Transforms are applied in the\norder specified.',
        )
        .value,
    dependencies: [AiInference.$schema, JavascriptUdf.$schema],
  );
}

base class SchemaSettings {
  /// Creates a [SchemaSettings] from a JSON map.
  factory SchemaSettings.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SchemaSettings._(this._json);

  SchemaSettings({String? encoding, required String schema}) {
    _json = {'encoding': ?encoding, 'schema': schema};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SchemaSettings].
  static const SchemanticType<SchemaSettings> $schema =
      _SchemaSettingsTypeFactory();

  String? get encoding {
    return _json['encoding'] as String?;
  }

  set encoding(String? value) {
    if (value == null) {
      _json.remove('encoding');
    } else {
      _json['encoding'] = value;
    }
  }

  String get schema {
    return _json['schema'] as String;
  }

  set schema(String value) {
    _json['schema'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SchemaSettings] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SchemaSettingsTypeFactory extends SchemanticType<SchemaSettings> {
  const _SchemaSettingsTypeFactory();

  @override
  SchemaSettings parse(Object? json) {
    return SchemaSettings._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SchemaSettings',
    definition: $Schema
        .object(
          properties: {
            'encoding': $Schema.string(
              description:
                  'The encoding of messages validated against schema. Default value: "ENCODING_UNSPECIFIED" Possible values: ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]',
            ),
            'schema': $Schema.string(
              description:
                  'The name of the schema that messages published should be\nvalidated against. Format is projects/{project}/schemas/{schema}.\nThe value of this field will be _deleted-schema_\nif the schema has been deleted.',
            ),
          },
          required: ['schema'],
          description:
              'Settings for validating messages published against a schema.',
        )
        .value,
    dependencies: [],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? update}) {
    _json = {'create': ?create, 'delete': ?delete, 'update': ?update};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Timeouts].
  static const SchemanticType<Timeouts> $schema = _TimeoutsTypeFactory();

  String? get create {
    return _json['create'] as String?;
  }

  set create(String? value) {
    if (value == null) {
      _json.remove('create');
    } else {
      _json['create'] = value;
    }
  }

  String? get delete {
    return _json['delete'] as String?;
  }

  set delete(String? value) {
    if (value == null) {
      _json.remove('delete');
    } else {
      _json['delete'] = value;
    }
  }

  String? get update {
    return _json['update'] as String?;
  }

  set update(String? value) {
    if (value == null) {
      _json.remove('update');
    } else {
      _json['update'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Timeouts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimeoutsTypeFactory extends SchemanticType<Timeouts> {
  const _TimeoutsTypeFactory();

  @override
  Timeouts parse(Object? json) {
    return Timeouts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Timeouts',
    definition: $Schema
        .object(
          properties: {
            'create': $Schema.string(),
            'delete': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GooglePubsubTopic {
  /// Creates a [GooglePubsubTopic] from a JSON map.
  factory GooglePubsubTopic.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GooglePubsubTopic._(this._json);

  GooglePubsubTopic({
    String? id,
    String? kmsKeyName,
    Map<String, String>? labels,
    String? messageRetentionDuration,
    required String name,
    String? project,
    Map<String, String>? tags,
    IngestionDataSourceSettings? ingestionDataSourceSettings,
    MessageStoragePolicy? messageStoragePolicy,
    List<MessageTransforms>? messageTransforms,
    SchemaSettings? schemaSettings,
    Timeouts? timeouts,
  }) {
    _json = {
      'id': ?id,
      'kms_key_name': ?kmsKeyName,
      'labels': ?labels,
      'message_retention_duration': ?messageRetentionDuration,
      'name': name,
      'project': ?project,
      'tags': ?tags,
      'ingestion_data_source_settings': ?ingestionDataSourceSettings?.toJson(),
      'message_storage_policy': ?messageStoragePolicy?.toJson(),
      'message_transforms': ?messageTransforms?.map((e) => e.toJson()).toList(),
      'schema_settings': ?schemaSettings?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GooglePubsubTopic].
  static const SchemanticType<GooglePubsubTopic> $schema =
      _GooglePubsubTopicTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get id {
    return _json['id'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set id(String? value) {
    if (value == null) {
      _json.remove('id');
    } else {
      _json['id'] = value;
    }
  }

  String? get kmsKeyName {
    return _json['kms_key_name'] as String?;
  }

  set kmsKeyName(String? value) {
    if (value == null) {
      _json.remove('kms_key_name');
    } else {
      _json['kms_key_name'] = value;
    }
  }

  Map<String, String>? get labels {
    return (_json['labels'] as Map?)?.cast<String, String>();
  }

  set labels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('labels');
    } else {
      _json['labels'] = value;
    }
  }

  String? get messageRetentionDuration {
    return _json['message_retention_duration'] as String?;
  }

  set messageRetentionDuration(String? value) {
    if (value == null) {
      _json.remove('message_retention_duration');
    } else {
      _json['message_retention_duration'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get project {
    return _json['project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set project(String? value) {
    if (value == null) {
      _json.remove('project');
    } else {
      _json['project'] = value;
    }
  }

  Map<String, String>? get tags {
    return (_json['tags'] as Map?)?.cast<String, String>();
  }

  set tags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('tags');
    } else {
      _json['tags'] = value;
    }
  }

  IngestionDataSourceSettings? get ingestionDataSourceSettings {
    return _json['ingestion_data_source_settings'] == null
        ? null
        : IngestionDataSourceSettings.fromJson(
            _json['ingestion_data_source_settings'] as Map<String, dynamic>,
          );
  }

  set ingestionDataSourceSettings(IngestionDataSourceSettings? value) {
    if (value == null) {
      _json.remove('ingestion_data_source_settings');
    } else {
      _json['ingestion_data_source_settings'] = value;
    }
  }

  MessageStoragePolicy? get messageStoragePolicy {
    return _json['message_storage_policy'] == null
        ? null
        : MessageStoragePolicy.fromJson(
            _json['message_storage_policy'] as Map<String, dynamic>,
          );
  }

  set messageStoragePolicy(MessageStoragePolicy? value) {
    if (value == null) {
      _json.remove('message_storage_policy');
    } else {
      _json['message_storage_policy'] = value;
    }
  }

  List<MessageTransforms>? get messageTransforms {
    return (_json['message_transforms'] as List?)
        ?.map((e) => MessageTransforms.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set messageTransforms(List<MessageTransforms>? value) {
    if (value == null) {
      _json.remove('message_transforms');
    } else {
      _json['message_transforms'] = value.toList();
    }
  }

  SchemaSettings? get schemaSettings {
    return _json['schema_settings'] == null
        ? null
        : SchemaSettings.fromJson(
            _json['schema_settings'] as Map<String, dynamic>,
          );
  }

  set schemaSettings(SchemaSettings? value) {
    if (value == null) {
      _json.remove('schema_settings');
    } else {
      _json['schema_settings'] = value;
    }
  }

  Timeouts? get timeouts {
    return _json['timeouts'] == null
        ? null
        : Timeouts.fromJson(_json['timeouts'] as Map<String, dynamic>);
  }

  set timeouts(Timeouts? value) {
    if (value == null) {
      _json.remove('timeouts');
    } else {
      _json['timeouts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GooglePubsubTopic] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GooglePubsubTopicTypeFactory
    extends SchemanticType<GooglePubsubTopic> {
  const _GooglePubsubTopicTypeFactory();

  @override
  GooglePubsubTopic parse(Object? json) {
    return GooglePubsubTopic._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GooglePubsubTopic',
    definition: $Schema
        .object(
          properties: {
            'id': $Schema.string(),
            'kms_key_name': $Schema.string(
              description:
                  'The resource name of the Cloud KMS CryptoKey to be used to protect access\nto messages published on this topic. Your project\'s PubSub service account\n(\'service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com\') must have\n\'roles/cloudkms.cryptoKeyEncrypterDecrypter\' to use this feature.\nThe expected format is \'projects/*/locations/*/keyRings/*/cryptoKeys/*\'',
            ),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs to assign to this Topic.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'message_retention_duration': $Schema.string(
              description:
                  'Indicates the minimum duration to retain a message after it is published\nto the topic. If this field is set, messages published to the topic in\nthe last messageRetentionDuration are always available to subscribers.\nFor instance, it allows any attached subscription to seek to a timestamp\nthat is up to messageRetentionDuration in the past. If this field is not\nset, message retention is controlled by settings on individual subscriptions.\nThe rotation period has the format of a decimal number, followed by the\nletter \'s\' (seconds). Cannot be more than 31 days or less than 10 minutes.',
            ),
            'name': $Schema.string(description: 'Name of the topic.'),
            'project': $Schema.string(),
            'tags': $Schema.object(
              description:
                  'Input only. Resource manager tags to be bound to the topic. Tag keys and\nvalues have the same definition as resource manager tags. Keys must be in\nthe format tagKeys/{tag_key_id}, and values are in the format\ntagValues/456. The field is ignored when empty. The field is immutable and\ncauses resource replacement when mutated. This field is only set at create\ntime and modifying this field after creation will trigger recreation. To\napply tags to an existing resource, see the \'google_tags_tag_value\'\nresource.',
              additionalProperties: $Schema.string(),
            ),
            'ingestion_data_source_settings': $Schema.fromMap({
              '\$ref': r'#/$defs/IngestionDataSourceSettings',
            }),
            'message_storage_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/MessageStoragePolicy',
            }),
            'message_transforms': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/MessageTransforms'}),
            ),
            'schema_settings': $Schema.fromMap({
              '\$ref': r'#/$defs/SchemaSettings',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name'],
        )
        .value,
    dependencies: [
      IngestionDataSourceSettings.$schema,
      MessageStoragePolicy.$schema,
      MessageTransforms.$schema,
      SchemaSettings.$schema,
      Timeouts.$schema,
    ],
  );
}
