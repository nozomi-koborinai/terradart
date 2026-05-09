// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_pubsub_subscription.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class BigqueryConfig {
  /// Creates a [BigqueryConfig] from a JSON map.
  factory BigqueryConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BigqueryConfig._(this._json);

  BigqueryConfig({
    bool? dropUnknownFields,
    String? serviceAccountEmail,
    required String table,
    bool? useTableSchema,
    bool? useTopicSchema,
    bool? writeMetadata,
  }) {
    _json = {
      'drop_unknown_fields': ?dropUnknownFields,
      'service_account_email': ?serviceAccountEmail,
      'table': table,
      'use_table_schema': ?useTableSchema,
      'use_topic_schema': ?useTopicSchema,
      'write_metadata': ?writeMetadata,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BigqueryConfig].
  static const SchemanticType<BigqueryConfig> $schema =
      _BigqueryConfigTypeFactory();

  bool? get dropUnknownFields {
    return _json['drop_unknown_fields'] as bool?;
  }

  set dropUnknownFields(bool? value) {
    if (value == null) {
      _json.remove('drop_unknown_fields');
    } else {
      _json['drop_unknown_fields'] = value;
    }
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

  String get table {
    return _json['table'] as String;
  }

  set table(String value) {
    _json['table'] = value;
  }

  bool? get useTableSchema {
    return _json['use_table_schema'] as bool?;
  }

  set useTableSchema(bool? value) {
    if (value == null) {
      _json.remove('use_table_schema');
    } else {
      _json['use_table_schema'] = value;
    }
  }

  bool? get useTopicSchema {
    return _json['use_topic_schema'] as bool?;
  }

  set useTopicSchema(bool? value) {
    if (value == null) {
      _json.remove('use_topic_schema');
    } else {
      _json['use_topic_schema'] = value;
    }
  }

  bool? get writeMetadata {
    return _json['write_metadata'] as bool?;
  }

  set writeMetadata(bool? value) {
    if (value == null) {
      _json.remove('write_metadata');
    } else {
      _json['write_metadata'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BigqueryConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BigqueryConfigTypeFactory extends SchemanticType<BigqueryConfig> {
  const _BigqueryConfigTypeFactory();

  @override
  BigqueryConfig parse(Object? json) {
    return BigqueryConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BigqueryConfig',
    definition: $Schema
        .object(
          properties: {
            'drop_unknown_fields': $Schema.boolean(
              description:
                  'When true and use_topic_schema or use_table_schema is true, any fields that are a part of the topic schema or message schema that\nare not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync\nand any messages with extra fields are not written and remain in the subscription\'s backlog.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'The service account to use to write to BigQuery. If not specified, the Pub/Sub\n[service agent](https://cloud.google.com/iam/docs/service-agents),\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.',
            ),
            'table': $Schema.string(
              description:
                  'The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}',
            ),
            'use_table_schema': $Schema.boolean(
              description:
                  'When true, use the BigQuery table\'s schema as the columns to write to in BigQuery. Messages\nmust be published in JSON format. Only one of use_topic_schema and use_table_schema can be set.',
            ),
            'use_topic_schema': $Schema.boolean(
              description:
                  'When true, use the topic\'s schema as the columns to write to in BigQuery, if it exists.\nOnly one of use_topic_schema and use_table_schema can be set.',
            ),
            'write_metadata': $Schema.boolean(
              description:
                  'When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.\nThe subscription name, messageId, and publishTime fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.',
            ),
          },
          required: ['table'],
          description:
              'If delivery to BigQuery is used with this subscription, this field is used to configure it.\nEither pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.\nIf all three are empty, then the subscriber will pull and ack messages using API methods.',
        )
        .value,
    dependencies: [],
  );
}

base class AvroConfig {
  /// Creates a [AvroConfig] from a JSON map.
  factory AvroConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  AvroConfig._(this._json);

  AvroConfig({bool? useTopicSchema, bool? writeMetadata}) {
    _json = {
      'use_topic_schema': ?useTopicSchema,
      'write_metadata': ?writeMetadata,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AvroConfig].
  static const SchemanticType<AvroConfig> $schema = _AvroConfigTypeFactory();

  bool? get useTopicSchema {
    return _json['use_topic_schema'] as bool?;
  }

  set useTopicSchema(bool? value) {
    if (value == null) {
      _json.remove('use_topic_schema');
    } else {
      _json['use_topic_schema'] = value;
    }
  }

  bool? get writeMetadata {
    return _json['write_metadata'] as bool?;
  }

  set writeMetadata(bool? value) {
    if (value == null) {
      _json.remove('write_metadata');
    } else {
      _json['write_metadata'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AvroConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AvroConfigTypeFactory extends SchemanticType<AvroConfig> {
  const _AvroConfigTypeFactory();

  @override
  AvroConfig parse(Object? json) {
    return AvroConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AvroConfig',
    definition: $Schema
        .object(
          properties: {
            'use_topic_schema': $Schema.boolean(
              description:
                  'When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.',
            ),
            'write_metadata': $Schema.boolean(
              description:
                  'When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.',
            ),
          },
          description:
              'If set, message data will be written to Cloud Storage in Avro format.',
        )
        .value,
    dependencies: [],
  );
}

base class TextConfig {
  /// Creates a [TextConfig] from a JSON map.
  factory TextConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  TextConfig._(this._json);

  TextConfig() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TextConfig].
  static const SchemanticType<TextConfig> $schema = _TextConfigTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TextConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TextConfigTypeFactory extends SchemanticType<TextConfig> {
  const _TextConfigTypeFactory();

  @override
  TextConfig parse(Object? json) {
    return TextConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TextConfig',
    definition: $Schema
        .object(
          properties: {},
          description:
              'If set, message data will be written to Cloud Storage in text format.',
        )
        .value,
    dependencies: [],
  );
}

base class CloudStorageConfig {
  /// Creates a [CloudStorageConfig] from a JSON map.
  factory CloudStorageConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  CloudStorageConfig._(this._json);

  CloudStorageConfig({
    required String bucket,
    String? filenameDatetimeFormat,
    String? filenamePrefix,
    String? filenameSuffix,
    num? maxBytes,
    String? maxDuration,
    num? maxMessages,
    String? serviceAccountEmail,
    AvroConfig? avroConfig,
    TextConfig? textConfig,
  }) {
    _json = {
      'bucket': bucket,
      'filename_datetime_format': ?filenameDatetimeFormat,
      'filename_prefix': ?filenamePrefix,
      'filename_suffix': ?filenameSuffix,
      'max_bytes': ?maxBytes,
      'max_duration': ?maxDuration,
      'max_messages': ?maxMessages,
      'service_account_email': ?serviceAccountEmail,
      'avro_config': ?avroConfig?.toJson(),
      'text_config': ?textConfig?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CloudStorageConfig].
  static const SchemanticType<CloudStorageConfig> $schema =
      _CloudStorageConfigTypeFactory();

  String get bucket {
    return _json['bucket'] as String;
  }

  set bucket(String value) {
    _json['bucket'] = value;
  }

  String? get filenameDatetimeFormat {
    return _json['filename_datetime_format'] as String?;
  }

  set filenameDatetimeFormat(String? value) {
    if (value == null) {
      _json.remove('filename_datetime_format');
    } else {
      _json['filename_datetime_format'] = value;
    }
  }

  String? get filenamePrefix {
    return _json['filename_prefix'] as String?;
  }

  set filenamePrefix(String? value) {
    if (value == null) {
      _json.remove('filename_prefix');
    } else {
      _json['filename_prefix'] = value;
    }
  }

  String? get filenameSuffix {
    return _json['filename_suffix'] as String?;
  }

  set filenameSuffix(String? value) {
    if (value == null) {
      _json.remove('filename_suffix');
    } else {
      _json['filename_suffix'] = value;
    }
  }

  num? get maxBytes {
    return _json['max_bytes'] as num?;
  }

  set maxBytes(num? value) {
    if (value == null) {
      _json.remove('max_bytes');
    } else {
      _json['max_bytes'] = value;
    }
  }

  String? get maxDuration {
    return _json['max_duration'] as String?;
  }

  set maxDuration(String? value) {
    if (value == null) {
      _json.remove('max_duration');
    } else {
      _json['max_duration'] = value;
    }
  }

  num? get maxMessages {
    return _json['max_messages'] as num?;
  }

  set maxMessages(num? value) {
    if (value == null) {
      _json.remove('max_messages');
    } else {
      _json['max_messages'] = value;
    }
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

  AvroConfig? get avroConfig {
    return _json['avro_config'] == null
        ? null
        : AvroConfig.fromJson(_json['avro_config'] as Map<String, dynamic>);
  }

  set avroConfig(AvroConfig? value) {
    if (value == null) {
      _json.remove('avro_config');
    } else {
      _json['avro_config'] = value;
    }
  }

  TextConfig? get textConfig {
    return _json['text_config'] == null
        ? null
        : TextConfig.fromJson(_json['text_config'] as Map<String, dynamic>);
  }

  set textConfig(TextConfig? value) {
    if (value == null) {
      _json.remove('text_config');
    } else {
      _json['text_config'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CloudStorageConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CloudStorageConfigTypeFactory
    extends SchemanticType<CloudStorageConfig> {
  const _CloudStorageConfigTypeFactory();

  @override
  CloudStorageConfig parse(Object? json) {
    return CloudStorageConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CloudStorageConfig',
    definition: $Schema
        .object(
          properties: {
            'bucket': $Schema.string(
              description:
                  'User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://".',
            ),
            'filename_datetime_format': $Schema.string(
              description:
                  'User-provided format string specifying how to represent datetimes in Cloud Storage filenames.',
            ),
            'filename_prefix': $Schema.string(
              description: 'User-provided prefix for Cloud Storage filename.',
            ),
            'filename_suffix': $Schema.string(
              description:
                  'User-provided suffix for Cloud Storage filename. Must not end in "/".',
            ),
            'max_bytes': $Schema.number(
              description:
                  'The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.\nThe maxBytes limit may be exceeded in cases where messages are larger than the limit.',
            ),
            'max_duration': $Schema.string(
              description:
                  'The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.\nMay not exceed the subscription\'s acknowledgement deadline.\nA duration in seconds with up to nine fractional digits, ending with \'s\'. Example: "3.5s".',
            ),
            'max_messages': $Schema.number(
              description:
                  'The maximum messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'The service account to use to write to Cloud Storage. If not specified, the Pub/Sub\n[service agent](https://cloud.google.com/iam/docs/service-agents),\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.',
            ),
            'avro_config': $Schema.fromMap({'\$ref': r'#/$defs/AvroConfig'}),
            'text_config': $Schema.fromMap({'\$ref': r'#/$defs/TextConfig'}),
          },
          required: ['bucket'],
          description:
              'If delivery to Cloud Storage is used with this subscription, this field is used to configure it.\nEither pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.\nIf all three are empty, then the subscriber will pull and ack messages using API methods.',
        )
        .value,
    dependencies: [AvroConfig.$schema, TextConfig.$schema],
  );
}

base class DeadLetterPolicy {
  /// Creates a [DeadLetterPolicy] from a JSON map.
  factory DeadLetterPolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DeadLetterPolicy._(this._json);

  DeadLetterPolicy({String? deadLetterTopic, num? maxDeliveryAttempts}) {
    _json = {
      'dead_letter_topic': ?deadLetterTopic,
      'max_delivery_attempts': ?maxDeliveryAttempts,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DeadLetterPolicy].
  static const SchemanticType<DeadLetterPolicy> $schema =
      _DeadLetterPolicyTypeFactory();

  String? get deadLetterTopic {
    return _json['dead_letter_topic'] as String?;
  }

  set deadLetterTopic(String? value) {
    if (value == null) {
      _json.remove('dead_letter_topic');
    } else {
      _json['dead_letter_topic'] = value;
    }
  }

  num? get maxDeliveryAttempts {
    return _json['max_delivery_attempts'] as num?;
  }

  set maxDeliveryAttempts(num? value) {
    if (value == null) {
      _json.remove('max_delivery_attempts');
    } else {
      _json['max_delivery_attempts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [DeadLetterPolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DeadLetterPolicyTypeFactory
    extends SchemanticType<DeadLetterPolicy> {
  const _DeadLetterPolicyTypeFactory();

  @override
  DeadLetterPolicy parse(Object? json) {
    return DeadLetterPolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DeadLetterPolicy',
    definition: $Schema
        .object(
          properties: {
            'dead_letter_topic': $Schema.string(
              description:
                  'The name of the topic to which dead letter messages should be published.\nFormat is \'projects/{project}/topics/{topic}\'.\n\nThe Cloud Pub/Sub service account associated with the enclosing subscription\'s\nparent project (i.e.,\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have\npermission to Publish() to this topic.\n\nThe operation will fail if the topic does not exist.\nUsers should ensure that there is a subscription attached to this topic\nsince messages published to a topic with no subscriptions are lost.',
            ),
            'max_delivery_attempts': $Schema.number(
              description:
                  'The maximum number of delivery attempts for any message. The value must be\nbetween 5 and 100.\n\nThe number of delivery attempts is defined as 1 + (the sum of number of\nNACKs and number of times the acknowledgement deadline has been exceeded for the message).\n\nA NACK is any call to ModifyAckDeadline with a 0 deadline. Note that\nclient libraries may automatically extend ack_deadlines.\n\nThis field will be honored on a best effort basis.\n\nIf this parameter is 0, a default value of 5 is used.',
            ),
          },
          description:
              'A policy that specifies the conditions for dead lettering messages in\nthis subscription. If dead_letter_policy is not set, dead lettering\nis disabled.\n\nThe Cloud Pub/Sub service account associated with this subscription\'s\nparent project (i.e.,\nservice-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have\npermission to Acknowledge() messages on this subscription.',
        )
        .value,
    dependencies: [],
  );
}

base class ExpirationPolicy {
  /// Creates a [ExpirationPolicy] from a JSON map.
  factory ExpirationPolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ExpirationPolicy._(this._json);

  ExpirationPolicy({required String ttl}) {
    _json = {'ttl': ttl};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ExpirationPolicy].
  static const SchemanticType<ExpirationPolicy> $schema =
      _ExpirationPolicyTypeFactory();

  String get ttl {
    return _json['ttl'] as String;
  }

  set ttl(String value) {
    _json['ttl'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ExpirationPolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExpirationPolicyTypeFactory
    extends SchemanticType<ExpirationPolicy> {
  const _ExpirationPolicyTypeFactory();

  @override
  ExpirationPolicy parse(Object? json) {
    return ExpirationPolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ExpirationPolicy',
    definition: $Schema
        .object(
          properties: {
            'ttl': $Schema.string(
              description:
                  'Specifies the "time-to-live" duration for an associated resource. The\nresource expires if it is not active for a period of ttl.\nIf ttl is set to "", the associated resource never expires.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'.\nExample - "3.5s".',
            ),
          },
          required: ['ttl'],
          description:
              'A policy that specifies the conditions for this subscription\'s expiration.\nA subscription is considered active as long as any connected subscriber\nis successfully consuming messages from the subscription or is issuing\noperations on the subscription. If expirationPolicy is not set, a default\npolicy with ttl of 31 days will be used.  If it is set but ttl is "", the\nresource never expires.  The minimum allowed value for expirationPolicy.ttl\nis 1 day.',
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

base class NoWrapper {
  /// Creates a [NoWrapper] from a JSON map.
  factory NoWrapper.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  NoWrapper._(this._json);

  NoWrapper({required bool writeMetadata}) {
    _json = {'write_metadata': writeMetadata};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NoWrapper].
  static const SchemanticType<NoWrapper> $schema = _NoWrapperTypeFactory();

  bool get writeMetadata {
    return _json['write_metadata'] as bool;
  }

  set writeMetadata(bool value) {
    _json['write_metadata'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NoWrapper] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NoWrapperTypeFactory extends SchemanticType<NoWrapper> {
  const _NoWrapperTypeFactory();

  @override
  NoWrapper parse(Object? json) {
    return NoWrapper._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NoWrapper',
    definition: $Schema
        .object(
          properties: {
            'write_metadata': $Schema.boolean(
              description:
                  'When true, writes the Pub/Sub message metadata to\n\'x-goog-pubsub-<KEY>:<VAL>\' headers of the HTTP request. Writes the\nPub/Sub message attributes to \'<KEY>:<VAL>\' headers of the HTTP request.',
            ),
          },
          required: ['write_metadata'],
          description:
              'When set, the payload to the push endpoint is not wrapped.Sets the\n\'data\' field as the HTTP body for delivery.',
        )
        .value,
    dependencies: [],
  );
}

base class OidcToken {
  /// Creates a [OidcToken] from a JSON map.
  factory OidcToken.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  OidcToken._(this._json);

  OidcToken({String? audience, required String serviceAccountEmail}) {
    _json = {
      'audience': ?audience,
      'service_account_email': serviceAccountEmail,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [OidcToken].
  static const SchemanticType<OidcToken> $schema = _OidcTokenTypeFactory();

  String? get audience {
    return _json['audience'] as String?;
  }

  set audience(String? value) {
    if (value == null) {
      _json.remove('audience');
    } else {
      _json['audience'] = value;
    }
  }

  String get serviceAccountEmail {
    return _json['service_account_email'] as String;
  }

  set serviceAccountEmail(String value) {
    _json['service_account_email'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [OidcToken] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _OidcTokenTypeFactory extends SchemanticType<OidcToken> {
  const _OidcTokenTypeFactory();

  @override
  OidcToken parse(Object? json) {
    return OidcToken._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'OidcToken',
    definition: $Schema
        .object(
          properties: {
            'audience': $Schema.string(
              description:
                  'Audience to be used when generating OIDC token. The audience claim\nidentifies the recipients that the JWT is intended for. The audience\nvalue is a single case-sensitive string. Having multiple values (array)\nfor the audience field is not supported. More info about the OIDC JWT\ntoken audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3\nNote: if not specified, the Push endpoint URL will be used.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'Service account email to be used for generating the OIDC token.\nThe caller (for subscriptions.create, subscriptions.patch, and\nsubscriptions.modifyPushConfig RPCs) must have the\niam.serviceAccounts.actAs permission for the service account.',
            ),
          },
          required: ['service_account_email'],
          description:
              'If specified, Pub/Sub will generate and attach an OIDC JWT token as\nan Authorization header in the HTTP request for every pushed message.',
        )
        .value,
    dependencies: [],
  );
}

base class PushConfig {
  /// Creates a [PushConfig] from a JSON map.
  factory PushConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  PushConfig._(this._json);

  PushConfig({
    Map<String, String>? attributes,
    required String pushEndpoint,
    NoWrapper? noWrapper,
    OidcToken? oidcToken,
  }) {
    _json = {
      'attributes': ?attributes,
      'push_endpoint': pushEndpoint,
      'no_wrapper': ?noWrapper?.toJson(),
      'oidc_token': ?oidcToken?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PushConfig].
  static const SchemanticType<PushConfig> $schema = _PushConfigTypeFactory();

  Map<String, String>? get attributes {
    return (_json['attributes'] as Map?)?.cast<String, String>();
  }

  set attributes(Map<String, String>? value) {
    if (value == null) {
      _json.remove('attributes');
    } else {
      _json['attributes'] = value;
    }
  }

  String get pushEndpoint {
    return _json['push_endpoint'] as String;
  }

  set pushEndpoint(String value) {
    _json['push_endpoint'] = value;
  }

  NoWrapper? get noWrapper {
    return _json['no_wrapper'] == null
        ? null
        : NoWrapper.fromJson(_json['no_wrapper'] as Map<String, dynamic>);
  }

  set noWrapper(NoWrapper? value) {
    if (value == null) {
      _json.remove('no_wrapper');
    } else {
      _json['no_wrapper'] = value;
    }
  }

  OidcToken? get oidcToken {
    return _json['oidc_token'] == null
        ? null
        : OidcToken.fromJson(_json['oidc_token'] as Map<String, dynamic>);
  }

  set oidcToken(OidcToken? value) {
    if (value == null) {
      _json.remove('oidc_token');
    } else {
      _json['oidc_token'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PushConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PushConfigTypeFactory extends SchemanticType<PushConfig> {
  const _PushConfigTypeFactory();

  @override
  PushConfig parse(Object? json) {
    return PushConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PushConfig',
    definition: $Schema
        .object(
          properties: {
            'attributes': $Schema.object(
              description:
                  'Endpoint configuration attributes.\n\nEvery endpoint has a set of API supported attributes that can\nbe used to control different aspects of the message delivery.\n\nThe currently supported attribute is x-goog-version, which you\ncan use to change the format of the pushed message. This\nattribute indicates the version of the data expected by\nthe endpoint. This controls the shape of the pushed message\n(i.e., its fields and metadata). The endpoint version is\nbased on the version of the Pub/Sub API.\n\nIf not present during the subscriptions.create call,\nit will default to the version of the API used to make\nsuch call. If not present during a subscriptions.modifyPushConfig\ncall, its value will not be changed. subscriptions.get\ncalls will always return a valid version, even if the\nsubscription was created without this attribute.\n\nThe possible values for this attribute are:\n\n- v1beta1: uses the push format defined in the v1beta1 Pub/Sub API.\n- v1 or v1beta2: uses the push format defined in the v1 Pub/Sub API.',
              additionalProperties: $Schema.string(),
            ),
            'push_endpoint': $Schema.string(
              description:
                  'A URL locating the endpoint to which messages should be pushed.\nFor example, a Webhook endpoint might use\n"https://example.com/push".',
            ),
            'no_wrapper': $Schema.fromMap({'\$ref': r'#/$defs/NoWrapper'}),
            'oidc_token': $Schema.fromMap({'\$ref': r'#/$defs/OidcToken'}),
          },
          required: ['push_endpoint'],
          description:
              'If push delivery is used with this subscription, this field is used to\nconfigure it. An empty pushConfig signifies that the subscriber will\npull and ack messages using API methods.',
        )
        .value,
    dependencies: [NoWrapper.$schema, OidcToken.$schema],
  );
}

base class RetryPolicy {
  /// Creates a [RetryPolicy] from a JSON map.
  factory RetryPolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RetryPolicy._(this._json);

  RetryPolicy({String? maximumBackoff, String? minimumBackoff}) {
    _json = {
      'maximum_backoff': ?maximumBackoff,
      'minimum_backoff': ?minimumBackoff,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RetryPolicy].
  static const SchemanticType<RetryPolicy> $schema = _RetryPolicyTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get maximumBackoff {
    return _json['maximum_backoff'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maximumBackoff(String? value) {
    if (value == null) {
      _json.remove('maximum_backoff');
    } else {
      _json['maximum_backoff'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get minimumBackoff {
    return _json['minimum_backoff'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set minimumBackoff(String? value) {
    if (value == null) {
      _json.remove('minimum_backoff');
    } else {
      _json['minimum_backoff'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RetryPolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RetryPolicyTypeFactory extends SchemanticType<RetryPolicy> {
  const _RetryPolicyTypeFactory();

  @override
  RetryPolicy parse(Object? json) {
    return RetryPolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RetryPolicy',
    definition: $Schema
        .object(
          properties: {
            'maximum_backoff': $Schema.string(
              description:
                  'The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'. Example: "3.5s".',
            ),
            'minimum_backoff': $Schema.string(
              description:
                  'The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'. Example: "3.5s".',
            ),
          },
          description:
              'A policy that specifies how Pub/Sub retries message delivery for this subscription.\n\nIf not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.\nRetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message',
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

base class GooglePubsubSubscription {
  /// Creates a [GooglePubsubSubscription] from a JSON map.
  factory GooglePubsubSubscription.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GooglePubsubSubscription._(this._json);

  GooglePubsubSubscription({
    num? ackDeadlineSeconds,
    bool? enableExactlyOnceDelivery,
    bool? enableMessageOrdering,
    String? filter,
    String? id,
    Map<String, String>? labels,
    String? messageRetentionDuration,
    required String name,
    String? project,
    bool? retainAckedMessages,
    Map<String, String>? tags,
    required String topic,
    BigqueryConfig? bigqueryConfig,
    CloudStorageConfig? cloudStorageConfig,
    DeadLetterPolicy? deadLetterPolicy,
    ExpirationPolicy? expirationPolicy,
    List<MessageTransforms>? messageTransforms,
    PushConfig? pushConfig,
    RetryPolicy? retryPolicy,
    Timeouts? timeouts,
  }) {
    _json = {
      'ack_deadline_seconds': ?ackDeadlineSeconds,
      'enable_exactly_once_delivery': ?enableExactlyOnceDelivery,
      'enable_message_ordering': ?enableMessageOrdering,
      'filter': ?filter,
      'id': ?id,
      'labels': ?labels,
      'message_retention_duration': ?messageRetentionDuration,
      'name': name,
      'project': ?project,
      'retain_acked_messages': ?retainAckedMessages,
      'tags': ?tags,
      'topic': topic,
      'bigquery_config': ?bigqueryConfig?.toJson(),
      'cloud_storage_config': ?cloudStorageConfig?.toJson(),
      'dead_letter_policy': ?deadLetterPolicy?.toJson(),
      'expiration_policy': ?expirationPolicy?.toJson(),
      'message_transforms': ?messageTransforms?.map((e) => e.toJson()).toList(),
      'push_config': ?pushConfig?.toJson(),
      'retry_policy': ?retryPolicy?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GooglePubsubSubscription].
  static const SchemanticType<GooglePubsubSubscription> $schema =
      _GooglePubsubSubscriptionTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get ackDeadlineSeconds {
    return _json['ack_deadline_seconds'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set ackDeadlineSeconds(num? value) {
    if (value == null) {
      _json.remove('ack_deadline_seconds');
    } else {
      _json['ack_deadline_seconds'] = value;
    }
  }

  bool? get enableExactlyOnceDelivery {
    return _json['enable_exactly_once_delivery'] as bool?;
  }

  set enableExactlyOnceDelivery(bool? value) {
    if (value == null) {
      _json.remove('enable_exactly_once_delivery');
    } else {
      _json['enable_exactly_once_delivery'] = value;
    }
  }

  bool? get enableMessageOrdering {
    return _json['enable_message_ordering'] as bool?;
  }

  set enableMessageOrdering(bool? value) {
    if (value == null) {
      _json.remove('enable_message_ordering');
    } else {
      _json['enable_message_ordering'] = value;
    }
  }

  String? get filter {
    return _json['filter'] as String?;
  }

  set filter(String? value) {
    if (value == null) {
      _json.remove('filter');
    } else {
      _json['filter'] = value;
    }
  }

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

  bool? get retainAckedMessages {
    return _json['retain_acked_messages'] as bool?;
  }

  set retainAckedMessages(bool? value) {
    if (value == null) {
      _json.remove('retain_acked_messages');
    } else {
      _json['retain_acked_messages'] = value;
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

  String get topic {
    return _json['topic'] as String;
  }

  set topic(String value) {
    _json['topic'] = value;
  }

  BigqueryConfig? get bigqueryConfig {
    return _json['bigquery_config'] == null
        ? null
        : BigqueryConfig.fromJson(
            _json['bigquery_config'] as Map<String, dynamic>,
          );
  }

  set bigqueryConfig(BigqueryConfig? value) {
    if (value == null) {
      _json.remove('bigquery_config');
    } else {
      _json['bigquery_config'] = value;
    }
  }

  CloudStorageConfig? get cloudStorageConfig {
    return _json['cloud_storage_config'] == null
        ? null
        : CloudStorageConfig.fromJson(
            _json['cloud_storage_config'] as Map<String, dynamic>,
          );
  }

  set cloudStorageConfig(CloudStorageConfig? value) {
    if (value == null) {
      _json.remove('cloud_storage_config');
    } else {
      _json['cloud_storage_config'] = value;
    }
  }

  DeadLetterPolicy? get deadLetterPolicy {
    return _json['dead_letter_policy'] == null
        ? null
        : DeadLetterPolicy.fromJson(
            _json['dead_letter_policy'] as Map<String, dynamic>,
          );
  }

  set deadLetterPolicy(DeadLetterPolicy? value) {
    if (value == null) {
      _json.remove('dead_letter_policy');
    } else {
      _json['dead_letter_policy'] = value;
    }
  }

  ExpirationPolicy? get expirationPolicy {
    return _json['expiration_policy'] == null
        ? null
        : ExpirationPolicy.fromJson(
            _json['expiration_policy'] as Map<String, dynamic>,
          );
  }

  set expirationPolicy(ExpirationPolicy? value) {
    if (value == null) {
      _json.remove('expiration_policy');
    } else {
      _json['expiration_policy'] = value;
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

  PushConfig? get pushConfig {
    return _json['push_config'] == null
        ? null
        : PushConfig.fromJson(_json['push_config'] as Map<String, dynamic>);
  }

  set pushConfig(PushConfig? value) {
    if (value == null) {
      _json.remove('push_config');
    } else {
      _json['push_config'] = value;
    }
  }

  RetryPolicy? get retryPolicy {
    return _json['retry_policy'] == null
        ? null
        : RetryPolicy.fromJson(_json['retry_policy'] as Map<String, dynamic>);
  }

  set retryPolicy(RetryPolicy? value) {
    if (value == null) {
      _json.remove('retry_policy');
    } else {
      _json['retry_policy'] = value;
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

  /// Serializes this [GooglePubsubSubscription] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GooglePubsubSubscriptionTypeFactory
    extends SchemanticType<GooglePubsubSubscription> {
  const _GooglePubsubSubscriptionTypeFactory();

  @override
  GooglePubsubSubscription parse(Object? json) {
    return GooglePubsubSubscription._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GooglePubsubSubscription',
    definition: $Schema
        .object(
          properties: {
            'ack_deadline_seconds': $Schema.number(
              description:
                  'This value is the maximum time after a subscriber receives a message\nbefore the subscriber should acknowledge the message. After message\ndelivery but before the ack deadline expires and before the message is\nacknowledged, it is an outstanding message and will not be delivered\nagain during that time (on a best-effort basis).\n\nFor pull subscriptions, this value is used as the initial value for\nthe ack deadline. To override this value for a given message, call\nsubscriptions.modifyAckDeadline with the corresponding ackId if using\npull. The minimum custom deadline you can specify is 10 seconds. The\nmaximum custom deadline you can specify is 600 seconds (10 minutes).\nIf this parameter is 0, a default value of 10 seconds is used.\n\nFor push delivery, this value is also used to set the request timeout\nfor the call to the push endpoint.\n\nIf the subscriber never acknowledges the message, the Pub/Sub system\nwill eventually redeliver the message.',
            ),
            'enable_exactly_once_delivery': $Schema.boolean(
              description:
                  'If \'true\', Pub/Sub provides the following guarantees for the delivery\nof a message with a given value of messageId on this Subscriptions\':\n\n- The message sent to a subscriber is guaranteed not to be resent before the message\'s acknowledgement deadline expires.\n\n- An acknowledged message will not be resent to a subscriber.\n\nNote that subscribers may still receive multiple copies of a message when \'enable_exactly_once_delivery\'\nis true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values',
            ),
            'enable_message_ordering': $Schema.boolean(
              description:
                  'If \'true\', messages published with the same orderingKey in PubsubMessage will be delivered to\nthe subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they\nmay be delivered in any order.',
            ),
            'filter': $Schema.string(
              description:
                  'The subscription only delivers the messages that match the filter.\nPub/Sub automatically acknowledges the messages that don\'t match the filter. You can filter messages\nby their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,\nyou can\'t modify the filter.',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs to assign to this Subscription.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'message_retention_duration': $Schema.string(
              description:
                  'How long to retain unacknowledged messages in the subscription\'s\nbacklog, from the moment a message is published. If\nretain_acked_messages is true, then this also configures the retention\nof acknowledged messages, and thus configures how far back in time a\nsubscriptions.seek can be done. Defaults to 7 days. Cannot be more\nthan 31 days (\'"2678400s"\') or less than 10 minutes (\'"600s"\').\n\nA duration in seconds with up to nine fractional digits, terminated\nby \'s\'. Example: \'"600.5s"\'.',
            ),
            'name': $Schema.string(description: 'Name of the subscription.'),
            'project': $Schema.string(),
            'retain_acked_messages': $Schema.boolean(
              description:
                  'Indicates whether to retain acknowledged messages. If \'true\', then\nmessages are not expunged from the subscription\'s backlog, even if\nthey are acknowledged, until they fall out of the\nmessageRetentionDuration window.',
            ),
            'tags': $Schema.object(
              description:
                  'Input only. Resource manager tags to be bound to the subscription. Tag\nkeys and values have the same definition as resource manager tags. Keys\nmust be in the format tagKeys/{tag_key_id}, and values are in the format\ntagValues/456. The field is ignored when empty. The field is immutable and\ncauses resource replacement when mutated. This field is only set at create\ntime and modifying this field after creation will trigger recreation. To\napply tags to an existing resource, see the \'google_tags_tag_value\'\nresource.',
              additionalProperties: $Schema.string(),
            ),
            'topic': $Schema.string(
              description:
                  'A reference to a Topic resource, of the form projects/{project}/topics/{{name}}\n(as in the id property of a google_pubsub_topic), or just a topic name if\nthe topic is in the same project as the subscription.',
            ),
            'bigquery_config': $Schema.fromMap({
              '\$ref': r'#/$defs/BigqueryConfig',
            }),
            'cloud_storage_config': $Schema.fromMap({
              '\$ref': r'#/$defs/CloudStorageConfig',
            }),
            'dead_letter_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/DeadLetterPolicy',
            }),
            'expiration_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/ExpirationPolicy',
            }),
            'message_transforms': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/MessageTransforms'}),
            ),
            'push_config': $Schema.fromMap({'\$ref': r'#/$defs/PushConfig'}),
            'retry_policy': $Schema.fromMap({'\$ref': r'#/$defs/RetryPolicy'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name', 'topic'],
        )
        .value,
    dependencies: [
      BigqueryConfig.$schema,
      CloudStorageConfig.$schema,
      DeadLetterPolicy.$schema,
      ExpirationPolicy.$schema,
      MessageTransforms.$schema,
      PushConfig.$schema,
      RetryPolicy.$schema,
      Timeouts.$schema,
    ],
  );
}
