// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../spanner/google_spanner_database.dart' show GoogleSpannerDatabase;
import '../spanner/google_spanner_instance.dart' show GoogleSpannerInstance;

/// Sensitive field paths for `google_spanner_backup_schedule`.
const Set<String> _googleSpannerBackupScheduleSensitive = <String>{};

/// Exactly one backup-chain style for a [GoogleSpannerBackupSchedule].
sealed class SpannerBackupScheduleBackupSpec {
  const SpannerBackupScheduleBackupSpec();

  /// `full_backup_spec` — schedule creates only full backups.
  const factory SpannerBackupScheduleBackupSpec.fullBackupSpec() =
      SpannerBackupScheduleFullBackupSpec;

  /// `incremental_backup_spec` — schedule creates incremental backup chains.
  const factory SpannerBackupScheduleBackupSpec.incrementalBackupSpec() =
      SpannerBackupScheduleIncrementalBackupSpec;

  /// argMap key (`full_backup_spec` or `incremental_backup_spec`).
  @internal
  String get blockKey;

  /// JSON fragment for the block value (single empty map in a list —
  /// both blocks are `nesting_mode: list, max_items: 1` with no fields).
  @internal
  List<Map<String, Object?>> encode();
}

/// `full_backup_spec` — schedule creates only full backups.
@immutable
final class SpannerBackupScheduleFullBackupSpec
    extends SpannerBackupScheduleBackupSpec {
  const SpannerBackupScheduleFullBackupSpec();

  @override
  @internal
  String get blockKey => 'full_backup_spec';

  @override
  @internal
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}

/// `incremental_backup_spec` — schedule creates incremental backup chains.
@immutable
final class SpannerBackupScheduleIncrementalBackupSpec
    extends SpannerBackupScheduleBackupSpec {
  const SpannerBackupScheduleIncrementalBackupSpec();

  @override
  @internal
  String get blockKey => 'incremental_backup_spec';

  @override
  @internal
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}

/// Typed helper for the `encryption_config` block of
/// `google_spanner_backup_schedule` (derived from provider schema).
@immutable
final class SpannerBackupScheduleEncryptionConfig {
  const SpannerBackupScheduleEncryptionConfig({
    required this.encryptionType,
    this.kmsKeyName,
  });

  final SpannerBackupScheduleEncryptionType encryptionType;

  final SpannerBackupScheduleKmsKeyName? kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    ...?kmsKeyName?.encode(),
  };
}

/// At most one of `kms_key_name`, `kms_key_names` on the `encryption_config` block of `google_spanner_backup_schedule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.kmsKeyName(...)`.
sealed class SpannerBackupScheduleKmsKeyName {
  const SpannerBackupScheduleKmsKeyName();

  /// Sets `kms_key_name`.
  const factory SpannerBackupScheduleKmsKeyName.kmsKeyName(
    RefTo<GoogleKmsCryptoKey> kmsKeyName,
  ) = SpannerBackupScheduleKmsKeyNameChoice;

  /// Sets `kms_key_names`.
  const factory SpannerBackupScheduleKmsKeyName.kmsKeyNames(
    TfArg<List<String>> kmsKeyNames,
  ) = SpannerBackupScheduleKmsKeyNameKmsKeyNames;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SpannerBackupScheduleKmsKeyName.kmsKeyName] choice: sets `kms_key_name`.
final class SpannerBackupScheduleKmsKeyNameChoice
    extends SpannerBackupScheduleKmsKeyName {
  const SpannerBackupScheduleKmsKeyNameChoice(this.kmsKeyName);

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  @override
  String get blockKey => 'kms_key_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// The [SpannerBackupScheduleKmsKeyName.kmsKeyNames] choice: sets `kms_key_names`.
final class SpannerBackupScheduleKmsKeyNameKmsKeyNames
    extends SpannerBackupScheduleKmsKeyName {
  const SpannerBackupScheduleKmsKeyNameKmsKeyNames(this.kmsKeyNames);

  final TfArg<List<String>> kmsKeyNames;

  @internal
  @override
  String get blockKey => 'kms_key_names';

  @internal
  @override
  Map<String, Object?> encode() => {'kms_key_names': kmsKeyNames.toTfJson()};
}

/// `encryption_type` — derived from the provider schema description.
extension type const SpannerBackupScheduleEncryptionType._(TfArg<String> _)
    implements TfArg<String> {
  SpannerBackupScheduleEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  SpannerBackupScheduleEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const SpannerBackupScheduleEncryptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const useDatabaseEncryption = SpannerBackupScheduleEncryptionType._(
    TfArgLiteral('USE_DATABASE_ENCRYPTION'),
  );
  static const googleDefaultEncryption = SpannerBackupScheduleEncryptionType._(
    TfArgLiteral('GOOGLE_DEFAULT_ENCRYPTION'),
  );
  static const customerManagedEncryption =
      SpannerBackupScheduleEncryptionType._(
        TfArgLiteral('CUSTOMER_MANAGED_ENCRYPTION'),
      );

  static const List<SpannerBackupScheduleEncryptionType> values = [
    useDatabaseEncryption,
    googleDefaultEncryption,
    customerManagedEncryption,
  ];
}

/// Typed helper for the `spec` block of
/// `google_spanner_backup_schedule` (derived from provider schema).
@immutable
final class SpannerBackupScheduleSpec {
  const SpannerBackupScheduleSpec({this.cronSpec});

  final SpannerBackupScheduleCronSpec? cronSpec;

  @internal
  Map<String, Object?> encode() => {'cron_spec': ?cronSpec?.encode()};
}

/// Typed helper for the `spec.cron_spec` block of
/// `google_spanner_backup_schedule` (derived from provider schema).
@immutable
final class SpannerBackupScheduleCronSpec {
  const SpannerBackupScheduleCronSpec({this.text});

  final TfArg<String>? text;

  @internal
  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
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

  GoogleSpannerBackupSchedule(
    super.localName, {
    required RefTo<GoogleSpannerInstance> instance,
    required RefTo<GoogleSpannerDatabase> database,
    required TfArg<String> retentionDuration,
    required SpannerBackupScheduleBackupSpec backupSpec,
    SpannerBackupScheduleSpec? spec,
    SpannerBackupScheduleEncryptionConfig? encryptionConfig,
    TfArg<String>? name,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('name'),
           'database': database.encodeAs('name'),
           'retention_duration': retentionDuration,
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           'name': ?name,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           backupSpec.blockKey: TfArg.literal(backupSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerBackupScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerBackupSchedule>`.
  RefTo<GoogleSpannerBackupSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `retention_duration` attribute.
  TfRef<String> get retentionDuration =>
      TfRef.attribute<String>(this, 'retention_duration');
}
