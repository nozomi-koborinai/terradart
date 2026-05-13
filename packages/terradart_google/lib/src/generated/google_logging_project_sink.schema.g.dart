// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_logging_project_sink.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class BigqueryOptions {
  /// Creates a [BigqueryOptions] from a JSON map.
  factory BigqueryOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BigqueryOptions._(this._json);

  BigqueryOptions({required bool usePartitionedTables}) {
    _json = {'use_partitioned_tables': usePartitionedTables};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BigqueryOptions].
  static const SchemanticType<BigqueryOptions> $schema =
      _BigqueryOptionsTypeFactory();

  bool get usePartitionedTables {
    return _json['use_partitioned_tables'] as bool;
  }

  set usePartitionedTables(bool value) {
    _json['use_partitioned_tables'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BigqueryOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BigqueryOptionsTypeFactory extends SchemanticType<BigqueryOptions> {
  const _BigqueryOptionsTypeFactory();

  @override
  BigqueryOptions parse(Object? json) {
    return BigqueryOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BigqueryOptions',
    definition: $Schema
        .object(
          properties: {
            'use_partitioned_tables': $Schema.boolean(
              description:
                  'Whether to use BigQuery\'s partition tables. By default, Logging creates dated tables based on the log entries\' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax has to be used instead. In both cases, tables are sharded based on UTC timezone.',
            ),
          },
          required: ['use_partitioned_tables'],
          description: 'Options that affect sinks exporting data to BigQuery.',
        )
        .value,
    dependencies: [],
  );
}

base class Exclusions {
  /// Creates a [Exclusions] from a JSON map.
  factory Exclusions.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Exclusions._(this._json);

  Exclusions({
    String? description,
    bool? disabled,
    required String filter,
    required String name,
  }) {
    _json = {
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': name,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Exclusions].
  static const SchemanticType<Exclusions> $schema = _ExclusionsTypeFactory();

  String? get description {
    return _json['description'] as String?;
  }

  set description(String? value) {
    if (value == null) {
      _json.remove('description');
    } else {
      _json['description'] = value;
    }
  }

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

  String get filter {
    return _json['filter'] as String;
  }

  set filter(String value) {
    _json['filter'] = value;
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Exclusions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExclusionsTypeFactory extends SchemanticType<Exclusions> {
  const _ExclusionsTypeFactory();

  @override
  Exclusions parse(Object? json) {
    return Exclusions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Exclusions',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description: 'A description of this exclusion.',
            ),
            'disabled': $Schema.boolean(
              description:
                  'If set to True, then this exclusion is disabled and it does not exclude any log entries',
            ),
            'filter': $Schema.string(
              description:
                  'An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries',
            ),
            'name': $Schema.string(
              description:
                  'A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.',
            ),
          },
          required: ['filter', 'name'],
          description:
              'Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion\'s filters, it will not be exported.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleLoggingProjectSink {
  /// Creates a [GoogleLoggingProjectSink] from a JSON map.
  factory GoogleLoggingProjectSink.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleLoggingProjectSink._(this._json);

  GoogleLoggingProjectSink({
    String? customWriterIdentity,
    String? description,
    required String destination,
    bool? disabled,
    String? filter,
    String? id,
    required String name,
    String? project,
    bool? uniqueWriterIdentity,
    BigqueryOptions? bigqueryOptions,
    List<Exclusions>? exclusions,
  }) {
    _json = {
      'custom_writer_identity': ?customWriterIdentity,
      'description': ?description,
      'destination': destination,
      'disabled': ?disabled,
      'filter': ?filter,
      'id': ?id,
      'name': name,
      'project': ?project,
      'unique_writer_identity': ?uniqueWriterIdentity,
      'bigquery_options': ?bigqueryOptions?.toJson(),
      'exclusions': ?exclusions?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleLoggingProjectSink].
  static const SchemanticType<GoogleLoggingProjectSink> $schema =
      _GoogleLoggingProjectSinkTypeFactory();

  String? get customWriterIdentity {
    return _json['custom_writer_identity'] as String?;
  }

  set customWriterIdentity(String? value) {
    if (value == null) {
      _json.remove('custom_writer_identity');
    } else {
      _json['custom_writer_identity'] = value;
    }
  }

  String? get description {
    return _json['description'] as String?;
  }

  set description(String? value) {
    if (value == null) {
      _json.remove('description');
    } else {
      _json['description'] = value;
    }
  }

  String get destination {
    return _json['destination'] as String;
  }

  set destination(String value) {
    _json['destination'] = value;
  }

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

  bool? get uniqueWriterIdentity {
    return _json['unique_writer_identity'] as bool?;
  }

  set uniqueWriterIdentity(bool? value) {
    if (value == null) {
      _json.remove('unique_writer_identity');
    } else {
      _json['unique_writer_identity'] = value;
    }
  }

  BigqueryOptions? get bigqueryOptions {
    return _json['bigquery_options'] == null
        ? null
        : BigqueryOptions.fromJson(
            _json['bigquery_options'] as Map<String, dynamic>,
          );
  }

  set bigqueryOptions(BigqueryOptions? value) {
    if (value == null) {
      _json.remove('bigquery_options');
    } else {
      _json['bigquery_options'] = value;
    }
  }

  List<Exclusions>? get exclusions {
    return (_json['exclusions'] as List?)
        ?.map((e) => Exclusions.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set exclusions(List<Exclusions>? value) {
    if (value == null) {
      _json.remove('exclusions');
    } else {
      _json['exclusions'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleLoggingProjectSink] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleLoggingProjectSinkTypeFactory
    extends SchemanticType<GoogleLoggingProjectSink> {
  const _GoogleLoggingProjectSinkTypeFactory();

  @override
  GoogleLoggingProjectSink parse(Object? json) {
    return GoogleLoggingProjectSink._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleLoggingProjectSink',
    definition: $Schema
        .object(
          properties: {
            'custom_writer_identity': $Schema.string(
              description:
                  'A service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some@email. This field can only be specified if you are routing logs to a destination outside this sink\'s project. If not specified, a Logging service account will automatically be generated.',
            ),
            'description': $Schema.string(
              description:
                  'A description of this sink. The maximum length of the description is 8000 characters.',
            ),
            'destination': $Schema.string(
              description:
                  'The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" The writer associated with the sink must have access to write to the above resource.',
            ),
            'disabled': $Schema.boolean(
              description:
                  'If set to True, then this sink is disabled and it does not export any log entries.',
            ),
            'filter': $Schema.string(
              description:
                  'The filter to apply when exporting logs. Only log entries that match the filter are exported.',
            ),
            'id': $Schema.string(),
            'name': $Schema.string(
              description: 'The name of the logging sink.',
            ),
            'project': $Schema.string(
              description:
                  'The ID of the project to create the sink in. If omitted, the project associated with the provider is used.',
            ),
            'unique_writer_identity': $Schema.boolean(
              description:
                  'Whether or not to create a unique identity associated with this sink. If false (the legacy behavior), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true (default), then a unique service account is created and used for this sink. If you wish to publish logs across projects, you must set unique_writer_identity to true.',
            ),
            'bigquery_options': $Schema.fromMap({
              '\$ref': r'#/$defs/BigqueryOptions',
            }),
            'exclusions': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Exclusions'}),
            ),
          },
          required: ['destination', 'name'],
        )
        .value,
    dependencies: [BigqueryOptions.$schema, Exclusions.$schema],
  );
}
