// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_service_account.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create}) {
    _json = {'create': ?create};
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
        .object(properties: {'create': $Schema.string()}, description: '')
        .value,
    dependencies: [],
  );
}

base class GoogleServiceAccount {
  /// Creates a [GoogleServiceAccount] from a JSON map.
  factory GoogleServiceAccount.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleServiceAccount._(this._json);

  GoogleServiceAccount({
    required String accountId,
    bool? createIgnoreAlreadyExists,
    String? description,
    bool? disabled,
    String? displayName,
    String? id,
    String? project,
    Timeouts? timeouts,
  }) {
    _json = {
      'account_id': accountId,
      'create_ignore_already_exists': ?createIgnoreAlreadyExists,
      'description': ?description,
      'disabled': ?disabled,
      'display_name': ?displayName,
      'id': ?id,
      'project': ?project,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleServiceAccount].
  static const SchemanticType<GoogleServiceAccount> $schema =
      _GoogleServiceAccountTypeFactory();

  String get accountId {
    return _json['account_id'] as String;
  }

  set accountId(String value) {
    _json['account_id'] = value;
  }

  bool? get createIgnoreAlreadyExists {
    return _json['create_ignore_already_exists'] as bool?;
  }

  set createIgnoreAlreadyExists(bool? value) {
    if (value == null) {
      _json.remove('create_ignore_already_exists');
    } else {
      _json['create_ignore_already_exists'] = value;
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

  String? get displayName {
    return _json['display_name'] as String?;
  }

  set displayName(String? value) {
    if (value == null) {
      _json.remove('display_name');
    } else {
      _json['display_name'] = value;
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

  /// Serializes this [GoogleServiceAccount] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleServiceAccountTypeFactory
    extends SchemanticType<GoogleServiceAccount> {
  const _GoogleServiceAccountTypeFactory();

  @override
  GoogleServiceAccount parse(Object? json) {
    return GoogleServiceAccount._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleServiceAccount',
    definition: $Schema
        .object(
          properties: {
            'account_id': $Schema.string(
              description:
                  'The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created.',
            ),
            'create_ignore_already_exists': $Schema.boolean(
              description:
                  'If set to true, skip service account creation if a service account with the same email already exists.',
            ),
            'description': $Schema.string(
              description:
                  'A text description of the service account. Must be less than or equal to 256 UTF-8 bytes.',
            ),
            'disabled': $Schema.boolean(
              description:
                  'Whether the service account is disabled. Defaults to false',
            ),
            'display_name': $Schema.string(
              description:
                  'The display name for the service account. Can be updated without creating a new resource.',
            ),
            'id': $Schema.string(),
            'project': $Schema.string(
              description:
                  'The ID of the project that the service account will be created in. Defaults to the provider project configuration.',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['account_id'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}
