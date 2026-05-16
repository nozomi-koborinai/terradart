// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firestore_backup_schedule.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class DailyRecurrence {
  /// Creates a [DailyRecurrence] from a JSON map.
  factory DailyRecurrence.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DailyRecurrence._(this._json);

  DailyRecurrence() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DailyRecurrence].
  static const SchemanticType<DailyRecurrence> $schema =
      _DailyRecurrenceTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [DailyRecurrence] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DailyRecurrenceTypeFactory extends SchemanticType<DailyRecurrence> {
  const _DailyRecurrenceTypeFactory();

  @override
  DailyRecurrence parse(Object? json) {
    return DailyRecurrence._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DailyRecurrence',
    definition: $Schema
        .object(properties: {}, description: 'For a schedule that runs daily.')
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

base class WeeklyRecurrence {
  /// Creates a [WeeklyRecurrence] from a JSON map.
  factory WeeklyRecurrence.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  WeeklyRecurrence._(this._json);

  WeeklyRecurrence({String? day}) {
    _json = {'day': ?day};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [WeeklyRecurrence].
  static const SchemanticType<WeeklyRecurrence> $schema =
      _WeeklyRecurrenceTypeFactory();

  String? get day {
    return _json['day'] as String?;
  }

  set day(String? value) {
    if (value == null) {
      _json.remove('day');
    } else {
      _json['day'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [WeeklyRecurrence] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _WeeklyRecurrenceTypeFactory
    extends SchemanticType<WeeklyRecurrence> {
  const _WeeklyRecurrenceTypeFactory();

  @override
  WeeklyRecurrence parse(Object? json) {
    return WeeklyRecurrence._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'WeeklyRecurrence',
    definition: $Schema
        .object(
          properties: {
            'day': $Schema.string(
              description:
                  'The day of week to run. Possible values: ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]',
            ),
          },
          description: 'For a schedule that runs weekly on a specific day.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleFirestoreBackupSchedule {
  /// Creates a [GoogleFirestoreBackupSchedule] from a JSON map.
  factory GoogleFirestoreBackupSchedule.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleFirestoreBackupSchedule._(this._json);

  GoogleFirestoreBackupSchedule({
    String? database,
    String? id,
    String? project,
    required String retention,
    DailyRecurrence? dailyRecurrence,
    Timeouts? timeouts,
    WeeklyRecurrence? weeklyRecurrence,
  }) {
    _json = {
      'database': ?database,
      'id': ?id,
      'project': ?project,
      'retention': retention,
      'daily_recurrence': ?dailyRecurrence?.toJson(),
      'timeouts': ?timeouts?.toJson(),
      'weekly_recurrence': ?weeklyRecurrence?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirestoreBackupSchedule].
  static const SchemanticType<GoogleFirestoreBackupSchedule> $schema =
      _GoogleFirestoreBackupScheduleTypeFactory();

  String? get database {
    return _json['database'] as String?;
  }

  set database(String? value) {
    if (value == null) {
      _json.remove('database');
    } else {
      _json['database'] = value;
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

  String get retention {
    return _json['retention'] as String;
  }

  set retention(String value) {
    _json['retention'] = value;
  }

  DailyRecurrence? get dailyRecurrence {
    return _json['daily_recurrence'] == null
        ? null
        : DailyRecurrence.fromJson(
            _json['daily_recurrence'] as Map<String, dynamic>,
          );
  }

  set dailyRecurrence(DailyRecurrence? value) {
    if (value == null) {
      _json.remove('daily_recurrence');
    } else {
      _json['daily_recurrence'] = value;
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

  WeeklyRecurrence? get weeklyRecurrence {
    return _json['weekly_recurrence'] == null
        ? null
        : WeeklyRecurrence.fromJson(
            _json['weekly_recurrence'] as Map<String, dynamic>,
          );
  }

  set weeklyRecurrence(WeeklyRecurrence? value) {
    if (value == null) {
      _json.remove('weekly_recurrence');
    } else {
      _json['weekly_recurrence'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleFirestoreBackupSchedule] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirestoreBackupScheduleTypeFactory
    extends SchemanticType<GoogleFirestoreBackupSchedule> {
  const _GoogleFirestoreBackupScheduleTypeFactory();

  @override
  GoogleFirestoreBackupSchedule parse(Object? json) {
    return GoogleFirestoreBackupSchedule._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirestoreBackupSchedule',
    definition: $Schema
        .object(
          properties: {
            'database': $Schema.string(
              description:
                  'The Firestore database id. Defaults to \'"(default)"\'.',
            ),
            'id': $Schema.string(),
            'project': $Schema.string(),
            'retention': $Schema.string(
              description:
                  'At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.\nA duration in seconds with up to nine fractional digits, ending with \'s\'. Example: "3.5s".\n\nYou can set this to a value up to 14 weeks.',
            ),
            'daily_recurrence': $Schema.fromMap({
              '\$ref': r'#/$defs/DailyRecurrence',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
            'weekly_recurrence': $Schema.fromMap({
              '\$ref': r'#/$defs/WeeklyRecurrence',
            }),
          },
          required: ['retention'],
        )
        .value,
    dependencies: [
      DailyRecurrence.$schema,
      Timeouts.$schema,
      WeeklyRecurrence.$schema,
    ],
  );
}
