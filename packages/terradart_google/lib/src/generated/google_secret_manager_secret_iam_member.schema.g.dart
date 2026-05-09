// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_secret_manager_secret_iam_member.schema.dart';

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
    required String title,
  }) {
    _json = {
      'description': ?description,
      'expression': expression,
      'title': title,
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

  String get title {
    return _json['title'] as String;
  }

  set title(String value) {
    _json['title'] = value;
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
            'description': $Schema.string(),
            'expression': $Schema.string(),
            'title': $Schema.string(),
          },
          required: ['expression', 'title'],
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleSecretManagerSecretIamMember {
  /// Creates a [GoogleSecretManagerSecretIamMember] from a JSON map.
  factory GoogleSecretManagerSecretIamMember.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleSecretManagerSecretIamMember._(this._json);

  GoogleSecretManagerSecretIamMember({
    String? id,
    required String member,
    String? project,
    required String role,
    required String secretId,
    Condition? condition,
  }) {
    _json = {
      'id': ?id,
      'member': member,
      'project': ?project,
      'role': role,
      'secret_id': secretId,
      'condition': ?condition?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleSecretManagerSecretIamMember].
  static const SchemanticType<GoogleSecretManagerSecretIamMember> $schema =
      _GoogleSecretManagerSecretIamMemberTypeFactory();

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

  String get member {
    return _json['member'] as String;
  }

  set member(String value) {
    _json['member'] = value;
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

  String get role {
    return _json['role'] as String;
  }

  set role(String value) {
    _json['role'] = value;
  }

  String get secretId {
    return _json['secret_id'] as String;
  }

  set secretId(String value) {
    _json['secret_id'] = value;
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

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleSecretManagerSecretIamMember] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleSecretManagerSecretIamMemberTypeFactory
    extends SchemanticType<GoogleSecretManagerSecretIamMember> {
  const _GoogleSecretManagerSecretIamMemberTypeFactory();

  @override
  GoogleSecretManagerSecretIamMember parse(Object? json) {
    return GoogleSecretManagerSecretIamMember._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleSecretManagerSecretIamMember',
    definition: $Schema
        .object(
          properties: {
            'id': $Schema.string(),
            'member': $Schema.string(),
            'project': $Schema.string(),
            'role': $Schema.string(),
            'secret_id': $Schema.string(),
            'condition': $Schema.fromMap({'\$ref': r'#/$defs/Condition'}),
          },
          required: ['member', 'role', 'secret_id'],
        )
        .value,
    dependencies: [Condition.$schema],
  );
}
