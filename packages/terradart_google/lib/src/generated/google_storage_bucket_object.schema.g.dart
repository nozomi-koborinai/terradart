// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_storage_bucket_object.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Custom {
  /// Creates a [Custom] from a JSON map.
  factory Custom.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Custom._(this._json);

  Custom({required String key, required String value}) {
    _json = {'key': key, 'value': value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Custom].
  static const SchemanticType<Custom> $schema = _CustomTypeFactory();

  String get key {
    return _json['key'] as String;
  }

  set key(String value) {
    _json['key'] = value;
  }

  String get value {
    return _json['value'] as String;
  }

  set value(String value) {
    _json['value'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Custom] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CustomTypeFactory extends SchemanticType<Custom> {
  const _CustomTypeFactory();

  @override
  Custom parse(Object? json) {
    return Custom._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Custom',
    definition: $Schema
        .object(
          properties: {
            'key': $Schema.string(
              description:
                  'An individual object context. Context keys and their corresponding values must start with an alphanumeric character.',
            ),
            'value': $Schema.string(
              description:
                  'The value associated with this context. This field holds the primary information for the given context key.',
            ),
          },
          required: ['key', 'value'],
          description: 'A list of custom context key-value pairs.',
        )
        .value,
    dependencies: [],
  );
}

base class Contexts {
  /// Creates a [Contexts] from a JSON map.
  factory Contexts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Contexts._(this._json);

  Contexts({required List<Custom> custom}) {
    _json = {'custom': custom.map((e) => e.toJson()).toList()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Contexts].
  static const SchemanticType<Contexts> $schema = _ContextsTypeFactory();

  List<Custom> get custom {
    return (_json['custom'] as List)
        .map((e) => Custom.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set custom(List<Custom> value) {
    _json['custom'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Contexts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ContextsTypeFactory extends SchemanticType<Contexts> {
  const _ContextsTypeFactory();

  @override
  Contexts parse(Object? json) {
    return Contexts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Contexts',
    definition: $Schema
        .object(
          properties: {
            'custom': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Custom'}),
            ),
          },
          required: ['custom'],
          description: 'Contexts attached to an object, in key-value pairs.',
        )
        .value,
    dependencies: [Custom.$schema],
  );
}

base class CustomerEncryption {
  /// Creates a [CustomerEncryption] from a JSON map.
  factory CustomerEncryption.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  CustomerEncryption._(this._json);

  CustomerEncryption({
    String? encryptionAlgorithm,
    required String encryptionKey,
  }) {
    _json = {
      'encryption_algorithm': ?encryptionAlgorithm,
      'encryption_key': encryptionKey,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CustomerEncryption].
  static const SchemanticType<CustomerEncryption> $schema =
      _CustomerEncryptionTypeFactory();

  String? get encryptionAlgorithm {
    return _json['encryption_algorithm'] as String?;
  }

  set encryptionAlgorithm(String? value) {
    if (value == null) {
      _json.remove('encryption_algorithm');
    } else {
      _json['encryption_algorithm'] = value;
    }
  }

  String get encryptionKey {
    return _json['encryption_key'] as String;
  }

  set encryptionKey(String value) {
    _json['encryption_key'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CustomerEncryption] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CustomerEncryptionTypeFactory
    extends SchemanticType<CustomerEncryption> {
  const _CustomerEncryptionTypeFactory();

  @override
  CustomerEncryption parse(Object? json) {
    return CustomerEncryption._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CustomerEncryption',
    definition: $Schema
        .object(
          properties: {
            'encryption_algorithm': $Schema.string(
              description: 'The encryption algorithm. Default: AES256',
            ),
            'encryption_key': $Schema.string(
              description: 'Base64 encoded customer supplied encryption key.',
            ),
          },
          required: ['encryption_key'],
          description: 'Encryption key; encoded using base64.',
        )
        .value,
    dependencies: [],
  );
}

base class Retention {
  /// Creates a [Retention] from a JSON map.
  factory Retention.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Retention._(this._json);

  Retention({required String mode, required String retainUntilTime}) {
    _json = {'mode': mode, 'retain_until_time': retainUntilTime};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Retention].
  static const SchemanticType<Retention> $schema = _RetentionTypeFactory();

  String get mode {
    return _json['mode'] as String;
  }

  set mode(String value) {
    _json['mode'] = value;
  }

  String get retainUntilTime {
    return _json['retain_until_time'] as String;
  }

  set retainUntilTime(String value) {
    _json['retain_until_time'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Retention] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RetentionTypeFactory extends SchemanticType<Retention> {
  const _RetentionTypeFactory();

  @override
  Retention parse(Object? json) {
    return Retention._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Retention',
    definition: $Schema
        .object(
          properties: {
            'mode': $Schema.string(
              description:
                  'The object retention mode. Supported values include: "Unlocked", "Locked".',
            ),
            'retain_until_time': $Schema.string(
              description:
                  'Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object.',
            ),
          },
          required: ['mode', 'retain_until_time'],
          description: 'Object level retention configuration.',
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

base class GoogleStorageBucketObject {
  /// Creates a [GoogleStorageBucketObject] from a JSON map.
  factory GoogleStorageBucketObject.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleStorageBucketObject._(this._json);

  GoogleStorageBucketObject({
    required String bucket,
    String? cacheControl,
    String? content,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentType,
    String? deletionPolicy,
    String? detectMd5hash,
    bool? eventBasedHold,
    bool? forceEmptyContentType,
    String? id,
    String? kmsKeyName,
    Map<String, String>? metadata,
    required String name,
    String? source,
    String? sourceMd5hash,
    String? storageClass,
    bool? temporaryHold,
    Contexts? contexts,
    CustomerEncryption? customerEncryption,
    Retention? retention,
    Timeouts? timeouts,
  }) {
    _json = {
      'bucket': bucket,
      'cache_control': ?cacheControl,
      'content': ?content,
      'content_disposition': ?contentDisposition,
      'content_encoding': ?contentEncoding,
      'content_language': ?contentLanguage,
      'content_type': ?contentType,
      'deletion_policy': ?deletionPolicy,
      'detect_md5hash': ?detectMd5hash,
      'event_based_hold': ?eventBasedHold,
      'force_empty_content_type': ?forceEmptyContentType,
      'id': ?id,
      'kms_key_name': ?kmsKeyName,
      'metadata': ?metadata,
      'name': name,
      'source': ?source,
      'source_md5hash': ?sourceMd5hash,
      'storage_class': ?storageClass,
      'temporary_hold': ?temporaryHold,
      'contexts': ?contexts?.toJson(),
      'customer_encryption': ?customerEncryption?.toJson(),
      'retention': ?retention?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleStorageBucketObject].
  static const SchemanticType<GoogleStorageBucketObject> $schema =
      _GoogleStorageBucketObjectTypeFactory();

  String get bucket {
    return _json['bucket'] as String;
  }

  set bucket(String value) {
    _json['bucket'] = value;
  }

  String? get cacheControl {
    return _json['cache_control'] as String?;
  }

  set cacheControl(String? value) {
    if (value == null) {
      _json.remove('cache_control');
    } else {
      _json['cache_control'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get content {
    return _json['content'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set content(String? value) {
    if (value == null) {
      _json.remove('content');
    } else {
      _json['content'] = value;
    }
  }

  String? get contentDisposition {
    return _json['content_disposition'] as String?;
  }

  set contentDisposition(String? value) {
    if (value == null) {
      _json.remove('content_disposition');
    } else {
      _json['content_disposition'] = value;
    }
  }

  String? get contentEncoding {
    return _json['content_encoding'] as String?;
  }

  set contentEncoding(String? value) {
    if (value == null) {
      _json.remove('content_encoding');
    } else {
      _json['content_encoding'] = value;
    }
  }

  String? get contentLanguage {
    return _json['content_language'] as String?;
  }

  set contentLanguage(String? value) {
    if (value == null) {
      _json.remove('content_language');
    } else {
      _json['content_language'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get contentType {
    return _json['content_type'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set contentType(String? value) {
    if (value == null) {
      _json.remove('content_type');
    } else {
      _json['content_type'] = value;
    }
  }

  String? get deletionPolicy {
    return _json['deletion_policy'] as String?;
  }

  set deletionPolicy(String? value) {
    if (value == null) {
      _json.remove('deletion_policy');
    } else {
      _json['deletion_policy'] = value;
    }
  }

  String? get detectMd5hash {
    return _json['detect_md5hash'] as String?;
  }

  set detectMd5hash(String? value) {
    if (value == null) {
      _json.remove('detect_md5hash');
    } else {
      _json['detect_md5hash'] = value;
    }
  }

  bool? get eventBasedHold {
    return _json['event_based_hold'] as bool?;
  }

  set eventBasedHold(bool? value) {
    if (value == null) {
      _json.remove('event_based_hold');
    } else {
      _json['event_based_hold'] = value;
    }
  }

  bool? get forceEmptyContentType {
    return _json['force_empty_content_type'] as bool?;
  }

  set forceEmptyContentType(bool? value) {
    if (value == null) {
      _json.remove('force_empty_content_type');
    } else {
      _json['force_empty_content_type'] = value;
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
  String? get kmsKeyName {
    return _json['kms_key_name'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set kmsKeyName(String? value) {
    if (value == null) {
      _json.remove('kms_key_name');
    } else {
      _json['kms_key_name'] = value;
    }
  }

  Map<String, String>? get metadata {
    return (_json['metadata'] as Map?)?.cast<String, String>();
  }

  set metadata(Map<String, String>? value) {
    if (value == null) {
      _json.remove('metadata');
    } else {
      _json['metadata'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get source {
    return _json['source'] as String?;
  }

  set source(String? value) {
    if (value == null) {
      _json.remove('source');
    } else {
      _json['source'] = value;
    }
  }

  String? get sourceMd5hash {
    return _json['source_md5hash'] as String?;
  }

  set sourceMd5hash(String? value) {
    if (value == null) {
      _json.remove('source_md5hash');
    } else {
      _json['source_md5hash'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get storageClass {
    return _json['storage_class'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set storageClass(String? value) {
    if (value == null) {
      _json.remove('storage_class');
    } else {
      _json['storage_class'] = value;
    }
  }

  bool? get temporaryHold {
    return _json['temporary_hold'] as bool?;
  }

  set temporaryHold(bool? value) {
    if (value == null) {
      _json.remove('temporary_hold');
    } else {
      _json['temporary_hold'] = value;
    }
  }

  Contexts? get contexts {
    return _json['contexts'] == null
        ? null
        : Contexts.fromJson(_json['contexts'] as Map<String, dynamic>);
  }

  set contexts(Contexts? value) {
    if (value == null) {
      _json.remove('contexts');
    } else {
      _json['contexts'] = value;
    }
  }

  CustomerEncryption? get customerEncryption {
    return _json['customer_encryption'] == null
        ? null
        : CustomerEncryption.fromJson(
            _json['customer_encryption'] as Map<String, dynamic>,
          );
  }

  set customerEncryption(CustomerEncryption? value) {
    if (value == null) {
      _json.remove('customer_encryption');
    } else {
      _json['customer_encryption'] = value;
    }
  }

  Retention? get retention {
    return _json['retention'] == null
        ? null
        : Retention.fromJson(_json['retention'] as Map<String, dynamic>);
  }

  set retention(Retention? value) {
    if (value == null) {
      _json.remove('retention');
    } else {
      _json['retention'] = value;
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

  /// Serializes this [GoogleStorageBucketObject] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleStorageBucketObjectTypeFactory
    extends SchemanticType<GoogleStorageBucketObject> {
  const _GoogleStorageBucketObjectTypeFactory();

  @override
  GoogleStorageBucketObject parse(Object? json) {
    return GoogleStorageBucketObject._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleStorageBucketObject',
    definition: $Schema
        .object(
          properties: {
            'bucket': $Schema.string(
              description: 'The name of the containing bucket.',
            ),
            'cache_control': $Schema.string(
              description:
                  'Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600',
            ),
            'content': $Schema.string(
              description:
                  'Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output.',
            ),
            'content_disposition': $Schema.string(
              description: 'Content-Disposition of the object data.',
            ),
            'content_encoding': $Schema.string(
              description: 'Content-Encoding of the object data.',
            ),
            'content_language': $Schema.string(
              description: 'Content-Language of the object data.',
            ),
            'content_type': $Schema.string(
              description:
                  'Content-Type of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".',
            ),
            'deletion_policy': $Schema.string(
              description:
                  'The deletion policy for the object. Setting ABANDON allows the resource to be abandoned rather than deleted when removed from your Terraform configuration.',
            ),
            'detect_md5hash': $Schema.string(),
            'event_based_hold': $Schema.boolean(
              description:
                  'Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold\'s release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).',
            ),
            'force_empty_content_type': $Schema.boolean(
              description: 'Flag to set empty Content-Type.',
            ),
            'id': $Schema.string(),
            'kms_key_name': $Schema.string(
              description:
                  'Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata\'s kmsKeyName value, if any.',
            ),
            'metadata': $Schema.object(
              description: 'User-provided metadata, in key/value pairs.',
              additionalProperties: $Schema.string(),
            ),
            'name': $Schema.string(
              description:
                  'The name of the object. If you\'re interpolating the name of this object, see output_name instead.',
            ),
            'source': $Schema.string(
              description:
                  'A path to the data you want to upload. Must be defined if content is not.',
            ),
            'source_md5hash': $Schema.string(
              description:
                  'User-provided md5hash, Base 64 MD5 hash of the object data.',
            ),
            'storage_class': $Schema.string(
              description:
                  'The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket\'s default storage class or to a standard class.',
            ),
            'temporary_hold': $Schema.boolean(
              description:
                  'Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites.',
            ),
            'contexts': $Schema.fromMap({'\$ref': r'#/$defs/Contexts'}),
            'customer_encryption': $Schema.fromMap({
              '\$ref': r'#/$defs/CustomerEncryption',
            }),
            'retention': $Schema.fromMap({'\$ref': r'#/$defs/Retention'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['bucket', 'name'],
        )
        .value,
    dependencies: [
      Contexts.$schema,
      CustomerEncryption.$schema,
      Retention.$schema,
      Timeouts.$schema,
    ],
  );
}
