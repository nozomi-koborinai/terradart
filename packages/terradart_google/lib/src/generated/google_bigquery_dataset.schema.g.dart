// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_bigquery_dataset.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Condition {
  /// Creates a [Condition] from a JSON map.
  factory Condition.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Condition._(this._json);

  Condition({
    String? description,
    required String expression,
    String? location,
    String? title,
  }) {
    _json = {
      'description': ?description,
      'expression': expression,
      'location': ?location,
      'title': ?title,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Condition].
  static const SchemanticType<Condition> $schema = _ConditionTypeFactory();

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

  String get expression {
    return _json['expression'] as String;
  }

  set expression(String value) {
    _json['expression'] = value;
  }

  String? get location {
    return _json['location'] as String?;
  }

  set location(String? value) {
    if (value == null) {
      _json.remove('location');
    } else {
      _json['location'] = value;
    }
  }

  String? get title {
    return _json['title'] as String?;
  }

  set title(String? value) {
    if (value == null) {
      _json.remove('title');
    } else {
      _json['title'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Condition] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionTypeFactory extends SchemanticType<Condition> {
  const _ConditionTypeFactory();

  @override
  Condition parse(Object? json) {
    return Condition._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Condition',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description:
                  'Description of the expression. This is a longer text which describes the expression,\ne.g. when hovered over it in a UI.',
            ),
            'expression': $Schema.string(
              description:
                  'Textual representation of an expression in Common Expression Language syntax.',
            ),
            'location': $Schema.string(
              description:
                  'String indicating the location of the expression for error reporting, e.g. a file\nname and a position in the file.',
            ),
            'title': $Schema.string(
              description:
                  'Title for the expression, i.e. a short string describing its purpose.\nThis can be used e.g. in UIs which allow to enter the expression.',
            ),
          },
          required: ['expression'],
          description:
              'Condition for the binding. If CEL expression in this field is true, this\naccess binding will be considered.',
        )
        .value,
    dependencies: [],
  );
}

base class AccessDatasetDataset {
  /// Creates a [AccessDatasetDataset] from a JSON map.
  factory AccessDatasetDataset.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AccessDatasetDataset._(this._json);

  AccessDatasetDataset({required String datasetId, required String projectId}) {
    _json = {'dataset_id': datasetId, 'project_id': projectId};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AccessDatasetDataset].
  static const SchemanticType<AccessDatasetDataset> $schema =
      _AccessDatasetDatasetTypeFactory();

  String get datasetId {
    return _json['dataset_id'] as String;
  }

  set datasetId(String value) {
    _json['dataset_id'] = value;
  }

  String get projectId {
    return _json['project_id'] as String;
  }

  set projectId(String value) {
    _json['project_id'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AccessDatasetDataset] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AccessDatasetDatasetTypeFactory
    extends SchemanticType<AccessDatasetDataset> {
  const _AccessDatasetDatasetTypeFactory();

  @override
  AccessDatasetDataset parse(Object? json) {
    return AccessDatasetDataset._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AccessDatasetDataset',
    definition: $Schema
        .object(
          properties: {
            'dataset_id': $Schema.string(
              description: 'The ID of the dataset containing this table.',
            ),
            'project_id': $Schema.string(
              description: 'The ID of the project containing this table.',
            ),
          },
          required: ['dataset_id', 'project_id'],
          description: 'The dataset this entry applies to',
        )
        .value,
    dependencies: [],
  );
}

base class AccessDataset {
  /// Creates a [AccessDataset] from a JSON map.
  factory AccessDataset.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AccessDataset._(this._json);

  AccessDataset({
    required List<String> targetTypes,
    required AccessDatasetDataset dataset,
  }) {
    _json = {'target_types': targetTypes, 'dataset': dataset.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AccessDataset].
  static const SchemanticType<AccessDataset> $schema =
      _AccessDatasetTypeFactory();

  List<String> get targetTypes {
    return (_json['target_types'] as List).cast<String>();
  }

  set targetTypes(List<String> value) {
    _json['target_types'] = value;
  }

  AccessDatasetDataset get dataset {
    return AccessDatasetDataset.fromJson(
      _json['dataset'] as Map<String, dynamic>,
    );
  }

  set dataset(AccessDatasetDataset value) {
    _json['dataset'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AccessDataset] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AccessDatasetTypeFactory extends SchemanticType<AccessDataset> {
  const _AccessDatasetTypeFactory();

  @override
  AccessDataset parse(Object? json) {
    return AccessDataset._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AccessDataset',
    definition: $Schema
        .object(
          properties: {
            'target_types': $Schema.list(
              description:
                  'Which resources in the dataset this entry applies to. Currently, only views are supported,\nbut additional target types may be added in the future. Possible values: VIEWS',
              items: $Schema.string(),
            ),
            'dataset': $Schema.fromMap({
              '\$ref': r'#/$defs/AccessDatasetDataset',
            }),
          },
          required: ['target_types', 'dataset'],
          description:
              'Grants all resources of particular types in a particular dataset read access to the current dataset.',
        )
        .value,
    dependencies: [AccessDatasetDataset.$schema],
  );
}

base class Routine {
  /// Creates a [Routine] from a JSON map.
  factory Routine.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Routine._(this._json);

  Routine({
    required String datasetId,
    required String projectId,
    required String routineId,
  }) {
    _json = {
      'dataset_id': datasetId,
      'project_id': projectId,
      'routine_id': routineId,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Routine].
  static const SchemanticType<Routine> $schema = _RoutineTypeFactory();

  String get datasetId {
    return _json['dataset_id'] as String;
  }

  set datasetId(String value) {
    _json['dataset_id'] = value;
  }

  String get projectId {
    return _json['project_id'] as String;
  }

  set projectId(String value) {
    _json['project_id'] = value;
  }

  String get routineId {
    return _json['routine_id'] as String;
  }

  set routineId(String value) {
    _json['routine_id'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Routine] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RoutineTypeFactory extends SchemanticType<Routine> {
  const _RoutineTypeFactory();

  @override
  Routine parse(Object? json) {
    return Routine._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Routine',
    definition: $Schema
        .object(
          properties: {
            'dataset_id': $Schema.string(
              description: 'The ID of the dataset containing this table.',
            ),
            'project_id': $Schema.string(
              description: 'The ID of the project containing this table.',
            ),
            'routine_id': $Schema.string(
              description:
                  'The ID of the routine. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 256 characters.',
            ),
          },
          required: ['dataset_id', 'project_id', 'routine_id'],
          description:
              'A routine from a different dataset to grant access to. Queries\nexecuted against that routine will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that routine is updated by any user, access to the routine\nneeds to be granted again via an update operation.',
        )
        .value,
    dependencies: [],
  );
}

base class View {
  /// Creates a [View] from a JSON map.
  factory View.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  View._(this._json);

  View({
    required String datasetId,
    required String projectId,
    required String tableId,
  }) {
    _json = {
      'dataset_id': datasetId,
      'project_id': projectId,
      'table_id': tableId,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [View].
  static const SchemanticType<View> $schema = _ViewTypeFactory();

  String get datasetId {
    return _json['dataset_id'] as String;
  }

  set datasetId(String value) {
    _json['dataset_id'] = value;
  }

  String get projectId {
    return _json['project_id'] as String;
  }

  set projectId(String value) {
    _json['project_id'] = value;
  }

  String get tableId {
    return _json['table_id'] as String;
  }

  set tableId(String value) {
    _json['table_id'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [View] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ViewTypeFactory extends SchemanticType<View> {
  const _ViewTypeFactory();

  @override
  View parse(Object? json) {
    return View._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'View',
    definition: $Schema
        .object(
          properties: {
            'dataset_id': $Schema.string(
              description: 'The ID of the dataset containing this table.',
            ),
            'project_id': $Schema.string(
              description: 'The ID of the project containing this table.',
            ),
            'table_id': $Schema.string(
              description:
                  'The ID of the table. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 1,024 characters.',
            ),
          },
          required: ['dataset_id', 'project_id', 'table_id'],
          description:
              'A view from a different dataset to grant access to. Queries\nexecuted against that view will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that view is updated by any user, access to the view\nneeds to be granted again via an update operation.',
        )
        .value,
    dependencies: [],
  );
}

base class Access {
  /// Creates a [Access] from a JSON map.
  factory Access.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Access._(this._json);

  Access({
    String? domain,
    String? groupByEmail,
    String? iamMember,
    String? role,
    String? specialGroup,
    String? userByEmail,
    Condition? condition,
    AccessDataset? dataset,
    Routine? routine,
    View? view,
  }) {
    _json = {
      'domain': ?domain,
      'group_by_email': ?groupByEmail,
      'iam_member': ?iamMember,
      'role': ?role,
      'special_group': ?specialGroup,
      'user_by_email': ?userByEmail,
      'condition': ?condition?.toJson(),
      'dataset': ?dataset?.toJson(),
      'routine': ?routine?.toJson(),
      'view': ?view?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Access].
  static const SchemanticType<Access> $schema = _AccessTypeFactory();

  String? get domain {
    return _json['domain'] as String?;
  }

  set domain(String? value) {
    if (value == null) {
      _json.remove('domain');
    } else {
      _json['domain'] = value;
    }
  }

  String? get groupByEmail {
    return _json['group_by_email'] as String?;
  }

  set groupByEmail(String? value) {
    if (value == null) {
      _json.remove('group_by_email');
    } else {
      _json['group_by_email'] = value;
    }
  }

  String? get iamMember {
    return _json['iam_member'] as String?;
  }

  set iamMember(String? value) {
    if (value == null) {
      _json.remove('iam_member');
    } else {
      _json['iam_member'] = value;
    }
  }

  String? get role {
    return _json['role'] as String?;
  }

  set role(String? value) {
    if (value == null) {
      _json.remove('role');
    } else {
      _json['role'] = value;
    }
  }

  String? get specialGroup {
    return _json['special_group'] as String?;
  }

  set specialGroup(String? value) {
    if (value == null) {
      _json.remove('special_group');
    } else {
      _json['special_group'] = value;
    }
  }

  String? get userByEmail {
    return _json['user_by_email'] as String?;
  }

  set userByEmail(String? value) {
    if (value == null) {
      _json.remove('user_by_email');
    } else {
      _json['user_by_email'] = value;
    }
  }

  Condition? get condition {
    return _json['condition'] == null
        ? null
        : Condition.fromJson(_json['condition'] as Map<String, dynamic>);
  }

  set condition(Condition? value) {
    if (value == null) {
      _json.remove('condition');
    } else {
      _json['condition'] = value;
    }
  }

  AccessDataset? get dataset {
    return _json['dataset'] == null
        ? null
        : AccessDataset.fromJson(_json['dataset'] as Map<String, dynamic>);
  }

  set dataset(AccessDataset? value) {
    if (value == null) {
      _json.remove('dataset');
    } else {
      _json['dataset'] = value;
    }
  }

  Routine? get routine {
    return _json['routine'] == null
        ? null
        : Routine.fromJson(_json['routine'] as Map<String, dynamic>);
  }

  set routine(Routine? value) {
    if (value == null) {
      _json.remove('routine');
    } else {
      _json['routine'] = value;
    }
  }

  View? get view {
    return _json['view'] == null
        ? null
        : View.fromJson(_json['view'] as Map<String, dynamic>);
  }

  set view(View? value) {
    if (value == null) {
      _json.remove('view');
    } else {
      _json['view'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Access] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AccessTypeFactory extends SchemanticType<Access> {
  const _AccessTypeFactory();

  @override
  Access parse(Object? json) {
    return Access._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Access',
    definition: $Schema
        .object(
          properties: {
            'domain': $Schema.string(
              description:
                  'A domain to grant access to. Any users signed in with the\ndomain specified will be granted the specified access',
            ),
            'group_by_email': $Schema.string(
              description:
                  'An email address of a Google Group to grant access to.',
            ),
            'iam_member': $Schema.string(
              description:
                  'Some other type of member that appears in the IAM Policy but isn\'t a user,\ngroup, domain, or special group. For example: \'allUsers\'',
            ),
            'role': $Schema.string(
              description:
                  'Describes the rights granted to the user specified by the other\nmember of the access object. Basic, predefined, and custom roles\nare supported. Predefined roles that have equivalent basic roles\nare swapped by the API to their basic counterparts. See\n[official docs](https://cloud.google.com/bigquery/docs/access-control).',
            ),
            'special_group': $Schema.string(
              description:
                  'A special group to grant access to. Possible values include:\n* \'projectOwners\': Owners of the enclosing project.\n* \'projectReaders\': Readers of the enclosing project.\n* \'projectWriters\': Writers of the enclosing project.\n* \'allAuthenticatedUsers\': All authenticated BigQuery users.',
            ),
            'user_by_email': $Schema.string(
              description:
                  'An email address of a user to grant access to. For example:\nfred@example.com',
            ),
            'condition': $Schema.fromMap({'\$ref': r'#/$defs/Condition'}),
            'dataset': $Schema.fromMap({'\$ref': r'#/$defs/AccessDataset'}),
            'routine': $Schema.fromMap({'\$ref': r'#/$defs/Routine'}),
            'view': $Schema.fromMap({'\$ref': r'#/$defs/View'}),
          },
          description:
              'An array of objects that define dataset access for one or more entities.',
        )
        .value,
    dependencies: [
      Condition.$schema,
      AccessDataset.$schema,
      Routine.$schema,
      View.$schema,
    ],
  );
}

base class DefaultEncryptionConfiguration {
  /// Creates a [DefaultEncryptionConfiguration] from a JSON map.
  factory DefaultEncryptionConfiguration.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DefaultEncryptionConfiguration._(this._json);

  DefaultEncryptionConfiguration({required String kmsKeyName}) {
    _json = {'kms_key_name': kmsKeyName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DefaultEncryptionConfiguration].
  static const SchemanticType<DefaultEncryptionConfiguration> $schema =
      _DefaultEncryptionConfigurationTypeFactory();

  String get kmsKeyName {
    return _json['kms_key_name'] as String;
  }

  set kmsKeyName(String value) {
    _json['kms_key_name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [DefaultEncryptionConfiguration] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DefaultEncryptionConfigurationTypeFactory
    extends SchemanticType<DefaultEncryptionConfiguration> {
  const _DefaultEncryptionConfigurationTypeFactory();

  @override
  DefaultEncryptionConfiguration parse(Object? json) {
    return DefaultEncryptionConfiguration._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DefaultEncryptionConfiguration',
    definition: $Schema
        .object(
          properties: {
            'kms_key_name': $Schema.string(
              description:
                  'Describes the Cloud KMS encryption key that will be used to protect destination\nBigQuery table. The BigQuery Service Account associated with your project requires\naccess to this encryption key.',
            ),
          },
          required: ['kms_key_name'],
          description:
              'The default encryption key for all tables in the dataset. Once this property is set,\nall newly-created partitioned tables in the dataset will have encryption key set to\nthis value, unless table creation request (or query) overrides the key.',
        )
        .value,
    dependencies: [],
  );
}

base class ExternalCatalogDatasetOptions {
  /// Creates a [ExternalCatalogDatasetOptions] from a JSON map.
  factory ExternalCatalogDatasetOptions.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ExternalCatalogDatasetOptions._(this._json);

  ExternalCatalogDatasetOptions({
    String? defaultStorageLocationUri,
    Map<String, String>? parameters,
  }) {
    _json = {
      'default_storage_location_uri': ?defaultStorageLocationUri,
      'parameters': ?parameters,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ExternalCatalogDatasetOptions].
  static const SchemanticType<ExternalCatalogDatasetOptions> $schema =
      _ExternalCatalogDatasetOptionsTypeFactory();

  String? get defaultStorageLocationUri {
    return _json['default_storage_location_uri'] as String?;
  }

  set defaultStorageLocationUri(String? value) {
    if (value == null) {
      _json.remove('default_storage_location_uri');
    } else {
      _json['default_storage_location_uri'] = value;
    }
  }

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

  /// Serializes this [ExternalCatalogDatasetOptions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExternalCatalogDatasetOptionsTypeFactory
    extends SchemanticType<ExternalCatalogDatasetOptions> {
  const _ExternalCatalogDatasetOptionsTypeFactory();

  @override
  ExternalCatalogDatasetOptions parse(Object? json) {
    return ExternalCatalogDatasetOptions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ExternalCatalogDatasetOptions',
    definition: $Schema
        .object(
          properties: {
            'default_storage_location_uri': $Schema.string(
              description:
                  'The storage location URI for all tables in the dataset. Equivalent to hive metastore\'s\ndatabase locationUri. Maximum length of 1024 characters.',
            ),
            'parameters': $Schema.object(
              description:
                  'A map of key value pairs defining the parameters and properties of the open source schema.\nMaximum size of 2Mib.',
              additionalProperties: $Schema.string(),
            ),
          },
          description:
              'Options defining open source compatible datasets living in the BigQuery catalog. Contains\nmetadata of open source database, schema or namespace represented by the current dataset.',
        )
        .value,
    dependencies: [],
  );
}

base class ExternalDatasetReference {
  /// Creates a [ExternalDatasetReference] from a JSON map.
  factory ExternalDatasetReference.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ExternalDatasetReference._(this._json);

  ExternalDatasetReference({
    required String connection,
    required String externalSource,
  }) {
    _json = {'connection': connection, 'external_source': externalSource};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ExternalDatasetReference].
  static const SchemanticType<ExternalDatasetReference> $schema =
      _ExternalDatasetReferenceTypeFactory();

  String get connection {
    return _json['connection'] as String;
  }

  set connection(String value) {
    _json['connection'] = value;
  }

  String get externalSource {
    return _json['external_source'] as String;
  }

  set externalSource(String value) {
    _json['external_source'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ExternalDatasetReference] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ExternalDatasetReferenceTypeFactory
    extends SchemanticType<ExternalDatasetReference> {
  const _ExternalDatasetReferenceTypeFactory();

  @override
  ExternalDatasetReference parse(Object? json) {
    return ExternalDatasetReference._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ExternalDatasetReference',
    definition: $Schema
        .object(
          properties: {
            'connection': $Schema.string(
              description:
                  'The connection id that is used to access the externalSource.\nFormat: projects/{projectId}/locations/{locationId}/connections/{connectionId}',
            ),
            'external_source': $Schema.string(
              description: 'External source that backs this dataset.',
            ),
          },
          required: ['connection', 'external_source'],
          description:
              'Information about the external metadata storage where the dataset is defined.',
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

base class GoogleBigqueryDataset {
  /// Creates a [GoogleBigqueryDataset] from a JSON map.
  factory GoogleBigqueryDataset.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleBigqueryDataset._(this._json);

  GoogleBigqueryDataset({
    required String datasetId,
    String? defaultCollation,
    num? defaultPartitionExpirationMs,
    num? defaultTableExpirationMs,
    bool? deleteContentsOnDestroy,
    String? description,
    String? friendlyName,
    String? id,
    bool? isCaseInsensitive,
    Map<String, String>? labels,
    String? location,
    String? maxTimeTravelHours,
    String? project,
    Map<String, String>? resourceTags,
    String? storageBillingModel,
    List<Access>? access,
    DefaultEncryptionConfiguration? defaultEncryptionConfiguration,
    ExternalCatalogDatasetOptions? externalCatalogDatasetOptions,
    ExternalDatasetReference? externalDatasetReference,
    Timeouts? timeouts,
  }) {
    _json = {
      'dataset_id': datasetId,
      'default_collation': ?defaultCollation,
      'default_partition_expiration_ms': ?defaultPartitionExpirationMs,
      'default_table_expiration_ms': ?defaultTableExpirationMs,
      'delete_contents_on_destroy': ?deleteContentsOnDestroy,
      'description': ?description,
      'friendly_name': ?friendlyName,
      'id': ?id,
      'is_case_insensitive': ?isCaseInsensitive,
      'labels': ?labels,
      'location': ?location,
      'max_time_travel_hours': ?maxTimeTravelHours,
      'project': ?project,
      'resource_tags': ?resourceTags,
      'storage_billing_model': ?storageBillingModel,
      'access': ?access?.map((e) => e.toJson()).toList(),
      'default_encryption_configuration': ?defaultEncryptionConfiguration
          ?.toJson(),
      'external_catalog_dataset_options': ?externalCatalogDatasetOptions
          ?.toJson(),
      'external_dataset_reference': ?externalDatasetReference?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleBigqueryDataset].
  static const SchemanticType<GoogleBigqueryDataset> $schema =
      _GoogleBigqueryDatasetTypeFactory();

  String get datasetId {
    return _json['dataset_id'] as String;
  }

  set datasetId(String value) {
    _json['dataset_id'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get defaultCollation {
    return _json['default_collation'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set defaultCollation(String? value) {
    if (value == null) {
      _json.remove('default_collation');
    } else {
      _json['default_collation'] = value;
    }
  }

  num? get defaultPartitionExpirationMs {
    return _json['default_partition_expiration_ms'] as num?;
  }

  set defaultPartitionExpirationMs(num? value) {
    if (value == null) {
      _json.remove('default_partition_expiration_ms');
    } else {
      _json['default_partition_expiration_ms'] = value;
    }
  }

  num? get defaultTableExpirationMs {
    return _json['default_table_expiration_ms'] as num?;
  }

  set defaultTableExpirationMs(num? value) {
    if (value == null) {
      _json.remove('default_table_expiration_ms');
    } else {
      _json['default_table_expiration_ms'] = value;
    }
  }

  bool? get deleteContentsOnDestroy {
    return _json['delete_contents_on_destroy'] as bool?;
  }

  set deleteContentsOnDestroy(bool? value) {
    if (value == null) {
      _json.remove('delete_contents_on_destroy');
    } else {
      _json['delete_contents_on_destroy'] = value;
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

  String? get friendlyName {
    return _json['friendly_name'] as String?;
  }

  set friendlyName(String? value) {
    if (value == null) {
      _json.remove('friendly_name');
    } else {
      _json['friendly_name'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  bool? get isCaseInsensitive {
    return _json['is_case_insensitive'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set isCaseInsensitive(bool? value) {
    if (value == null) {
      _json.remove('is_case_insensitive');
    } else {
      _json['is_case_insensitive'] = value;
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

  String? get location {
    return _json['location'] as String?;
  }

  set location(String? value) {
    if (value == null) {
      _json.remove('location');
    } else {
      _json['location'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get maxTimeTravelHours {
    return _json['max_time_travel_hours'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxTimeTravelHours(String? value) {
    if (value == null) {
      _json.remove('max_time_travel_hours');
    } else {
      _json['max_time_travel_hours'] = value;
    }
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

  Map<String, String>? get resourceTags {
    return (_json['resource_tags'] as Map?)?.cast<String, String>();
  }

  set resourceTags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('resource_tags');
    } else {
      _json['resource_tags'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get storageBillingModel {
    return _json['storage_billing_model'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set storageBillingModel(String? value) {
    if (value == null) {
      _json.remove('storage_billing_model');
    } else {
      _json['storage_billing_model'] = value;
    }
  }

  List<Access>? get access {
    return (_json['access'] as List?)
        ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set access(List<Access>? value) {
    if (value == null) {
      _json.remove('access');
    } else {
      _json['access'] = value.toList();
    }
  }

  DefaultEncryptionConfiguration? get defaultEncryptionConfiguration {
    return _json['default_encryption_configuration'] == null
        ? null
        : DefaultEncryptionConfiguration.fromJson(
            _json['default_encryption_configuration'] as Map<String, dynamic>,
          );
  }

  set defaultEncryptionConfiguration(DefaultEncryptionConfiguration? value) {
    if (value == null) {
      _json.remove('default_encryption_configuration');
    } else {
      _json['default_encryption_configuration'] = value;
    }
  }

  ExternalCatalogDatasetOptions? get externalCatalogDatasetOptions {
    return _json['external_catalog_dataset_options'] == null
        ? null
        : ExternalCatalogDatasetOptions.fromJson(
            _json['external_catalog_dataset_options'] as Map<String, dynamic>,
          );
  }

  set externalCatalogDatasetOptions(ExternalCatalogDatasetOptions? value) {
    if (value == null) {
      _json.remove('external_catalog_dataset_options');
    } else {
      _json['external_catalog_dataset_options'] = value;
    }
  }

  ExternalDatasetReference? get externalDatasetReference {
    return _json['external_dataset_reference'] == null
        ? null
        : ExternalDatasetReference.fromJson(
            _json['external_dataset_reference'] as Map<String, dynamic>,
          );
  }

  set externalDatasetReference(ExternalDatasetReference? value) {
    if (value == null) {
      _json.remove('external_dataset_reference');
    } else {
      _json['external_dataset_reference'] = value;
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

  /// Serializes this [GoogleBigqueryDataset] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleBigqueryDatasetTypeFactory
    extends SchemanticType<GoogleBigqueryDataset> {
  const _GoogleBigqueryDatasetTypeFactory();

  @override
  GoogleBigqueryDataset parse(Object? json) {
    return GoogleBigqueryDataset._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleBigqueryDataset',
    definition: $Schema
        .object(
          properties: {
            'dataset_id': $Schema.string(
              description:
                  'A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.',
            ),
            'default_collation': $Schema.string(
              description:
                  'Defines the default collation specification of future tables created\nin the dataset. If a table is created in this dataset without table-level\ndefault collation, then the table inherits the dataset default collation,\nwhich is applied to the string fields that do not have explicit collation\nspecified. A change to this field affects only tables created afterwards,\nand does not alter the existing tables.\n\nThe following values are supported:\n- \'und:ci\': undetermined locale, case insensitive.\n- \'\': empty string. Default to case-sensitive behavior.',
            ),
            'default_partition_expiration_ms': $Schema.number(
              description:
                  'The default partition expiration for all partitioned tables in\nthe dataset, in milliseconds.\nOnce this property is set, all newly-created partitioned tables in\nthe dataset will have an \'expirationMs\' property in the \'timePartitioning\'\nsettings set to this value, and changing the value will only\naffect new tables, not existing ones. The storage in a partition will\nhave an expiration time of its partition time plus this value.\nSetting this property overrides the use of \'defaultTableExpirationMs\'\nfor partitioned tables: only one of \'defaultTableExpirationMs\' and\n\'defaultPartitionExpirationMs\' will be used for any new partitioned\ntable. If you provide an explicit \'timePartitioning.expirationMs\' when\ncreating or updating a partitioned table, that value takes precedence\nover the default partition expiration time indicated by this property.',
            ),
            'default_table_expiration_ms': $Schema.number(
              description:
                  'The default lifetime of all tables in the dataset, in milliseconds.\nThe minimum value is 3600000 milliseconds (one hour).\nOnce this property is set, all newly-created tables in the dataset\nwill have an \'expirationTime\' property set to the creation time plus\nthe value in this property, and changing the value will only affect\nnew tables, not existing ones. When the \'expirationTime\' for a given\ntable is reached, that table will be deleted automatically.\nIf a table\'s \'expirationTime\' is modified or removed before the\ntable expires, or if you provide an explicit \'expirationTime\' when\ncreating a table, that value takes precedence over the default\nexpiration time indicated by this property.',
            ),
            'delete_contents_on_destroy': $Schema.boolean(
              description:
                  'If set to \'true\', delete all the tables in the\ndataset when destroying the resource; otherwise,\ndestroying the resource will fail if tables are present.',
            ),
            'description': $Schema.string(
              description: 'A user-friendly description of the dataset',
            ),
            'friendly_name': $Schema.string(
              description: 'A descriptive name for the dataset',
            ),
            'id': $Schema.string(),
            'is_case_insensitive': $Schema.boolean(
              description:
                  'TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.\nBy default, this is FALSE, which means the dataset and its table names are\ncase-sensitive. This field does not affect routine references.',
            ),
            'labels': $Schema.object(
              description:
                  'The labels associated with this dataset. You can use these to\norganize and group your datasets.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'location': $Schema.string(
              description:
                  'The geographic location where the dataset should reside.\nSee [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).\nThere are two types of locations, regional or multi-regional. A regional\nlocation is a specific geographic place, such as Tokyo, and a multi-regional\nlocation is a large geographic area, such as the United States, that\ncontains at least two geographic places.\nThe default value is multi-regional location \'US\'.\nChanging this forces a new resource to be created.',
            ),
            'max_time_travel_hours': $Schema.string(
              description:
                  'Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).',
            ),
            'project': $Schema.string(),
            'resource_tags': $Schema.object(
              description:
                  'The tags attached to this table. Tag keys are globally unique. Tag key is expected to be\nin the namespaced format, for example "123456789012/environment" where 123456789012 is the\nID of the parent organization or project resource for this tag key. Tag value is expected\nto be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)\nfor more details.',
              additionalProperties: $Schema.string(),
            ),
            'storage_billing_model': $Schema.string(
              description:
                  'Specifies the storage billing model for the dataset.\nSet this flag value to LOGICAL to use logical bytes for storage billing,\nor to PHYSICAL to use physical bytes instead.\n\nLOGICAL is the default if this flag isn\'t specified.',
            ),
            'access': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Access'}),
            ),
            'default_encryption_configuration': $Schema.fromMap({
              '\$ref': r'#/$defs/DefaultEncryptionConfiguration',
            }),
            'external_catalog_dataset_options': $Schema.fromMap({
              '\$ref': r'#/$defs/ExternalCatalogDatasetOptions',
            }),
            'external_dataset_reference': $Schema.fromMap({
              '\$ref': r'#/$defs/ExternalDatasetReference',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['dataset_id'],
        )
        .value,
    dependencies: [
      Access.$schema,
      DefaultEncryptionConfiguration.$schema,
      ExternalCatalogDatasetOptions.$schema,
      ExternalDatasetReference.$schema,
      Timeouts.$schema,
    ],
  );
}
