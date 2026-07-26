// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_backup_schedule`.
const Set<String> _googleSpannerBackupScheduleSensitive = <String>{};

/// Exactly one backup-chain style for a [GoogleSpannerBackupSchedule].
sealed class SpannerBackupScheduleBackupSpec {
  const SpannerBackupScheduleBackupSpec();

  /// argMap key (`full_backup_spec` or `incremental_backup_spec`).
  String get blockKey;

  /// JSON fragment for the block value (single empty map in a list —
  /// both blocks are `nesting_mode: list, max_items: 1` with no fields).
  List<Map<String, Object?>> encode();
}

/// `full_backup_spec` — schedule creates only full backups.
@immutable
final class SpannerBackupScheduleFullBackupSpec
    extends SpannerBackupScheduleBackupSpec {
  const SpannerBackupScheduleFullBackupSpec();

  @override
  String get blockKey => 'full_backup_spec';

  @override
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}

/// `incremental_backup_spec` — schedule creates incremental backup chains.
@immutable
final class SpannerBackupScheduleIncrementalBackupSpec
    extends SpannerBackupScheduleBackupSpec {
  const SpannerBackupScheduleIncrementalBackupSpec();

  @override
  String get blockKey => 'incremental_backup_spec';

  @override
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}

/// Typed helper for the `encryption_config` block of
/// `google_spanner_backup_schedule` (derived from provider schema).
@immutable
final class SpannerBackupScheduleEncryptionConfig {
  const SpannerBackupScheduleEncryptionConfig({
    required this.encryptionType,
    this.kmsKeyName,
    this.kmsKeyNames,
  });

  final TfArg<SpannerBackupScheduleEncryptionConfigEncryptionType>
  encryptionType;

  final TfArg<String>? kmsKeyName;

  final TfArg<List<Object?>>? kmsKeyNames;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (kmsKeyNames != null) 'kms_key_names': kmsKeyNames!.toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum SpannerBackupScheduleEncryptionConfigEncryptionType
    implements TerraformEnum {
  useDatabaseEncryption('USE_DATABASE_ENCRYPTION'),
  googleDefaultEncryption('GOOGLE_DEFAULT_ENCRYPTION'),
  customerManagedEncryption('CUSTOMER_MANAGED_ENCRYPTION');

  const SpannerBackupScheduleEncryptionConfigEncryptionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `spec` block of
/// `google_spanner_backup_schedule` (derived from provider schema).
@immutable
final class SpannerBackupScheduleSpec {
  const SpannerBackupScheduleSpec({this.cronSpec});

  final SpannerBackupScheduleSpecCronSpec? cronSpec;

  Map<String, Object?> encode() => {
    if (cronSpec != null) 'cron_spec': cronSpec!.encode(),
  };
}

/// Typed helper for the `spec.cron_spec` block of
/// `google_spanner_backup_schedule` (derived from provider schema).
@immutable
final class SpannerBackupScheduleSpecCronSpec {
  const SpannerBackupScheduleSpecCronSpec({this.text});

  final TfArg<String>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
}

/// Factory wrapper for `google_spanner_backup_schedule`.
///
/// A backup schedule for a Cloud Spanner Database. This resource is owned by
/// the database it is backing up, and is deleted along with the database. The
/// actual backups are not though.
///
/// Spanner **backup schedule** — cron-driven full or incremental backups
/// retained for [retentionDuration].
///
/// Choose exactly one [SpannerBackupScheduleBackupSpec] via [backupSpec]
/// (`full_backup_spec` or `incremental_backup_spec`). Provide [spec] as the
/// nested cron block (or a literal map matching the provider shape).
///
/// **Cost / apply:** gcp-cost: Cloud Spanner `CC63-0873-48FD` Backup storage
/// Regional Configuration (South Carolina / `us-east1`) SKU `D026-0717-CF8E`
/// **$0.1/GiBy.mo**. billing-behavior: retained backup bytes bill while
/// schedules produce and keep backups; destroy of the schedule does not
/// instantly erase stored backup capacity. **Never** wire into apply-smoke.
///
/// Enable `spanner.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleSpannerBackupSchedule extends Resource {
  static const String tfType = 'google_spanner_backup_schedule';

  GoogleSpannerBackupSchedule({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> database,
    required TfArg<String> retentionDuration,
    required SpannerBackupScheduleBackupSpec backupSpec,
    SpannerBackupScheduleSpec? spec,
    SpannerBackupScheduleEncryptionConfig? encryptionConfig,
    TfArg<String>? name,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'database': database,
           'retention_duration': retentionDuration,
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (name != null) 'name': name,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           backupSpec.blockKey: TfArg.literal(backupSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerBackupScheduleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
