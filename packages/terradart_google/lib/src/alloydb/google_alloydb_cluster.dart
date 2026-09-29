// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_alloydb_cluster`.
const Set<String> _googleAlloydbClusterSensitive = <String>{
  'initial_user.password',
};

/// `cluster_type` — primary vs secondary cluster role.
enum AlloydbClusterType implements TerraformEnum {
  primary('PRIMARY'),
  secondary('SECONDARY');

  const AlloydbClusterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Day-of-week values shared by backup and maintenance windows.
enum AlloydbClusterDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const AlloydbClusterDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `restore_backup_source`, `restore_continuous_backup_source`, `restore_backupdr_backup_source`, `restore_backupdr_pitr_source` on `google_alloydb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.restoreBackupSource(...)`.
sealed class AlloydbClusterRestore {
  const AlloydbClusterRestore();

  /// Sets `restore_backup_source`.
  const factory AlloydbClusterRestore.restoreBackupSource(
    AlloydbClusterRestoreBackupSource restoreBackupSource,
  ) = AlloydbClusterRestoreBackupSourceChoice;

  /// Sets `restore_continuous_backup_source`.
  const factory AlloydbClusterRestore.restoreContinuousBackupSource(
    AlloydbClusterRestoreContinuousBackupSource restoreContinuousBackupSource,
  ) = AlloydbClusterRestoreContinuousBackupSourceChoice;

  /// Sets `restore_backupdr_backup_source`.
  const factory AlloydbClusterRestore.restoreBackupdrBackupSource(
    AlloydbClusterRestoreBackupdrBackupSource restoreBackupdrBackupSource,
  ) = AlloydbClusterRestoreBackupdrBackupSourceChoice;

  /// Sets `restore_backupdr_pitr_source`.
  const factory AlloydbClusterRestore.restoreBackupdrPitrSource(
    AlloydbClusterRestoreBackupdrPitrSource restoreBackupdrPitrSource,
  ) = AlloydbClusterRestoreBackupdrPitrSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AlloydbClusterRestore.restoreBackupSource] choice: sets `restore_backup_source`.
final class AlloydbClusterRestoreBackupSourceChoice
    extends AlloydbClusterRestore {
  const AlloydbClusterRestoreBackupSourceChoice(this.restoreBackupSource);

  final AlloydbClusterRestoreBackupSource restoreBackupSource;

  @override
  String get blockKey => 'restore_backup_source';

  @override
  Map<String, Object?> encode() => {
    'restore_backup_source': restoreBackupSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_backup_source': TfArg.literal(restoreBackupSource.encode()),
  };
}

/// The [AlloydbClusterRestore.restoreContinuousBackupSource] choice: sets `restore_continuous_backup_source`.
final class AlloydbClusterRestoreContinuousBackupSourceChoice
    extends AlloydbClusterRestore {
  const AlloydbClusterRestoreContinuousBackupSourceChoice(
    this.restoreContinuousBackupSource,
  );

  final AlloydbClusterRestoreContinuousBackupSource
  restoreContinuousBackupSource;

  @override
  String get blockKey => 'restore_continuous_backup_source';

  @override
  Map<String, Object?> encode() => {
    'restore_continuous_backup_source': restoreContinuousBackupSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_continuous_backup_source': TfArg.literal(
      restoreContinuousBackupSource.encode(),
    ),
  };
}

/// The [AlloydbClusterRestore.restoreBackupdrBackupSource] choice: sets `restore_backupdr_backup_source`.
final class AlloydbClusterRestoreBackupdrBackupSourceChoice
    extends AlloydbClusterRestore {
  const AlloydbClusterRestoreBackupdrBackupSourceChoice(
    this.restoreBackupdrBackupSource,
  );

  final AlloydbClusterRestoreBackupdrBackupSource restoreBackupdrBackupSource;

  @override
  String get blockKey => 'restore_backupdr_backup_source';

  @override
  Map<String, Object?> encode() => {
    'restore_backupdr_backup_source': restoreBackupdrBackupSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_backupdr_backup_source': TfArg.literal(
      restoreBackupdrBackupSource.encode(),
    ),
  };
}

/// The [AlloydbClusterRestore.restoreBackupdrPitrSource] choice: sets `restore_backupdr_pitr_source`.
final class AlloydbClusterRestoreBackupdrPitrSourceChoice
    extends AlloydbClusterRestore {
  const AlloydbClusterRestoreBackupdrPitrSourceChoice(
    this.restoreBackupdrPitrSource,
  );

  final AlloydbClusterRestoreBackupdrPitrSource restoreBackupdrPitrSource;

  @override
  String get blockKey => 'restore_backupdr_pitr_source';

  @override
  Map<String, Object?> encode() => {
    'restore_backupdr_pitr_source': restoreBackupdrPitrSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_backupdr_pitr_source': TfArg.literal(
      restoreBackupdrPitrSource.encode(),
    ),
  };
}

/// Typed helper for the `automated_backup_policy` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterAutomatedBackupPolicy {
  const AlloydbClusterAutomatedBackupPolicy({
    this.backupWindow,
    this.enabled,
    this.labels,
    this.location,
    this.encryptionConfig,
    this.retention,
    this.weeklySchedule,
  });

  final TfArg<String>? backupWindow;

  final TfArg<bool>? enabled;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? location;

  final AlloydbClusterAutomatedBackupPolicyEncryptionConfig? encryptionConfig;

  final AlloydbClusterAutomatedBackupPolicyRetention? retention;

  final AlloydbClusterAutomatedBackupPolicyWeeklySchedule? weeklySchedule;

  Map<String, Object?> encode() => {
    'backup_window': ?backupWindow?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'location': ?location?.toTfJson(),
    'encryption_config': ?encryptionConfig?.encode(),
    ...?retention?.encode(),
    'weekly_schedule': ?weeklySchedule?.encode(),
  };
}

/// At most one of `time_based_retention`, `quantity_based_retention` on the `automated_backup_policy` block of `google_alloydb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.timeBasedRetention(...)`.
sealed class AlloydbClusterAutomatedBackupPolicyRetention {
  const AlloydbClusterAutomatedBackupPolicyRetention();

  /// Sets `time_based_retention`.
  const factory AlloydbClusterAutomatedBackupPolicyRetention.timeBasedRetention(
    AlloydbClusterAutomatedBackupPolicyTimeBasedRetention timeBasedRetention,
  ) = AlloydbClusterAutomatedBackupPolicyRetentionTimeBasedRetention;

  /// Sets `quantity_based_retention`.
  const factory AlloydbClusterAutomatedBackupPolicyRetention.quantityBasedRetention(
    AlloydbClusterAutomatedBackupPolicyQuantityBasedRetention
    quantityBasedRetention,
  ) = AlloydbClusterAutomatedBackupPolicyRetentionQuantityBasedRetention;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AlloydbClusterAutomatedBackupPolicyRetention.timeBasedRetention] choice: sets `time_based_retention`.
final class AlloydbClusterAutomatedBackupPolicyRetentionTimeBasedRetention
    extends AlloydbClusterAutomatedBackupPolicyRetention {
  const AlloydbClusterAutomatedBackupPolicyRetentionTimeBasedRetention(
    this.timeBasedRetention,
  );

  final AlloydbClusterAutomatedBackupPolicyTimeBasedRetention
  timeBasedRetention;

  @override
  String get blockKey => 'time_based_retention';

  @override
  Map<String, Object?> encode() => {
    'time_based_retention': timeBasedRetention.encode(),
  };
}

/// The [AlloydbClusterAutomatedBackupPolicyRetention.quantityBasedRetention] choice: sets `quantity_based_retention`.
final class AlloydbClusterAutomatedBackupPolicyRetentionQuantityBasedRetention
    extends AlloydbClusterAutomatedBackupPolicyRetention {
  const AlloydbClusterAutomatedBackupPolicyRetentionQuantityBasedRetention(
    this.quantityBasedRetention,
  );

  final AlloydbClusterAutomatedBackupPolicyQuantityBasedRetention
  quantityBasedRetention;

  @override
  String get blockKey => 'quantity_based_retention';

  @override
  Map<String, Object?> encode() => {
    'quantity_based_retention': quantityBasedRetention.encode(),
  };
}

/// Typed helper for the `automated_backup_policy.encryption_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterAutomatedBackupPolicyEncryptionConfig {
  const AlloydbClusterAutomatedBackupPolicyEncryptionConfig({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `automated_backup_policy.quantity_based_retention` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterAutomatedBackupPolicyQuantityBasedRetention {
  const AlloydbClusterAutomatedBackupPolicyQuantityBasedRetention({this.count});

  final TfArg<num>? count;

  Map<String, Object?> encode() => {'count': ?count?.toTfJson()};
}

/// Typed helper for the `automated_backup_policy.time_based_retention` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterAutomatedBackupPolicyTimeBasedRetention {
  const AlloydbClusterAutomatedBackupPolicyTimeBasedRetention({
    this.retentionPeriod,
  });

  final TfArg<String>? retentionPeriod;

  Map<String, Object?> encode() => {
    'retention_period': ?retentionPeriod?.toTfJson(),
  };
}

/// Typed helper for the `automated_backup_policy.weekly_schedule` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterAutomatedBackupPolicyWeeklySchedule {
  const AlloydbClusterAutomatedBackupPolicyWeeklySchedule({
    this.daysOfWeek,
    required this.startTimes,
  });

  final List<
    TfArg<AlloydbClusterAutomatedBackupPolicyWeeklyScheduleDaysOfWeek>
  >?
  daysOfWeek;

  final List<AlloydbClusterAutomatedBackupPolicyWeeklyScheduleStartTimes>
  startTimes;

  Map<String, Object?> encode() => {
    if (daysOfWeek != null)
      'days_of_week': [for (final e in daysOfWeek!) e.toTfJson()],
    'start_times': [for (final e in startTimes) e.encode()],
  };
}

/// `days_of_week` — derived from the provider schema description.
enum AlloydbClusterAutomatedBackupPolicyWeeklyScheduleDaysOfWeek
    implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const AlloydbClusterAutomatedBackupPolicyWeeklyScheduleDaysOfWeek(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `automated_backup_policy.weekly_schedule.start_times` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterAutomatedBackupPolicyWeeklyScheduleStartTimes {
  const AlloydbClusterAutomatedBackupPolicyWeeklyScheduleStartTimes({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `continuous_backup_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterContinuousBackupConfig {
  const AlloydbClusterContinuousBackupConfig({
    this.enabled,
    this.recoveryWindowDays,
    this.encryptionConfig,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? recoveryWindowDays;

  final AlloydbClusterContinuousBackupConfigEncryptionConfig? encryptionConfig;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'recovery_window_days': ?recoveryWindowDays?.toTfJson(),
    'encryption_config': ?encryptionConfig?.encode(),
  };
}

/// Typed helper for the `continuous_backup_config.encryption_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterContinuousBackupConfigEncryptionConfig {
  const AlloydbClusterContinuousBackupConfigEncryptionConfig({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `dataplex_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterDataplexConfig {
  const AlloydbClusterDataplexConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `encryption_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterEncryptionConfig {
  const AlloydbClusterEncryptionConfig({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `initial_user` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterInitialUser {
  const AlloydbClusterInitialUser({
    this.password,
    this.passwordWoVersion,
    this.user,
  });

  final AlloydbClusterInitialUserPassword? password;

  final TfArg<String>? passwordWoVersion;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    ...?password?.encode(),
    'password_wo_version': ?passwordWoVersion?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// At most one of `password`, `password_wo` on the `initial_user` block of `google_alloydb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class AlloydbClusterInitialUserPassword {
  const AlloydbClusterInitialUserPassword();

  /// Sets `password`.
  const factory AlloydbClusterInitialUserPassword.password(
    TfArg<String> password,
  ) = AlloydbClusterInitialUserPasswordChoice;

  /// Sets `password_wo`.
  const factory AlloydbClusterInitialUserPassword.passwordWo(
    TfArg<String> passwordWo,
  ) = AlloydbClusterInitialUserPasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AlloydbClusterInitialUserPassword.password] choice: sets `password`.
final class AlloydbClusterInitialUserPasswordChoice
    extends AlloydbClusterInitialUserPassword {
  const AlloydbClusterInitialUserPasswordChoice(this.password);

  final TfArg<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [AlloydbClusterInitialUserPassword.passwordWo] choice: sets `password_wo`.
final class AlloydbClusterInitialUserPasswordWo
    extends AlloydbClusterInitialUserPassword {
  const AlloydbClusterInitialUserPasswordWo(this.passwordWo);

  final TfArg<String> passwordWo;

  @override
  String get blockKey => 'password_wo';

  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};
}

/// Typed helper for the `maintenance_update_policy` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterMaintenanceUpdatePolicy {
  const AlloydbClusterMaintenanceUpdatePolicy({this.maintenanceWindows});

  final List<AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindows>?
  maintenanceWindows;

  Map<String, Object?> encode() => {
    if (maintenanceWindows != null)
      'maintenance_windows': [for (final e in maintenanceWindows!) e.encode()],
  };
}

/// Typed helper for the `maintenance_update_policy.maintenance_windows` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindows {
  const AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindows({
    required this.day,
    required this.startTime,
  });

  final TfArg<AlloydbClusterDayOfWeek> day;

  final AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindowsStartTime
  startTime;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// Typed helper for the `maintenance_update_policy.maintenance_windows.start_time` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindowsStartTime {
  const AlloydbClusterMaintenanceUpdatePolicyMaintenanceWindowsStartTime({
    required this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num> hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterNetworkConfig {
  const AlloydbClusterNetworkConfig({this.allocatedIpRange, this.network});

  final TfArg<String>? allocatedIpRange;

  final RefTo<GoogleComputeNetwork>? network;

  Map<String, Object?> encode() => {
    'allocated_ip_range': ?allocatedIpRange?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `psc_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterPscConfig {
  const AlloydbClusterPscConfig({this.pscEnabled});

  final TfArg<bool>? pscEnabled;

  Map<String, Object?> encode() => {'psc_enabled': ?pscEnabled?.toTfJson()};
}

/// Typed helper for the `restore_backup_source` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterRestoreBackupSource {
  const AlloydbClusterRestoreBackupSource({required this.backupName});

  final TfArg<String> backupName;

  Map<String, Object?> encode() => {'backup_name': backupName.toTfJson()};
}

/// Typed helper for the `restore_backupdr_backup_source` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterRestoreBackupdrBackupSource {
  const AlloydbClusterRestoreBackupdrBackupSource({required this.backup});

  final TfArg<String> backup;

  Map<String, Object?> encode() => {'backup': backup.toTfJson()};
}

/// Typed helper for the `restore_backupdr_pitr_source` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterRestoreBackupdrPitrSource {
  const AlloydbClusterRestoreBackupdrPitrSource({
    required this.dataSource,
    required this.pointInTime,
  });

  final TfArg<String> dataSource;

  final TfArg<String> pointInTime;

  Map<String, Object?> encode() => {
    'data_source': dataSource.toTfJson(),
    'point_in_time': pointInTime.toTfJson(),
  };
}

/// Typed helper for the `restore_continuous_backup_source` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterRestoreContinuousBackupSource {
  const AlloydbClusterRestoreContinuousBackupSource({
    required this.cluster,
    required this.pointInTime,
  });

  final TfArg<String> cluster;

  final TfArg<String> pointInTime;

  Map<String, Object?> encode() => {
    'cluster': cluster.toTfJson(),
    'point_in_time': pointInTime.toTfJson(),
  };
}

/// Typed helper for the `secondary_config` block of
/// `google_alloydb_cluster` (derived from provider schema).
@immutable
final class AlloydbClusterSecondaryConfig {
  const AlloydbClusterSecondaryConfig({required this.primaryClusterName});

  final TfArg<String> primaryClusterName;

  Map<String, Object?> encode() => {
    'primary_cluster_name': primaryClusterName.toTfJson(),
  };
}

/// Factory wrapper for `google_alloydb_cluster`.
///
/// A managed alloydb cluster.
///
/// AlloyDB cluster — regional Postgres-compatible database cluster.
///
/// Private-IP wiring reuses the same PSA chain as Cloud SQL:
/// [GoogleComputeNetwork] → [GoogleComputeGlobalAddress] →
/// [GoogleServiceNetworkingConnection] → [AlloydbClusterNetworkConfig].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [clusterId]: short cluster ID.
/// - [location]: regional location (e.g. `asia-northeast1`).
/// - [networkConfig]: VPC + optional allocated PSA range name.
///
/// Enable `alloydb.googleapis.com` via [GoogleProjectService] or
/// [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleAlloydbCluster(
///   localName: 'app',
///   clusterId: .literal('app-cluster'),
///   location: .literal('asia-northeast1'),
///   networkConfig: AlloydbClusterNetworkConfig(
///     network: vpc.ref,
///     allocatedIpRange: .ref(psaRange.nameRef),
///   ),
///   initialUser: AlloydbClusterInitialUser(
///     user: .literal('postgres'),
///     password: .passwordWo(.literal(dbPassword)),
///     passwordWoVersion: .literal('1'),
///   ),
///   dependsOn: [ResourceDependency(psaConnection)],
/// );
/// ```
final class GoogleAlloydbCluster extends Resource {
  static const String tfType = 'google_alloydb_cluster';

  GoogleAlloydbCluster({
    required super.localName,
    required TfArg<String> clusterId,
    required TfArg<String> location,
    AlloydbClusterNetworkConfig? networkConfig,
    AlloydbClusterInitialUser? initialUser,
    AlloydbClusterAutomatedBackupPolicy? automatedBackupPolicy,
    AlloydbClusterMaintenanceUpdatePolicy? maintenanceUpdatePolicy,
    TfArg<AlloydbClusterType>? clusterType,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? databaseVersion,
    TfArg<String>? etag,
    TfArg<String>? project,
    TfArg<bool>? skipAwaitMajorVersionUpgrade,
    TfArg<String>? subscriptionType,
    AlloydbClusterContinuousBackupConfig? continuousBackupConfig,
    AlloydbClusterDataplexConfig? dataplexConfig,
    AlloydbClusterEncryptionConfig? encryptionConfig,
    AlloydbClusterPscConfig? pscConfig,
    AlloydbClusterRestore? restore,
    AlloydbClusterSecondaryConfig? secondaryConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'location': location,
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (initialUser != null)
             'initial_user': TfArg.literal(initialUser.encode()),
           if (automatedBackupPolicy != null)
             'automated_backup_policy': TfArg.literal(
               automatedBackupPolicy.encode(),
             ),
           if (maintenanceUpdatePolicy != null)
             'maintenance_update_policy': TfArg.literal(
               maintenanceUpdatePolicy.encode(),
             ),
           'cluster_type': ?clusterType,
           'display_name': ?displayName,
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           'annotations': ?annotations,
           'database_version': ?databaseVersion,
           'etag': ?etag,
           'project': ?project,
           'skip_await_major_version_upgrade': ?skipAwaitMajorVersionUpgrade,
           'subscription_type': ?subscriptionType,
           if (continuousBackupConfig != null)
             'continuous_backup_config': TfArg.literal(
               continuousBackupConfig.encode(),
             ),
           if (dataplexConfig != null)
             'dataplex_config': TfArg.literal(dataplexConfig.encode()),
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (pscConfig != null)
             'psc_config': TfArg.literal(pscConfig.encode()),
           ...?restore?.argMap,
           if (secondaryConfig != null)
             'secondary_config': TfArg.literal(secondaryConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAlloydbCluster>`.
  RefTo<GoogleAlloydbCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get backupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_source');

  /// Reference to `backupdr_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get backupdrBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'backupdr_backup_source',
      );

  /// Reference to `continuous_backup_info` attribute.
  TfRef<List<Map<String, Object?>>> get continuousBackupInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'continuous_backup_info',
      );

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_info` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_info');

  /// Reference to `migration_source` attribute.
  TfRef<List<Map<String, Object?>>> get migrationSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'migration_source');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `trial_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get trialMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trial_metadata');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
