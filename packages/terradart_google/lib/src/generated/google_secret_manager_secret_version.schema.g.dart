// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_secret_manager_secret_version.schema.dart';

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

base class GoogleSecretManagerSecretVersion {
  /// Creates a [GoogleSecretManagerSecretVersion] from a JSON map.
  factory GoogleSecretManagerSecretVersion.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleSecretManagerSecretVersion._(this._json);

  GoogleSecretManagerSecretVersion({
    String? deletionPolicy,
    bool? enabled,
    String? id,
    bool? isSecretDataBase64,
    String? project,
    required String secret,
    String? secretData,
    String? secretDataWo,
    num? secretDataWoVersion,
    Timeouts? timeouts,
  }) {
    _json = {
      'deletion_policy': ?deletionPolicy,
      'enabled': ?enabled,
      'id': ?id,
      'is_secret_data_base64': ?isSecretDataBase64,
      'project': ?project,
      'secret': secret,
      'secret_data': ?secretData,
      'secret_data_wo': ?secretDataWo,
      'secret_data_wo_version': ?secretDataWoVersion,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleSecretManagerSecretVersion].
  static const SchemanticType<GoogleSecretManagerSecretVersion> $schema =
      _GoogleSecretManagerSecretVersionTypeFactory();

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

  bool? get enabled {
    return _json['enabled'] as bool?;
  }

  set enabled(bool? value) {
    if (value == null) {
      _json.remove('enabled');
    } else {
      _json['enabled'] = value;
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

  bool? get isSecretDataBase64 {
    return _json['is_secret_data_base64'] as bool?;
  }

  set isSecretDataBase64(bool? value) {
    if (value == null) {
      _json.remove('is_secret_data_base64');
    } else {
      _json['is_secret_data_base64'] = value;
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

  String get secret {
    return _json['secret'] as String;
  }

  set secret(String value) {
    _json['secret'] = value;
  }

  String? get secretData {
    return _json['secret_data'] as String?;
  }

  set secretData(String? value) {
    if (value == null) {
      _json.remove('secret_data');
    } else {
      _json['secret_data'] = value;
    }
  }

  String? get secretDataWo {
    return _json['secret_data_wo'] as String?;
  }

  set secretDataWo(String? value) {
    if (value == null) {
      _json.remove('secret_data_wo');
    } else {
      _json['secret_data_wo'] = value;
    }
  }

  num? get secretDataWoVersion {
    return _json['secret_data_wo_version'] as num?;
  }

  set secretDataWoVersion(num? value) {
    if (value == null) {
      _json.remove('secret_data_wo_version');
    } else {
      _json['secret_data_wo_version'] = value;
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

  /// Serializes this [GoogleSecretManagerSecretVersion] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleSecretManagerSecretVersionTypeFactory
    extends SchemanticType<GoogleSecretManagerSecretVersion> {
  const _GoogleSecretManagerSecretVersionTypeFactory();

  @override
  GoogleSecretManagerSecretVersion parse(Object? json) {
    return GoogleSecretManagerSecretVersion._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleSecretManagerSecretVersion',
    definition: $Schema
        .object(
          properties: {
            'deletion_policy': $Schema.string(
              description:
                  'The deletion policy for the secret version. Setting \'ABANDON\' allows the resource\nto be abandoned rather than deleted. Setting \'DISABLE\' allows the resource to be\ndisabled rather than deleted. Default is \'DELETE\'. Possible values are:\n  * DELETE\n  * DISABLE\n  * ABANDON',
            ),
            'enabled': $Schema.boolean(
              description: 'The current state of the SecretVersion.',
            ),
            'id': $Schema.string(),
            'is_secret_data_base64': $Schema.boolean(
              description:
                  'If set to \'true\', the secret data is expected to be base64-encoded string and would be sent as is.',
            ),
            'project': $Schema.string(
              description:
                  'The ID of the project in which the resource belongs. If it is not provided,\nthe provider project is used',
            ),
            'secret': $Schema.string(
              description: 'Secret Manager secret resource',
            ),
            'secret_data': $Schema.string(
              description: 'The secret data. Must be no larger than 64KiB.',
            ),
            'secret_data_wo': $Schema.string(
              description:
                  'The secret data. Must be no larger than 64KiB. For more info see [updating write-only arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)',
            ),
            'secret_data_wo_version': $Schema.number(
              description:
                  'Triggers update of secret data write-only. For more info see [updating write-only arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['secret'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}
