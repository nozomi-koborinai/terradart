// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_remote_config_remote_config.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Conditions {
  /// Creates a [Conditions] from a JSON map.
  factory Conditions.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Conditions._(this._json);

  Conditions({
    required String expression,
    required String name,
    String? tagColor,
  }) {
    _json = {'expression': expression, 'name': name, 'tag_color': ?tagColor};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Conditions].
  static const SchemanticType<Conditions> $schema = _ConditionsTypeFactory();

  String get expression {
    return _json['expression'] as String;
  }

  set expression(String value) {
    _json['expression'] = value;
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get tagColor {
    return _json['tag_color'] as String?;
  }

  set tagColor(String? value) {
    if (value == null) {
      _json.remove('tag_color');
    } else {
      _json['tag_color'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Conditions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionsTypeFactory extends SchemanticType<Conditions> {
  const _ConditionsTypeFactory();

  @override
  Conditions parse(Object? json) {
    return Conditions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Conditions',
    definition: $Schema
        .object(
          properties: {
            'expression': $Schema.string(
              description:
                  'The logic of this condition.\n\nSee the documentation regarding\n[Condition\nExpressions](https://firebase.google.com/docs/remote-config/condition-reference)\nfor the expected syntax of this field.',
            ),
            'name': $Schema.string(
              description: 'A non-empty and unique name of this condition.',
            ),
            'tag_color': $Schema.string(
              description:
                  'The color associated with this condition for display purposes in the Firebase Console.\nNot specifying this value results in the Console picking an arbitrary color to associate with the condition. Possible values: ["BLUE", "BROWN", "CYAN", "DEEP_ORANGE", "GREEN", "INDIGO", "LIME", "ORANGE", "PINK", "PURPLE", "TEAL"]',
            ),
          },
          required: ['expression', 'name'],
          description:
              'A list of conditions in descending order by priority.\n\nThe values of the condition names must be unique.',
        )
        .value,
    dependencies: [],
  );
}

base class ParameterGroupsParametersConditionalValues {
  /// Creates a [ParameterGroupsParametersConditionalValues] from a JSON map.
  factory ParameterGroupsParametersConditionalValues.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ParameterGroupsParametersConditionalValues._(this._json);

  ParameterGroupsParametersConditionalValues({
    required String conditionName,
    bool? useInAppDefault,
    String? value,
  }) {
    _json = {
      'condition_name': conditionName,
      'use_in_app_default': ?useInAppDefault,
      'value': ?value,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParameterGroupsParametersConditionalValues].
  static const SchemanticType<ParameterGroupsParametersConditionalValues>
  $schema = _ParameterGroupsParametersConditionalValuesTypeFactory();

  String get conditionName {
    return _json['condition_name'] as String;
  }

  set conditionName(String value) {
    _json['condition_name'] = value;
  }

  bool? get useInAppDefault {
    return _json['use_in_app_default'] as bool?;
  }

  set useInAppDefault(bool? value) {
    if (value == null) {
      _json.remove('use_in_app_default');
    } else {
      _json['use_in_app_default'] = value;
    }
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParameterGroupsParametersConditionalValues] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParameterGroupsParametersConditionalValuesTypeFactory
    extends SchemanticType<ParameterGroupsParametersConditionalValues> {
  const _ParameterGroupsParametersConditionalValuesTypeFactory();

  @override
  ParameterGroupsParametersConditionalValues parse(Object? json) {
    return ParameterGroupsParametersConditionalValues._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParameterGroupsParametersConditionalValues',
    definition: $Schema
        .object(
          properties: {
            'condition_name': $Schema.string(),
            'use_in_app_default': $Schema.boolean(
              description:
                  'If true, the parameter is omitted from the parameter values returned\nto a client.',
            ),
            'value': $Schema.string(
              description: 'The string value that the parameter is set to.',
            ),
          },
          required: ['condition_name'],
          description:
              'The condition_name of the highest priority\n(the one listed first in the RemoteConfig\'s conditions list) determines\nthe value of this parameter.\nOnly one of use_in_app_default or value may be specified.',
        )
        .value,
    dependencies: [],
  );
}

base class ParameterGroupsParametersDefaultValue {
  /// Creates a [ParameterGroupsParametersDefaultValue] from a JSON map.
  factory ParameterGroupsParametersDefaultValue.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  ParameterGroupsParametersDefaultValue._(this._json);

  ParameterGroupsParametersDefaultValue({
    bool? useInAppDefault,
    String? value,
  }) {
    _json = {'use_in_app_default': ?useInAppDefault, 'value': ?value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParameterGroupsParametersDefaultValue].
  static const SchemanticType<ParameterGroupsParametersDefaultValue> $schema =
      _ParameterGroupsParametersDefaultValueTypeFactory();

  bool? get useInAppDefault {
    return _json['use_in_app_default'] as bool?;
  }

  set useInAppDefault(bool? value) {
    if (value == null) {
      _json.remove('use_in_app_default');
    } else {
      _json['use_in_app_default'] = value;
    }
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParameterGroupsParametersDefaultValue] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParameterGroupsParametersDefaultValueTypeFactory
    extends SchemanticType<ParameterGroupsParametersDefaultValue> {
  const _ParameterGroupsParametersDefaultValueTypeFactory();

  @override
  ParameterGroupsParametersDefaultValue parse(Object? json) {
    return ParameterGroupsParametersDefaultValue._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParameterGroupsParametersDefaultValue',
    definition: $Schema
        .object(
          properties: {
            'use_in_app_default': $Schema.boolean(
              description:
                  'If true, the parameter is omitted from the parameter values returned\nto a client.',
            ),
            'value': $Schema.string(
              description: 'The string value that the parameter is set to.',
            ),
          },
          description:
              'Value to set the parameter to, when none of the named conditions evaluate to true.\nOnly one of use_in_app_default or value may be specified.',
        )
        .value,
    dependencies: [],
  );
}

base class ParameterGroupsParameters {
  /// Creates a [ParameterGroupsParameters] from a JSON map.
  factory ParameterGroupsParameters.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ParameterGroupsParameters._(this._json);

  ParameterGroupsParameters({
    String? description,
    required String parameterName,
    String? valueType,
    List<ParameterGroupsParametersConditionalValues>? conditionalValues,
    ParameterGroupsParametersDefaultValue? defaultValue,
  }) {
    _json = {
      'description': ?description,
      'parameter_name': parameterName,
      'value_type': ?valueType,
      'conditional_values': ?conditionalValues?.map((e) => e.toJson()).toList(),
      'default_value': ?defaultValue?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParameterGroupsParameters].
  static const SchemanticType<ParameterGroupsParameters> $schema =
      _ParameterGroupsParametersTypeFactory();

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

  String get parameterName {
    return _json['parameter_name'] as String;
  }

  set parameterName(String value) {
    _json['parameter_name'] = value;
  }

  String? get valueType {
    return _json['value_type'] as String?;
  }

  set valueType(String? value) {
    if (value == null) {
      _json.remove('value_type');
    } else {
      _json['value_type'] = value;
    }
  }

  List<ParameterGroupsParametersConditionalValues>? get conditionalValues {
    return (_json['conditional_values'] as List?)
        ?.map(
          (e) => ParameterGroupsParametersConditionalValues.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  set conditionalValues(
    List<ParameterGroupsParametersConditionalValues>? value,
  ) {
    if (value == null) {
      _json.remove('conditional_values');
    } else {
      _json['conditional_values'] = value.toList();
    }
  }

  ParameterGroupsParametersDefaultValue? get defaultValue {
    return _json['default_value'] == null
        ? null
        : ParameterGroupsParametersDefaultValue.fromJson(
            _json['default_value'] as Map<String, dynamic>,
          );
  }

  set defaultValue(ParameterGroupsParametersDefaultValue? value) {
    if (value == null) {
      _json.remove('default_value');
    } else {
      _json['default_value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParameterGroupsParameters] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParameterGroupsParametersTypeFactory
    extends SchemanticType<ParameterGroupsParameters> {
  const _ParameterGroupsParametersTypeFactory();

  @override
  ParameterGroupsParameters parse(Object? json) {
    return ParameterGroupsParameters._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParameterGroupsParameters',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description:
                  'A description for this Parameter. Its length must be less than or equal to\n256 characters . A description may contain any Unicode characters.',
            ),
            'parameter_name': $Schema.string(),
            'value_type': $Schema.string(
              description:
                  'The data type for all values of this parameter in the current version of\nthe template. Default value: "STRING" Possible values: ["STRING", "BOOLEAN", "NUMBER", "JSON"]',
            ),
            'conditional_values': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/ParameterGroupsParametersConditionalValues',
              }),
            ),
            'default_value': $Schema.fromMap({
              '\$ref': r'#/$defs/ParameterGroupsParametersDefaultValue',
            }),
          },
          required: ['parameter_name'],
          description:
              'Map of parameter keys to their optional default values and optional\nconditional values for parameters that belong to this group.\nA parameter only appears once per RemoteConfig: an ungrouped parameter\nappears at the top level; a parameter organized within a group appears\nwithin its group\'s map of parameters.',
        )
        .value,
    dependencies: [
      ParameterGroupsParametersConditionalValues.$schema,
      ParameterGroupsParametersDefaultValue.$schema,
    ],
  );
}

base class ParameterGroups {
  /// Creates a [ParameterGroups] from a JSON map.
  factory ParameterGroups.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ParameterGroups._(this._json);

  ParameterGroups({
    String? description,
    required String parameterGroupName,
    List<ParameterGroupsParameters>? parameters,
  }) {
    _json = {
      'description': ?description,
      'parameter_group_name': parameterGroupName,
      'parameters': ?parameters?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParameterGroups].
  static const SchemanticType<ParameterGroups> $schema =
      _ParameterGroupsTypeFactory();

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

  String get parameterGroupName {
    return _json['parameter_group_name'] as String;
  }

  set parameterGroupName(String value) {
    _json['parameter_group_name'] = value;
  }

  List<ParameterGroupsParameters>? get parameters {
    return (_json['parameters'] as List?)
        ?.map(
          (e) => ParameterGroupsParameters.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  set parameters(List<ParameterGroupsParameters>? value) {
    if (value == null) {
      _json.remove('parameters');
    } else {
      _json['parameters'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParameterGroups] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParameterGroupsTypeFactory extends SchemanticType<ParameterGroups> {
  const _ParameterGroupsTypeFactory();

  @override
  ParameterGroups parse(Object? json) {
    return ParameterGroups._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParameterGroups',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description:
                  'A description for the group. Its length must be less than or equal to 256\ncharacters. A description may contain any Unicode characters.',
            ),
            'parameter_group_name': $Schema.string(),
            'parameters': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/ParameterGroupsParameters',
              }),
            ),
          },
          required: ['parameter_group_name'],
          description:
              'Map of parameter group names to their descriptions and grouped parameters.\nA group\'s name is mutable but must be unique among groups in the config.\nThe name is limited to 256 characters and intended to be human-readable.\nAny Unicode characters are allowed.\n\nGroups have a list of parameters which allows users of the API to group\nparameters that are associated with the same feature or theme together for\neasy organizational access.\n\nFor example, a parameter group with the name "Search V2" may have the\n\'description\' "New mobile search view" and contain parameters for the new\nsearch\'s layout and font.',
        )
        .value,
    dependencies: [ParameterGroupsParameters.$schema],
  );
}

base class ParametersConditionalValues {
  /// Creates a [ParametersConditionalValues] from a JSON map.
  factory ParametersConditionalValues.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ParametersConditionalValues._(this._json);

  ParametersConditionalValues({
    required String conditionName,
    bool? useInAppDefault,
    String? value,
  }) {
    _json = {
      'condition_name': conditionName,
      'use_in_app_default': ?useInAppDefault,
      'value': ?value,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParametersConditionalValues].
  static const SchemanticType<ParametersConditionalValues> $schema =
      _ParametersConditionalValuesTypeFactory();

  String get conditionName {
    return _json['condition_name'] as String;
  }

  set conditionName(String value) {
    _json['condition_name'] = value;
  }

  bool? get useInAppDefault {
    return _json['use_in_app_default'] as bool?;
  }

  set useInAppDefault(bool? value) {
    if (value == null) {
      _json.remove('use_in_app_default');
    } else {
      _json['use_in_app_default'] = value;
    }
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParametersConditionalValues] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParametersConditionalValuesTypeFactory
    extends SchemanticType<ParametersConditionalValues> {
  const _ParametersConditionalValuesTypeFactory();

  @override
  ParametersConditionalValues parse(Object? json) {
    return ParametersConditionalValues._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParametersConditionalValues',
    definition: $Schema
        .object(
          properties: {
            'condition_name': $Schema.string(),
            'use_in_app_default': $Schema.boolean(
              description:
                  'If true, the parameter is omitted from the parameter values returned\nto a client.',
            ),
            'value': $Schema.string(
              description: 'The string value that the parameter is set to.',
            ),
          },
          required: ['condition_name'],
          description:
              'The condition_name of the highest priority\n(the one listed first in the RemoteConfig\'s conditions list) determines\nthe value of this parameter.\nOnly one of use_in_app_default or value may be specified.',
        )
        .value,
    dependencies: [],
  );
}

base class ParametersDefaultValue {
  /// Creates a [ParametersDefaultValue] from a JSON map.
  factory ParametersDefaultValue.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ParametersDefaultValue._(this._json);

  ParametersDefaultValue({bool? useInAppDefault, String? value}) {
    _json = {'use_in_app_default': ?useInAppDefault, 'value': ?value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ParametersDefaultValue].
  static const SchemanticType<ParametersDefaultValue> $schema =
      _ParametersDefaultValueTypeFactory();

  bool? get useInAppDefault {
    return _json['use_in_app_default'] as bool?;
  }

  set useInAppDefault(bool? value) {
    if (value == null) {
      _json.remove('use_in_app_default');
    } else {
      _json['use_in_app_default'] = value;
    }
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ParametersDefaultValue] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParametersDefaultValueTypeFactory
    extends SchemanticType<ParametersDefaultValue> {
  const _ParametersDefaultValueTypeFactory();

  @override
  ParametersDefaultValue parse(Object? json) {
    return ParametersDefaultValue._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParametersDefaultValue',
    definition: $Schema
        .object(
          properties: {
            'use_in_app_default': $Schema.boolean(
              description:
                  'If true, the parameter is omitted from the parameter values returned\nto a client.',
            ),
            'value': $Schema.string(
              description: 'The string value that the parameter is set to.',
            ),
          },
          description:
              'Value to set the parameter to, when none of the named conditions evaluate to true.\nOnly one of use_in_app_default or value may be specified.',
        )
        .value,
    dependencies: [],
  );
}

base class Parameters {
  /// Creates a [Parameters] from a JSON map.
  factory Parameters.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Parameters._(this._json);

  Parameters({
    String? description,
    required String parameterName,
    String? valueType,
    List<ParametersConditionalValues>? conditionalValues,
    ParametersDefaultValue? defaultValue,
  }) {
    _json = {
      'description': ?description,
      'parameter_name': parameterName,
      'value_type': ?valueType,
      'conditional_values': ?conditionalValues?.map((e) => e.toJson()).toList(),
      'default_value': ?defaultValue?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Parameters].
  static const SchemanticType<Parameters> $schema = _ParametersTypeFactory();

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

  String get parameterName {
    return _json['parameter_name'] as String;
  }

  set parameterName(String value) {
    _json['parameter_name'] = value;
  }

  String? get valueType {
    return _json['value_type'] as String?;
  }

  set valueType(String? value) {
    if (value == null) {
      _json.remove('value_type');
    } else {
      _json['value_type'] = value;
    }
  }

  List<ParametersConditionalValues>? get conditionalValues {
    return (_json['conditional_values'] as List?)
        ?.map(
          (e) =>
              ParametersConditionalValues.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  set conditionalValues(List<ParametersConditionalValues>? value) {
    if (value == null) {
      _json.remove('conditional_values');
    } else {
      _json['conditional_values'] = value.toList();
    }
  }

  ParametersDefaultValue? get defaultValue {
    return _json['default_value'] == null
        ? null
        : ParametersDefaultValue.fromJson(
            _json['default_value'] as Map<String, dynamic>,
          );
  }

  set defaultValue(ParametersDefaultValue? value) {
    if (value == null) {
      _json.remove('default_value');
    } else {
      _json['default_value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Parameters] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParametersTypeFactory extends SchemanticType<Parameters> {
  const _ParametersTypeFactory();

  @override
  Parameters parse(Object? json) {
    return Parameters._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Parameters',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description:
                  'A description for this Parameter. Its length must be less than or equal to\n256 characters . A description may contain any Unicode characters.',
            ),
            'parameter_name': $Schema.string(),
            'value_type': $Schema.string(
              description:
                  'The data type for all values of this parameter in the current version of\nthe template. Default value: "STRING" Possible values: ["STRING", "BOOLEAN", "NUMBER", "JSON"]',
            ),
            'conditional_values': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/ParametersConditionalValues',
              }),
            ),
            'default_value': $Schema.fromMap({
              '\$ref': r'#/$defs/ParametersDefaultValue',
            }),
          },
          required: ['parameter_name'],
          description:
              'Map of parameter keys to their optional default values and optional\nconditional values.',
        )
        .value,
    dependencies: [
      ParametersConditionalValues.$schema,
      ParametersDefaultValue.$schema,
    ],
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

base class GoogleFirebaseRemoteConfigRemoteConfig {
  /// Creates a [GoogleFirebaseRemoteConfigRemoteConfig] from a JSON map.
  factory GoogleFirebaseRemoteConfigRemoteConfig.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleFirebaseRemoteConfigRemoteConfig._(this._json);

  GoogleFirebaseRemoteConfigRemoteConfig({
    String? id,
    String? project,
    List<Conditions>? conditions,
    List<ParameterGroups>? parameterGroups,
    List<Parameters>? parameters,
    Timeouts? timeouts,
  }) {
    _json = {
      'id': ?id,
      'project': ?project,
      'conditions': ?conditions?.map((e) => e.toJson()).toList(),
      'parameter_groups': ?parameterGroups?.map((e) => e.toJson()).toList(),
      'parameters': ?parameters?.map((e) => e.toJson()).toList(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseRemoteConfigRemoteConfig].
  static const SchemanticType<GoogleFirebaseRemoteConfigRemoteConfig> $schema =
      _GoogleFirebaseRemoteConfigRemoteConfigTypeFactory();

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

  List<Conditions>? get conditions {
    return (_json['conditions'] as List?)
        ?.map((e) => Conditions.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set conditions(List<Conditions>? value) {
    if (value == null) {
      _json.remove('conditions');
    } else {
      _json['conditions'] = value.toList();
    }
  }

  List<ParameterGroups>? get parameterGroups {
    return (_json['parameter_groups'] as List?)
        ?.map((e) => ParameterGroups.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set parameterGroups(List<ParameterGroups>? value) {
    if (value == null) {
      _json.remove('parameter_groups');
    } else {
      _json['parameter_groups'] = value.toList();
    }
  }

  List<Parameters>? get parameters {
    return (_json['parameters'] as List?)
        ?.map((e) => Parameters.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set parameters(List<Parameters>? value) {
    if (value == null) {
      _json.remove('parameters');
    } else {
      _json['parameters'] = value.toList();
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

  /// Serializes this [GoogleFirebaseRemoteConfigRemoteConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseRemoteConfigRemoteConfigTypeFactory
    extends SchemanticType<GoogleFirebaseRemoteConfigRemoteConfig> {
  const _GoogleFirebaseRemoteConfigRemoteConfigTypeFactory();

  @override
  GoogleFirebaseRemoteConfigRemoteConfig parse(Object? json) {
    return GoogleFirebaseRemoteConfigRemoteConfig._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseRemoteConfigRemoteConfig',
    definition: $Schema
        .object(
          properties: {
            'id': $Schema.string(),
            'project': $Schema.string(),
            'conditions': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Conditions'}),
            ),
            'parameter_groups': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/ParameterGroups'}),
            ),
            'parameters': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Parameters'}),
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
        )
        .value,
    dependencies: [
      Conditions.$schema,
      ParameterGroups.$schema,
      Parameters.$schema,
      Timeouts.$schema,
    ],
  );
}
