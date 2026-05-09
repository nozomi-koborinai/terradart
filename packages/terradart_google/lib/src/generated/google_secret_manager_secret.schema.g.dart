// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_secret_manager_secret.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class ReplicationAutoCustomerManagedEncryption {
  /// Creates a [ReplicationAutoCustomerManagedEncryption] from a JSON map.
  factory ReplicationAutoCustomerManagedEncryption.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ReplicationAutoCustomerManagedEncryption._(this._json);

  ReplicationAutoCustomerManagedEncryption({required String kmsKeyName}) {
    _json = {'kms_key_name': kmsKeyName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ReplicationAutoCustomerManagedEncryption].
  static const SchemanticType<ReplicationAutoCustomerManagedEncryption>
  $schema = _ReplicationAutoCustomerManagedEncryptionTypeFactory();

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

  /// Serializes this [ReplicationAutoCustomerManagedEncryption] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReplicationAutoCustomerManagedEncryptionTypeFactory
    extends SchemanticType<ReplicationAutoCustomerManagedEncryption> {
  const _ReplicationAutoCustomerManagedEncryptionTypeFactory();

  @override
  ReplicationAutoCustomerManagedEncryption parse(Object? json) {
    return ReplicationAutoCustomerManagedEncryption._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ReplicationAutoCustomerManagedEncryption',
    definition: $Schema
        .object(
          properties: {
            'kms_key_name': $Schema.string(
              description:
                  'The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.',
            ),
          },
          required: ['kms_key_name'],
          description:
              'The customer-managed encryption configuration of the Secret.\nIf no configuration is provided, Google-managed default\nencryption is used.',
        )
        .value,
    dependencies: [],
  );
}

base class Auto {
  /// Creates a [Auto] from a JSON map.
  factory Auto.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Auto._(this._json);

  Auto({ReplicationAutoCustomerManagedEncryption? customerManagedEncryption}) {
    _json = {
      'customer_managed_encryption': ?customerManagedEncryption?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Auto].
  static const SchemanticType<Auto> $schema = _AutoTypeFactory();

  ReplicationAutoCustomerManagedEncryption? get customerManagedEncryption {
    return _json['customer_managed_encryption'] == null
        ? null
        : ReplicationAutoCustomerManagedEncryption.fromJson(
            _json['customer_managed_encryption'] as Map<String, dynamic>,
          );
  }

  set customerManagedEncryption(
    ReplicationAutoCustomerManagedEncryption? value,
  ) {
    if (value == null) {
      _json.remove('customer_managed_encryption');
    } else {
      _json['customer_managed_encryption'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Auto] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AutoTypeFactory extends SchemanticType<Auto> {
  const _AutoTypeFactory();

  @override
  Auto parse(Object? json) {
    return Auto._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Auto',
    definition: $Schema
        .object(
          properties: {
            'customer_managed_encryption': $Schema.fromMap({
              '\$ref': r'#/$defs/ReplicationAutoCustomerManagedEncryption',
            }),
          },
          description:
              'The Secret will automatically be replicated without any restrictions.',
        )
        .value,
    dependencies: [ReplicationAutoCustomerManagedEncryption.$schema],
  );
}

base class ReplicationUserManagedReplicasCustomerManagedEncryption {
  /// Creates a [ReplicationUserManagedReplicasCustomerManagedEncryption] from a JSON map.
  factory ReplicationUserManagedReplicasCustomerManagedEncryption.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ReplicationUserManagedReplicasCustomerManagedEncryption._(this._json);

  ReplicationUserManagedReplicasCustomerManagedEncryption({
    required String kmsKeyName,
  }) {
    _json = {'kms_key_name': kmsKeyName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ReplicationUserManagedReplicasCustomerManagedEncryption].
  static const SchemanticType<
    ReplicationUserManagedReplicasCustomerManagedEncryption
  >
  $schema =
      _ReplicationUserManagedReplicasCustomerManagedEncryptionTypeFactory();

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

  /// Serializes this [ReplicationUserManagedReplicasCustomerManagedEncryption] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReplicationUserManagedReplicasCustomerManagedEncryptionTypeFactory
    extends
        SchemanticType<
          ReplicationUserManagedReplicasCustomerManagedEncryption
        > {
  const _ReplicationUserManagedReplicasCustomerManagedEncryptionTypeFactory();

  @override
  ReplicationUserManagedReplicasCustomerManagedEncryption parse(Object? json) {
    return ReplicationUserManagedReplicasCustomerManagedEncryption._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ReplicationUserManagedReplicasCustomerManagedEncryption',
    definition: $Schema
        .object(
          properties: {
            'kms_key_name': $Schema.string(
              description:
                  'Describes the Cloud KMS encryption key that will be used to protect destination secret.',
            ),
          },
          required: ['kms_key_name'],
          description: 'Customer Managed Encryption for the secret.',
        )
        .value,
    dependencies: [],
  );
}

base class Replicas {
  /// Creates a [Replicas] from a JSON map.
  factory Replicas.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Replicas._(this._json);

  Replicas({
    required String location,
    ReplicationUserManagedReplicasCustomerManagedEncryption?
    customerManagedEncryption,
  }) {
    _json = {
      'location': location,
      'customer_managed_encryption': ?customerManagedEncryption?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Replicas].
  static const SchemanticType<Replicas> $schema = _ReplicasTypeFactory();

  String get location {
    return _json['location'] as String;
  }

  set location(String value) {
    _json['location'] = value;
  }

  ReplicationUserManagedReplicasCustomerManagedEncryption?
  get customerManagedEncryption {
    return _json['customer_managed_encryption'] == null
        ? null
        : ReplicationUserManagedReplicasCustomerManagedEncryption.fromJson(
            _json['customer_managed_encryption'] as Map<String, dynamic>,
          );
  }

  set customerManagedEncryption(
    ReplicationUserManagedReplicasCustomerManagedEncryption? value,
  ) {
    if (value == null) {
      _json.remove('customer_managed_encryption');
    } else {
      _json['customer_managed_encryption'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Replicas] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReplicasTypeFactory extends SchemanticType<Replicas> {
  const _ReplicasTypeFactory();

  @override
  Replicas parse(Object? json) {
    return Replicas._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Replicas',
    definition: $Schema
        .object(
          properties: {
            'location': $Schema.string(
              description:
                  'The canonical IDs of the location to replicate data. For example: "us-east1".',
            ),
            'customer_managed_encryption': $Schema.fromMap({
              '\$ref':
                  r'#/$defs/ReplicationUserManagedReplicasCustomerManagedEncryption',
            }),
          },
          required: ['location'],
          description: 'The list of Replicas for this Secret. Cannot be empty.',
        )
        .value,
    dependencies: [
      ReplicationUserManagedReplicasCustomerManagedEncryption.$schema,
    ],
  );
}

base class UserManaged {
  /// Creates a [UserManaged] from a JSON map.
  factory UserManaged.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  UserManaged._(this._json);

  UserManaged({required List<Replicas> replicas}) {
    _json = {'replicas': replicas.map((e) => e.toJson()).toList()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [UserManaged].
  static const SchemanticType<UserManaged> $schema = _UserManagedTypeFactory();

  List<Replicas> get replicas {
    return (_json['replicas'] as List)
        .map((e) => Replicas.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set replicas(List<Replicas> value) {
    _json['replicas'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [UserManaged] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _UserManagedTypeFactory extends SchemanticType<UserManaged> {
  const _UserManagedTypeFactory();

  @override
  UserManaged parse(Object? json) {
    return UserManaged._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'UserManaged',
    definition: $Schema
        .object(
          properties: {
            'replicas': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Replicas'}),
            ),
          },
          required: ['replicas'],
          description:
              'The Secret will be replicated to the regions specified by the user.',
        )
        .value,
    dependencies: [Replicas.$schema],
  );
}

base class Replication {
  /// Creates a [Replication] from a JSON map.
  factory Replication.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  Replication._(this._json);

  Replication({Auto? auto, UserManaged? userManaged}) {
    _json = {'auto': ?auto?.toJson(), 'user_managed': ?userManaged?.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Replication].
  static const SchemanticType<Replication> $schema = _ReplicationTypeFactory();

  Auto? get auto {
    return _json['auto'] == null
        ? null
        : Auto.fromJson(_json['auto'] as Map<String, dynamic>);
  }

  set auto(Auto? value) {
    if (value == null) {
      _json.remove('auto');
    } else {
      _json['auto'] = value;
    }
  }

  UserManaged? get userManaged {
    return _json['user_managed'] == null
        ? null
        : UserManaged.fromJson(_json['user_managed'] as Map<String, dynamic>);
  }

  set userManaged(UserManaged? value) {
    if (value == null) {
      _json.remove('user_managed');
    } else {
      _json['user_managed'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Replication] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReplicationTypeFactory extends SchemanticType<Replication> {
  const _ReplicationTypeFactory();

  @override
  Replication parse(Object? json) {
    return Replication._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Replication',
    definition: $Schema
        .object(
          properties: {
            'auto': $Schema.fromMap({'\$ref': r'#/$defs/Auto'}),
            'user_managed': $Schema.fromMap({'\$ref': r'#/$defs/UserManaged'}),
          },
          description:
              'The replication policy of the secret data attached to the Secret. It cannot be changed\nafter the Secret has been created.',
        )
        .value,
    dependencies: [Auto.$schema, UserManaged.$schema],
  );
}

base class Rotation {
  /// Creates a [Rotation] from a JSON map.
  factory Rotation.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Rotation._(this._json);

  Rotation({String? nextRotationTime, String? rotationPeriod}) {
    _json = {
      'next_rotation_time': ?nextRotationTime,
      'rotation_period': ?rotationPeriod,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Rotation].
  static const SchemanticType<Rotation> $schema = _RotationTypeFactory();

  String? get nextRotationTime {
    return _json['next_rotation_time'] as String?;
  }

  set nextRotationTime(String? value) {
    if (value == null) {
      _json.remove('next_rotation_time');
    } else {
      _json['next_rotation_time'] = value;
    }
  }

  String? get rotationPeriod {
    return _json['rotation_period'] as String?;
  }

  set rotationPeriod(String? value) {
    if (value == null) {
      _json.remove('rotation_period');
    } else {
      _json['rotation_period'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Rotation] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RotationTypeFactory extends SchemanticType<Rotation> {
  const _RotationTypeFactory();

  @override
  Rotation parse(Object? json) {
    return Rotation._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Rotation',
    definition: $Schema
        .object(
          properties: {
            'next_rotation_time': $Schema.string(
              description:
                  'Timestamp in UTC at which the Secret is scheduled to rotate.\nA timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".',
            ),
            'rotation_period': $Schema.string(
              description:
                  'The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years).\nIf rotationPeriod is set, \'next_rotation_time\' must be set. \'next_rotation_time\' will be advanced by this period when the service automatically sends rotation notifications.',
            ),
          },
          description:
              'The rotation time and period for a Secret. At \'next_rotation_time\', Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. \'topics\' must be set to configure rotation.',
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

base class Topics {
  /// Creates a [Topics] from a JSON map.
  factory Topics.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Topics._(this._json);

  Topics({required String name}) {
    _json = {'name': name};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Topics].
  static const SchemanticType<Topics> $schema = _TopicsTypeFactory();

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

  /// Serializes this [Topics] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TopicsTypeFactory extends SchemanticType<Topics> {
  const _TopicsTypeFactory();

  @override
  Topics parse(Object? json) {
    return Topics._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Topics',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(
              description:
                  'The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.\nFor publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic.',
            ),
          },
          required: ['name'],
          description:
              'A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleSecretManagerSecret {
  /// Creates a [GoogleSecretManagerSecret] from a JSON map.
  factory GoogleSecretManagerSecret.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleSecretManagerSecret._(this._json);

  GoogleSecretManagerSecret({
    Map<String, String>? annotations,
    bool? deletionProtection,
    String? expireTime,
    String? id,
    Map<String, String>? labels,
    String? project,
    required String secretId,
    Map<String, String>? tags,
    String? ttl,
    Map<String, String>? versionAliases,
    String? versionDestroyTtl,
    required Replication replication,
    Rotation? rotation,
    Timeouts? timeouts,
    List<Topics>? topics,
  }) {
    _json = {
      'annotations': ?annotations,
      'deletion_protection': ?deletionProtection,
      'expire_time': ?expireTime,
      'id': ?id,
      'labels': ?labels,
      'project': ?project,
      'secret_id': secretId,
      'tags': ?tags,
      'ttl': ?ttl,
      'version_aliases': ?versionAliases,
      'version_destroy_ttl': ?versionDestroyTtl,
      'replication': replication.toJson(),
      'rotation': ?rotation?.toJson(),
      'timeouts': ?timeouts?.toJson(),
      'topics': ?topics?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleSecretManagerSecret].
  static const SchemanticType<GoogleSecretManagerSecret> $schema =
      _GoogleSecretManagerSecretTypeFactory();

  Map<String, String>? get annotations {
    return (_json['annotations'] as Map?)?.cast<String, String>();
  }

  set annotations(Map<String, String>? value) {
    if (value == null) {
      _json.remove('annotations');
    } else {
      _json['annotations'] = value;
    }
  }

  bool? get deletionProtection {
    return _json['deletion_protection'] as bool?;
  }

  set deletionProtection(bool? value) {
    if (value == null) {
      _json.remove('deletion_protection');
    } else {
      _json['deletion_protection'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get expireTime {
    return _json['expire_time'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set expireTime(String? value) {
    if (value == null) {
      _json.remove('expire_time');
    } else {
      _json['expire_time'] = value;
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

  String get secretId {
    return _json['secret_id'] as String;
  }

  set secretId(String value) {
    _json['secret_id'] = value;
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

  String? get ttl {
    return _json['ttl'] as String?;
  }

  set ttl(String? value) {
    if (value == null) {
      _json.remove('ttl');
    } else {
      _json['ttl'] = value;
    }
  }

  Map<String, String>? get versionAliases {
    return (_json['version_aliases'] as Map?)?.cast<String, String>();
  }

  set versionAliases(Map<String, String>? value) {
    if (value == null) {
      _json.remove('version_aliases');
    } else {
      _json['version_aliases'] = value;
    }
  }

  String? get versionDestroyTtl {
    return _json['version_destroy_ttl'] as String?;
  }

  set versionDestroyTtl(String? value) {
    if (value == null) {
      _json.remove('version_destroy_ttl');
    } else {
      _json['version_destroy_ttl'] = value;
    }
  }

  Replication get replication {
    return Replication.fromJson(_json['replication'] as Map<String, dynamic>);
  }

  set replication(Replication value) {
    _json['replication'] = value;
  }

  Rotation? get rotation {
    return _json['rotation'] == null
        ? null
        : Rotation.fromJson(_json['rotation'] as Map<String, dynamic>);
  }

  set rotation(Rotation? value) {
    if (value == null) {
      _json.remove('rotation');
    } else {
      _json['rotation'] = value;
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

  List<Topics>? get topics {
    return (_json['topics'] as List?)
        ?.map((e) => Topics.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set topics(List<Topics>? value) {
    if (value == null) {
      _json.remove('topics');
    } else {
      _json['topics'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleSecretManagerSecret] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleSecretManagerSecretTypeFactory
    extends SchemanticType<GoogleSecretManagerSecret> {
  const _GoogleSecretManagerSecretTypeFactory();

  @override
  GoogleSecretManagerSecret parse(Object? json) {
    return GoogleSecretManagerSecret._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleSecretManagerSecret',
    definition: $Schema
        .object(
          properties: {
            'annotations': $Schema.object(
              description:
                  'Custom metadata about the secret.\n\nAnnotations are distinct from various forms of labels. Annotations exist to allow\nclient tools to store their own state information without requiring a database.\n\nAnnotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of\nmaximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and\nmay have dashes (-), underscores (_), dots (.), and alphanumerics in between these\nsymbols.\n\nThe total size of annotation keys and values must be less than 16KiB.\n\nAn object containing a list of "key": value pairs. Example:\n{ "name": "wrench", "mass": "1.3kg", "count": "3" }.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \'effective_annotations\' for all of the annotations present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'deletion_protection': $Schema.boolean(
              description:
                  'Whether Terraform will be prevented from destroying the secret. Defaults to false.\nWhen the field is set to true in Terraform state, a \'terraform apply\'\nor \'terraform destroy\' that would delete the secret will fail.',
            ),
            'expire_time': $Schema.string(
              description:
                  'Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.\nA timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".\nOnly one of \'expire_time\' or \'ttl\' can be provided.',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'The labels assigned to this Secret.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}\n\nLabel values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}\n\nNo more than 64 labels can be assigned to a given resource.\n\nAn object containing a list of "key": value pairs. Example:\n{ "name": "wrench", "mass": "1.3kg", "count": "3" }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'project': $Schema.string(),
            'secret_id': $Schema.string(
              description: 'This must be unique within the project.',
            ),
            'tags': $Schema.object(
              description:
                  'A map of resource manager tags.\nResource manager tag keys and values have the same definition as resource manager tags.\nKeys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.',
              additionalProperties: $Schema.string(),
            ),
            'ttl': $Schema.string(
              description:
                  'The TTL for the Secret.\nA duration in seconds with up to nine fractional digits, terminated by \'s\'. Example: "3.5s".\nOnly one of \'ttl\' or \'expire_time\' can be provided.',
            ),
            'version_aliases': $Schema.object(
              description:
                  'Mapping from version alias to version name.\n\nA version alias is a string with a maximum length of 63 characters and can contain\nuppercase and lowercase letters, numerals, and the hyphen (-) and underscore (\'_\')\ncharacters. An alias string must start with a letter and cannot be the string\n\'latest\' or \'NEW\'. No more than 50 aliases can be assigned to a given secret.\n\nAn object containing a list of "key": value pairs. Example:\n{ "name": "wrench", "mass": "1.3kg", "count": "3" }.',
              additionalProperties: $Schema.string(),
            ),
            'version_destroy_ttl': $Schema.string(
              description:
                  'Secret Version TTL after destruction request.\nThis is a part of the delayed delete feature on Secret Version.\nFor secret with versionDestroyTtl>0, version destruction doesn\'t happen immediately\non calling destroy instead the version goes to a disabled state and\nthe actual destruction happens after this TTL expires.',
            ),
            'replication': $Schema.fromMap({'\$ref': r'#/$defs/Replication'}),
            'rotation': $Schema.fromMap({'\$ref': r'#/$defs/Rotation'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
            'topics': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Topics'}),
            ),
          },
          required: ['secret_id', 'replication'],
        )
        .value,
    dependencies: [
      Replication.$schema,
      Rotation.$schema,
      Timeouts.$schema,
      Topics.$schema,
    ],
  );
}
