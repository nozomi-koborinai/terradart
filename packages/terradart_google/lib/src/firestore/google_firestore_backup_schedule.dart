// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firestore_backup_schedule`.
const Set<String> _googleFirestoreBackupScheduleSensitive = <String>{};

// ===========================================================================
// BackupRecurrence -- sealed (Daily | Weekly)
// ===========================================================================

/// Choice of recurrence for a [GoogleFirestoreBackupSchedule]. Sealed so
/// the dichotomy is exhaustive at the type level. The Firestore service
/// requires exactly one of `daily_recurrence` / `weekly_recurrence` --
/// the schema marks both as independently optional but rejects
/// schedules with neither or both.
sealed class BackupRecurrence {
  const BackupRecurrence();

  /// argMap key under which this recurrence is emitted
  /// (`daily_recurrence` or `weekly_recurrence`).
  String get blockKey;

  /// JSON fragment for the block value (always a single-element list
  /// because both blocks are `nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// `daily_recurrence` block. Carries no fields -- its presence alone
/// signals "run every day". The encoded value is a single empty map
/// (matching the schema's `max_items: 1, list` shape).
@immutable
final class DailyRecurrence extends BackupRecurrence {
  const DailyRecurrence();

  @override
  String get blockKey => 'daily_recurrence';

  @override
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}

/// `weekly_recurrence` block. Optional [day] specifies which weekday the
/// backup runs on; when null, the provider defaults to the schema's
/// `DAY_OF_WEEK_UNSPECIFIED` (server picks). Pin a specific day for
/// predictable backup windows.
@immutable
final class WeeklyRecurrence extends BackupRecurrence {
  const WeeklyRecurrence({this.day});

  /// Day of week to run. When null, the field is omitted from the
  /// encoded block and the provider treats it as
  /// `DAY_OF_WEEK_UNSPECIFIED`.
  final BackupDayOfWeek? day;

  @override
  String get blockKey => 'weekly_recurrence';

  @override
  List<Map<String, Object?>> encode() => [
    {if (day != null) 'day': day!.terraformValue},
  ];
}

/// `weekly_recurrence.day` -- which day of the week the weekly backup
/// runs on. `dayOfWeekUnspecified` is the schema-default sentinel
/// (server picks the day); the seven concrete weekdays pin the slot.
enum BackupDayOfWeek {
  dayOfWeekUnspecified('DAY_OF_WEEK_UNSPECIFIED'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const BackupDayOfWeek(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_firestore_backup_schedule`.
///
/// Configures a periodic backup for one Cloud Firestore database. Each
/// schedule has a single [retention] window and exactly one
/// [recurrence]: either [DailyRecurrence] (every day) or
/// [WeeklyRecurrence] (one day per week). The schema models the two
/// recurrences as independent optional blocks, but the Firestore
/// service rejects schedules without exactly one -- the sealed
/// [BackupRecurrence] dispatch enforces that at the type level.
///
/// Example (keep daily backups for 7 days):
/// ```dart
/// final daily = GoogleFirestoreBackupSchedule(
///   localName: 'daily',
///   database: TfArg.ref(db.nameRef),
///   retention: TfArg.literal('604800s'),
///   recurrence: const DailyRecurrence(),
/// );
/// ```
///
/// Example (weekly backup every Monday, retained 4 weeks):
/// ```dart
/// final weekly = GoogleFirestoreBackupSchedule(
///   localName: 'weekly',
///   database: TfArg.ref(db.nameRef),
///   retention: TfArg.literal('2419200s'),
///   recurrence: const WeeklyRecurrence(day: BackupDayOfWeek.monday),
/// );
/// ```
///
/// `retention` is a Google `Duration` string (seconds-suffixed, up to
/// nine fractional digits, e.g. `"86400s"`). Maximum 14 weeks.
final class GoogleFirestoreBackupSchedule extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firestore_backup_schedule';

  GoogleFirestoreBackupSchedule({
    required super.localName,
    TfArg<String>? database,
    required TfArg<String> retention,
    required BackupRecurrence recurrence,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           if (database != null) 'database': database,
           'retention': retention,
           if (project != null) 'project': project,
           recurrence.blockKey: TfArg.literal(recurrence.encode()),
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleFirestoreBackupScheduleSensitive;

  /// Reference to `id` attribute (full resource path
  /// `projects/{p}/databases/{db}/backupSchedules/{id}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute. Same shape as [id] for this
  /// resource -- the schema returns it as `computed`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
