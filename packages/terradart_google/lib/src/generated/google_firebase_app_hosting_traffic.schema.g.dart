// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_hosting_traffic.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class RolloutPolicy {
  /// Creates a [RolloutPolicy] from a JSON map.
  factory RolloutPolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RolloutPolicy._(this._json);

  RolloutPolicy({String? codebaseBranch, bool? disabled}) {
    _json = {'codebase_branch': ?codebaseBranch, 'disabled': ?disabled};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RolloutPolicy].
  static const SchemanticType<RolloutPolicy> $schema =
      _RolloutPolicyTypeFactory();

  String? get codebaseBranch {
    return _json['codebase_branch'] as String?;
  }

  set codebaseBranch(String? value) {
    if (value == null) {
      _json.remove('codebase_branch');
    } else {
      _json['codebase_branch'] = value;
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

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RolloutPolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RolloutPolicyTypeFactory extends SchemanticType<RolloutPolicy> {
  const _RolloutPolicyTypeFactory();

  @override
  RolloutPolicy parse(Object? json) {
    return RolloutPolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RolloutPolicy',
    definition: $Schema
        .object(
          properties: {
            'codebase_branch': $Schema.string(
              description:
                  'Specifies a branch that triggers a new build to be started with this\npolicy. If not set, no automatic rollouts will happen.',
            ),
            'disabled': $Schema.boolean(
              description:
                  'A flag that, if true, prevents rollouts from being created via this RolloutPolicy.',
            ),
          },
          description:
              'The policy for how builds and rollouts are triggered and rolled out.',
        )
        .value,
    dependencies: [],
  );
}

base class Splits {
  /// Creates a [Splits] from a JSON map.
  factory Splits.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Splits._(this._json);

  Splits({required String build, required num percent}) {
    _json = {'build': build, 'percent': percent};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Splits].
  static const SchemanticType<Splits> $schema = _SplitsTypeFactory();

  String get build {
    return _json['build'] as String;
  }

  set build(String value) {
    _json['build'] = value;
  }

  num get percent {
    return _json['percent'] as num;
  }

  set percent(num value) {
    _json['percent'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Splits] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SplitsTypeFactory extends SchemanticType<Splits> {
  const _SplitsTypeFactory();

  @override
  Splits parse(Object? json) {
    return Splits._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Splits',
    definition: $Schema
        .object(
          properties: {
            'build': $Schema.string(
              description: 'The build that traffic is being routed to.',
            ),
            'percent': $Schema.number(
              description:
                  'The percentage of traffic to send to the build. Currently must be 100 or 0.',
            ),
          },
          required: ['build', 'percent'],
          description:
              'A list of traffic splits that together represent where traffic is being routed.',
        )
        .value,
    dependencies: [],
  );
}

base class Target {
  /// Creates a [Target] from a JSON map.
  factory Target.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Target._(this._json);

  Target({required List<Splits> splits}) {
    _json = {'splits': splits.map((e) => e.toJson()).toList()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Target].
  static const SchemanticType<Target> $schema = _TargetTypeFactory();

  List<Splits> get splits {
    return (_json['splits'] as List)
        .map((e) => Splits.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set splits(List<Splits> value) {
    _json['splits'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Target] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TargetTypeFactory extends SchemanticType<Target> {
  const _TargetTypeFactory();

  @override
  Target parse(Object? json) {
    return Target._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Target',
    definition: $Schema
        .object(
          properties: {
            'splits': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Splits'}),
            ),
          },
          required: ['splits'],
          description:
              'Set to manually control the desired traffic for the backend. This will\ncause current to eventually match this value. The percentages must add\nup to 100.',
        )
        .value,
    dependencies: [Splits.$schema],
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

base class GoogleFirebaseAppHostingTraffic {
  /// Creates a [GoogleFirebaseAppHostingTraffic] from a JSON map.
  factory GoogleFirebaseAppHostingTraffic.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirebaseAppHostingTraffic._(this._json);

  GoogleFirebaseAppHostingTraffic({
    required String backend,
    String? id,
    required String location,
    String? project,
    RolloutPolicy? rolloutPolicy,
    Target? target,
    Timeouts? timeouts,
  }) {
    _json = {
      'backend': backend,
      'id': ?id,
      'location': location,
      'project': ?project,
      'rollout_policy': ?rolloutPolicy?.toJson(),
      'target': ?target?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppHostingTraffic].
  static const SchemanticType<GoogleFirebaseAppHostingTraffic> $schema =
      _GoogleFirebaseAppHostingTrafficTypeFactory();

  String get backend {
    return _json['backend'] as String;
  }

  set backend(String value) {
    _json['backend'] = value;
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

  String get location {
    return _json['location'] as String;
  }

  set location(String value) {
    _json['location'] = value;
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

  RolloutPolicy? get rolloutPolicy {
    return _json['rollout_policy'] == null
        ? null
        : RolloutPolicy.fromJson(
            _json['rollout_policy'] as Map<String, dynamic>,
          );
  }

  set rolloutPolicy(RolloutPolicy? value) {
    if (value == null) {
      _json.remove('rollout_policy');
    } else {
      _json['rollout_policy'] = value;
    }
  }

  Target? get target {
    return _json['target'] == null
        ? null
        : Target.fromJson(_json['target'] as Map<String, dynamic>);
  }

  set target(Target? value) {
    if (value == null) {
      _json.remove('target');
    } else {
      _json['target'] = value;
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

  /// Serializes this [GoogleFirebaseAppHostingTraffic] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppHostingTrafficTypeFactory
    extends SchemanticType<GoogleFirebaseAppHostingTraffic> {
  const _GoogleFirebaseAppHostingTrafficTypeFactory();

  @override
  GoogleFirebaseAppHostingTraffic parse(Object? json) {
    return GoogleFirebaseAppHostingTraffic._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppHostingTraffic',
    definition: $Schema
        .object(
          properties: {
            'backend': $Schema.string(
              description:
                  'Id of the backend that this Traffic config applies to',
            ),
            'id': $Schema.string(),
            'location': $Schema.string(
              description:
                  'The location the Backend that this Traffic config applies to',
            ),
            'project': $Schema.string(),
            'rollout_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/RolloutPolicy',
            }),
            'target': $Schema.fromMap({'\$ref': r'#/$defs/Target'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['backend', 'location'],
        )
        .value,
    dependencies: [RolloutPolicy.$schema, Target.$schema, Timeouts.$schema],
  );
}
