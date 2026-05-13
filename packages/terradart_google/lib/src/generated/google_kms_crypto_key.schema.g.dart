// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_kms_crypto_key.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

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

base class VersionTemplate {
  /// Creates a [VersionTemplate] from a JSON map.
  factory VersionTemplate.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  VersionTemplate._(this._json);

  VersionTemplate({required String algorithm, String? protectionLevel}) {
    _json = {'algorithm': algorithm, 'protection_level': ?protectionLevel};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [VersionTemplate].
  static const SchemanticType<VersionTemplate> $schema =
      _VersionTemplateTypeFactory();

  String get algorithm {
    return _json['algorithm'] as String;
  }

  set algorithm(String value) {
    _json['algorithm'] = value;
  }

  String? get protectionLevel {
    return _json['protection_level'] as String?;
  }

  set protectionLevel(String? value) {
    if (value == null) {
      _json.remove('protection_level');
    } else {
      _json['protection_level'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [VersionTemplate] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VersionTemplateTypeFactory extends SchemanticType<VersionTemplate> {
  const _VersionTemplateTypeFactory();

  @override
  VersionTemplate parse(Object? json) {
    return VersionTemplate._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'VersionTemplate',
    definition: $Schema
        .object(
          properties: {
            'algorithm': $Schema.string(
              description:
                  'The algorithm to use when creating a version based on this template.\nSee the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.',
            ),
            'protection_level': $Schema.string(
              description:
                  'The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".',
            ),
          },
          required: ['algorithm'],
          description:
              'A template describing settings for new crypto key versions.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleKmsCryptoKey {
  /// Creates a [GoogleKmsCryptoKey] from a JSON map.
  factory GoogleKmsCryptoKey.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleKmsCryptoKey._(this._json);

  GoogleKmsCryptoKey({
    String? cryptoKeyBackend,
    String? destroyScheduledDuration,
    String? id,
    bool? importOnly,
    required String keyRing,
    Map<String, String>? labels,
    required String name,
    String? purpose,
    String? rotationPeriod,
    bool? skipInitialVersionCreation,
    Timeouts? timeouts,
    VersionTemplate? versionTemplate,
  }) {
    _json = {
      'crypto_key_backend': ?cryptoKeyBackend,
      'destroy_scheduled_duration': ?destroyScheduledDuration,
      'id': ?id,
      'import_only': ?importOnly,
      'key_ring': keyRing,
      'labels': ?labels,
      'name': name,
      'purpose': ?purpose,
      'rotation_period': ?rotationPeriod,
      'skip_initial_version_creation': ?skipInitialVersionCreation,
      'timeouts': ?timeouts?.toJson(),
      'version_template': ?versionTemplate?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleKmsCryptoKey].
  static const SchemanticType<GoogleKmsCryptoKey> $schema =
      _GoogleKmsCryptoKeyTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get cryptoKeyBackend {
    return _json['crypto_key_backend'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set cryptoKeyBackend(String? value) {
    if (value == null) {
      _json.remove('crypto_key_backend');
    } else {
      _json['crypto_key_backend'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get destroyScheduledDuration {
    return _json['destroy_scheduled_duration'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set destroyScheduledDuration(String? value) {
    if (value == null) {
      _json.remove('destroy_scheduled_duration');
    } else {
      _json['destroy_scheduled_duration'] = value;
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
  bool? get importOnly {
    return _json['import_only'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set importOnly(bool? value) {
    if (value == null) {
      _json.remove('import_only');
    } else {
      _json['import_only'] = value;
    }
  }

  String get keyRing {
    return _json['key_ring'] as String;
  }

  set keyRing(String value) {
    _json['key_ring'] = value;
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

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get purpose {
    return _json['purpose'] as String?;
  }

  set purpose(String? value) {
    if (value == null) {
      _json.remove('purpose');
    } else {
      _json['purpose'] = value;
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

  bool? get skipInitialVersionCreation {
    return _json['skip_initial_version_creation'] as bool?;
  }

  set skipInitialVersionCreation(bool? value) {
    if (value == null) {
      _json.remove('skip_initial_version_creation');
    } else {
      _json['skip_initial_version_creation'] = value;
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

  VersionTemplate? get versionTemplate {
    return _json['version_template'] == null
        ? null
        : VersionTemplate.fromJson(
            _json['version_template'] as Map<String, dynamic>,
          );
  }

  set versionTemplate(VersionTemplate? value) {
    if (value == null) {
      _json.remove('version_template');
    } else {
      _json['version_template'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleKmsCryptoKey] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleKmsCryptoKeyTypeFactory
    extends SchemanticType<GoogleKmsCryptoKey> {
  const _GoogleKmsCryptoKeyTypeFactory();

  @override
  GoogleKmsCryptoKey parse(Object? json) {
    return GoogleKmsCryptoKey._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleKmsCryptoKey',
    definition: $Schema
        .object(
          properties: {
            'crypto_key_backend': $Schema.string(
              description:
                  'The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.\nThe resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.',
            ),
            'destroy_scheduled_duration': $Schema.string(
              description:
                  'The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.\nIf not specified at creation time, the default duration is 30 days.',
            ),
            'id': $Schema.string(),
            'import_only': $Schema.boolean(
              description:
                  'Whether this key may contain imported versions only.',
            ),
            'key_ring': $Schema.string(
              description:
                  'The KeyRing that this key belongs to.\nFormat: \'\'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}\'\'.',
            ),
            'labels': $Schema.object(
              description:
                  'Labels with user-defined metadata to apply to this resource.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'name': $Schema.string(
              description: 'The resource name for the CryptoKey.',
            ),
            'purpose': $Schema.string(
              description:
                  'The immutable purpose of this CryptoKey. See the\n[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)\nfor possible inputs.\nDefault value is "ENCRYPT_DECRYPT".',
            ),
            'rotation_period': $Schema.string(
              description:
                  'Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.\nThe first rotation will take place after the specified period. The rotation period has\nthe format of a decimal number with up to 9 fractional digits, followed by the\nletter \'s\' (seconds). It must be greater than a day (ie, 86400).',
            ),
            'skip_initial_version_creation': $Schema.boolean(
              description:
                  'If set to true, the request will create a CryptoKey without any CryptoKeyVersions.\nYou must use the \'google_kms_crypto_key_version\' resource to create a new CryptoKeyVersion\nor \'google_kms_key_ring_import_job\' resource to import the CryptoKeyVersion.\nThis field is only applicable during initial CryptoKey creation.',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
            'version_template': $Schema.fromMap({
              '\$ref': r'#/$defs/VersionTemplate',
            }),
          },
          required: ['key_ring', 'name'],
        )
        .value,
    dependencies: [Timeouts.$schema, VersionTemplate.$schema],
  );
}
