// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_cloud_tasks_queue_iam_member.schema.dart';

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

base class GoogleCloudTasksQueueIamMember {
  /// Creates a [GoogleCloudTasksQueueIamMember] from a JSON map.
  factory GoogleCloudTasksQueueIamMember.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleCloudTasksQueueIamMember._(this._json);

  GoogleCloudTasksQueueIamMember({
    String? id,
    String? location,
    required String member,
    required String name,
    String? project,
    required String role,
    Condition? condition,
  }) {
    _json = {
      'id': ?id,
      'location': ?location,
      'member': member,
      'name': name,
      'project': ?project,
      'role': role,
      'condition': ?condition?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleCloudTasksQueueIamMember].
  static const SchemanticType<GoogleCloudTasksQueueIamMember> $schema =
      _GoogleCloudTasksQueueIamMemberTypeFactory();

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
  String? get location {
    return _json['location'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set location(String? value) {
    if (value == null) {
      _json.remove('location');
    } else {
      _json['location'] = value;
    }
  }

  String get member {
    return _json['member'] as String;
  }

  set member(String value) {
    _json['member'] = value;
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

  String get role {
    return _json['role'] as String;
  }

  set role(String value) {
    _json['role'] = value;
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

  /// Serializes this [GoogleCloudTasksQueueIamMember] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleCloudTasksQueueIamMemberTypeFactory
    extends SchemanticType<GoogleCloudTasksQueueIamMember> {
  const _GoogleCloudTasksQueueIamMemberTypeFactory();

  @override
  GoogleCloudTasksQueueIamMember parse(Object? json) {
    return GoogleCloudTasksQueueIamMember._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleCloudTasksQueueIamMember',
    definition: $Schema
        .object(
          properties: {
            'id': $Schema.string(),
            'location': $Schema.string(),
            'member': $Schema.string(),
            'name': $Schema.string(),
            'project': $Schema.string(),
            'role': $Schema.string(),
            'condition': $Schema.fromMap({'\$ref': r'#/$defs/Condition'}),
          },
          required: ['member', 'name', 'role'],
        )
        .value,
    dependencies: [Condition.$schema],
  );
}
