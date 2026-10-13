// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_odb_autonomous_database`.
const Set<String> _awsOdbAutonomousDatabaseSensitive = <String>{
  'admin_password',
  'admin_password_wo',
};

/// Odb Autonomous Database Encryption Key enum for `encryption_key_provider`.
extension type const OdbAutonomousDatabaseEncryptionKeyProvider._(
  TfArg<String> _
) implements TfArg<String> {
  OdbAutonomousDatabaseEncryptionKeyProvider.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseEncryptionKeyProvider.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseEncryptionKeyProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const oracleManaged = OdbAutonomousDatabaseEncryptionKeyProvider._(
    TfArgLiteral('ORACLE_MANAGED'),
  );
  static const awsKms = OdbAutonomousDatabaseEncryptionKeyProvider._(
    TfArgLiteral('AWS_KMS'),
  );

  static const List<OdbAutonomousDatabaseEncryptionKeyProvider> values = [
    oracleManaged,
    awsKms,
  ];
}

/// At most one of `admin_password`, `admin_password_source`, `admin_password_wo` on `aws_odb_autonomous_database`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.adminPassword(...)`.
sealed class OdbAutonomousDatabaseAdminPassword {
  const OdbAutonomousDatabaseAdminPassword();

  /// Sets `admin_password`.
  const factory OdbAutonomousDatabaseAdminPassword.adminPassword(
    Sensitive<String> adminPassword,
  ) = OdbAutonomousDatabaseAdminPasswordChoice;

  /// Sets `admin_password_source`.
  const factory OdbAutonomousDatabaseAdminPassword.adminPasswordSource(
    List<OdbAutonomousDatabaseAdminPasswordSource> adminPasswordSource,
  ) = OdbAutonomousDatabaseAdminPasswordSourceChoice;

  /// Sets `admin_password_wo`.
  const factory OdbAutonomousDatabaseAdminPassword.adminPasswordWo(
    Sensitive<String> adminPasswordWo,
  ) = OdbAutonomousDatabaseAdminPasswordWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [OdbAutonomousDatabaseAdminPassword.adminPassword] choice: sets `admin_password`.
final class OdbAutonomousDatabaseAdminPasswordChoice
    extends OdbAutonomousDatabaseAdminPassword {
  const OdbAutonomousDatabaseAdminPasswordChoice(this.adminPassword);

  final Sensitive<String> adminPassword;

  @internal
  @override
  String get blockKey => 'admin_password';

  @internal
  @override
  Map<String, Object?> encode() => {'admin_password': adminPassword.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'admin_password': adminPassword};
}

/// The [OdbAutonomousDatabaseAdminPassword.adminPasswordSource] choice: sets `admin_password_source`.
final class OdbAutonomousDatabaseAdminPasswordSourceChoice
    extends OdbAutonomousDatabaseAdminPassword {
  const OdbAutonomousDatabaseAdminPasswordSourceChoice(
    this.adminPasswordSource,
  );

  final List<OdbAutonomousDatabaseAdminPasswordSource> adminPasswordSource;

  @internal
  @override
  String get blockKey => 'admin_password_source';

  @internal
  @override
  Map<String, Object?> encode() => {
    'admin_password_source': [for (final e in adminPasswordSource) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'admin_password_source': TfArg.literal([
      for (final e in adminPasswordSource) e.encode(),
    ]),
  };
}

/// The [OdbAutonomousDatabaseAdminPassword.adminPasswordWo] choice: sets `admin_password_wo`.
final class OdbAutonomousDatabaseAdminPasswordWo
    extends OdbAutonomousDatabaseAdminPassword {
  const OdbAutonomousDatabaseAdminPasswordWo(this.adminPasswordWo);

  final Sensitive<String> adminPasswordWo;

  @internal
  @override
  String get blockKey => 'admin_password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'admin_password_wo': adminPasswordWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'admin_password_wo': adminPasswordWo,
  };
}

/// Typed helper for the `admin_password_source` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseAdminPasswordSource {
  const OdbAutonomousDatabaseAdminPasswordSource({
    this.customerManagedAwsSecret,
  });

  final List<OdbAutonomousDatabaseCustomerManagedAwsSecret>?
  customerManagedAwsSecret;

  @internal
  Map<String, Object?> encode() => {
    if (customerManagedAwsSecret != null)
      'customer_managed_aws_secret': [
        for (final e in customerManagedAwsSecret!) e.encode(),
      ],
  };
}

/// Typed helper for the `admin_password_source.customer_managed_aws_secret` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseCustomerManagedAwsSecret {
  const OdbAutonomousDatabaseCustomerManagedAwsSecret({
    required this.externalIdType,
    required this.iamRoleArn,
    required this.secretArn,
  });

  final OdbAutonomousDatabaseExternalIdType externalIdType;

  final RefTo<AwsIamRole> iamRoleArn;

  final TfArg<String> secretArn;

  @internal
  Map<String, Object?> encode() => {
    'external_id_type': externalIdType.toTfJson(),
    'iam_role_arn': iamRoleArn.encodeAs('arn').toTfJson(),
    'secret_arn': secretArn.toTfJson(),
  };
}

/// `external_id_type` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseExternalIdType._(TfArg<String> _)
    implements TfArg<String> {
  OdbAutonomousDatabaseExternalIdType.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseExternalIdType.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseExternalIdType.arg(TfArg<String> arg)
    : this._(arg);

  static const databaseOcid = OdbAutonomousDatabaseExternalIdType._(
    TfArgLiteral('database_ocid'),
  );
  static const compartmentOcid = OdbAutonomousDatabaseExternalIdType._(
    TfArgLiteral('compartment_ocid'),
  );
  static const tenantOcid = OdbAutonomousDatabaseExternalIdType._(
    TfArgLiteral('tenant_ocid'),
  );

  static const List<OdbAutonomousDatabaseExternalIdType> values = [
    databaseOcid,
    compartmentOcid,
    tenantOcid,
  ];
}

/// Typed helper for the `customer_contacts_to_send_to_oci` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseCustomerContactsToSendToOci {
  const OdbAutonomousDatabaseCustomerContactsToSendToOci({required this.email});

  final TfArg<String> email;

  @internal
  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `db_tools_details` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseDbToolsDetails {
  const OdbAutonomousDatabaseDbToolsDetails({
    this.computeCount,
    this.isEnabled,
    this.maxIdleTimeInMinutes,
    this.name,
  });

  final TfArg<num>? computeCount;

  final TfArg<bool>? isEnabled;

  final TfArg<num>? maxIdleTimeInMinutes;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'compute_count': ?computeCount?.toTfJson(),
    'is_enabled': ?isEnabled?.toTfJson(),
    'max_idle_time_in_minutes': ?maxIdleTimeInMinutes?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `long_term_backup_schedule` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseLongTermBackupSchedule {
  const OdbAutonomousDatabaseLongTermBackupSchedule({
    this.isDisabled,
    this.repeatCadence,
    this.retentionPeriodInDays,
    this.timeOfBackup,
  });

  final TfArg<bool>? isDisabled;

  final OdbAutonomousDatabaseRepeatCadence? repeatCadence;

  final TfArg<num>? retentionPeriodInDays;

  final TfArg<String>? timeOfBackup;

  @internal
  Map<String, Object?> encode() => {
    'is_disabled': ?isDisabled?.toTfJson(),
    'repeat_cadence': ?repeatCadence?.toTfJson(),
    'retention_period_in_days': ?retentionPeriodInDays?.toTfJson(),
    'time_of_backup': ?timeOfBackup?.toTfJson(),
  };
}

/// `repeat_cadence` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseRepeatCadence._(TfArg<String> _)
    implements TfArg<String> {
  OdbAutonomousDatabaseRepeatCadence.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseRepeatCadence.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseRepeatCadence.arg(TfArg<String> arg) : this._(arg);

  static const oneTime = OdbAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('ONE_TIME'),
  );
  static const weekly = OdbAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('WEEKLY'),
  );
  static const monthly = OdbAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('MONTHLY'),
  );
  static const yearly = OdbAutonomousDatabaseRepeatCadence._(
    TfArgLiteral('YEARLY'),
  );

  static const List<OdbAutonomousDatabaseRepeatCadence> values = [
    oneTime,
    weekly,
    monthly,
    yearly,
  ];
}

/// Typed helper for the `resource_pool_summary` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseResourcePoolSummary {
  const OdbAutonomousDatabaseResourcePoolSummary({
    this.isDisabled,
    this.poolSize,
    this.poolStorageSizeInTbs,
  });

  final TfArg<bool>? isDisabled;

  final TfArg<num>? poolSize;

  final TfArg<num>? poolStorageSizeInTbs;

  @internal
  Map<String, Object?> encode() => {
    'is_disabled': ?isDisabled?.toTfJson(),
    'pool_size': ?poolSize?.toTfJson(),
    'pool_storage_size_in_tbs': ?poolStorageSizeInTbs?.toTfJson(),
  };
}

/// Typed helper for the `scheduled_operations` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseScheduledOperations {
  const OdbAutonomousDatabaseScheduledOperations({
    required this.dayOfWeek,
    this.scheduledStartTime,
    this.scheduledStopTime,
  });

  final OdbAutonomousDatabaseDayOfWeek dayOfWeek;

  final TfArg<String>? scheduledStartTime;

  final TfArg<String>? scheduledStopTime;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'scheduled_start_time': ?scheduledStartTime?.toTfJson(),
    'scheduled_stop_time': ?scheduledStopTime?.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  OdbAutonomousDatabaseDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const monday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('MONDAY'),
  );
  static const tuesday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('FRIDAY'),
  );
  static const saturday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = OdbAutonomousDatabaseDayOfWeek._(
    TfArgLiteral('SUNDAY'),
  );

  static const List<OdbAutonomousDatabaseDayOfWeek> values = [
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// Typed helper for the `source_configuration` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseSourceConfiguration {
  const OdbAutonomousDatabaseSourceConfiguration({
    this.cloneToRefreshable,
    this.crossRegionDataGuard,
    this.crossRegionDisasterRecovery,
    this.databaseClone,
    this.pointInTimeRestore,
    this.restoreFromBackup,
  });

  final List<OdbAutonomousDatabaseCloneToRefreshable>? cloneToRefreshable;

  final List<OdbAutonomousDatabaseCrossRegionDataGuard>? crossRegionDataGuard;

  final List<OdbAutonomousDatabaseCrossRegionDisasterRecovery>?
  crossRegionDisasterRecovery;

  final List<OdbAutonomousDatabaseClone>? databaseClone;

  final List<OdbAutonomousDatabasePointInTimeRestore>? pointInTimeRestore;

  final List<OdbAutonomousDatabaseRestoreFromBackup>? restoreFromBackup;

  @internal
  Map<String, Object?> encode() => {
    if (cloneToRefreshable != null)
      'clone_to_refreshable': [for (final e in cloneToRefreshable!) e.encode()],
    if (crossRegionDataGuard != null)
      'cross_region_data_guard': [
        for (final e in crossRegionDataGuard!) e.encode(),
      ],
    if (crossRegionDisasterRecovery != null)
      'cross_region_disaster_recovery': [
        for (final e in crossRegionDisasterRecovery!) e.encode(),
      ],
    if (databaseClone != null)
      'database_clone': [for (final e in databaseClone!) e.encode()],
    if (pointInTimeRestore != null)
      'point_in_time_restore': [
        for (final e in pointInTimeRestore!) e.encode(),
      ],
    if (restoreFromBackup != null)
      'restore_from_backup': [for (final e in restoreFromBackup!) e.encode()],
  };
}

/// Typed helper for the `source_configuration.clone_to_refreshable` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseCloneToRefreshable {
  const OdbAutonomousDatabaseCloneToRefreshable({
    this.autoRefreshFrequencyInSeconds,
    this.autoRefreshPointLagInSeconds,
    this.cloneType,
    this.openMode,
    this.refreshableMode,
    required this.sourceAutonomousDatabaseId,
    this.timeOfAutoRefreshStart,
  });

  final TfArg<num>? autoRefreshFrequencyInSeconds;

  final TfArg<num>? autoRefreshPointLagInSeconds;

  final OdbAutonomousDatabaseCloneType? cloneType;

  final OdbAutonomousDatabaseCloneToRefreshableOpenMode? openMode;

  final OdbAutonomousDatabaseCloneToRefreshableMode? refreshableMode;

  final TfArg<String> sourceAutonomousDatabaseId;

  final TfArg<String>? timeOfAutoRefreshStart;

  @internal
  Map<String, Object?> encode() => {
    'auto_refresh_frequency_in_seconds': ?autoRefreshFrequencyInSeconds
        ?.toTfJson(),
    'auto_refresh_point_lag_in_seconds': ?autoRefreshPointLagInSeconds
        ?.toTfJson(),
    'clone_type': ?cloneType?.toTfJson(),
    'open_mode': ?openMode?.toTfJson(),
    'refreshable_mode': ?refreshableMode?.toTfJson(),
    'source_autonomous_database_id': sourceAutonomousDatabaseId.toTfJson(),
    'time_of_auto_refresh_start': ?timeOfAutoRefreshStart?.toTfJson(),
  };
}

/// `clone_type` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseCloneType._(TfArg<String> _)
    implements TfArg<String> {
  OdbAutonomousDatabaseCloneType.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseCloneType.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseCloneType.arg(TfArg<String> arg) : this._(arg);

  static const full = OdbAutonomousDatabaseCloneType._(TfArgLiteral('FULL'));
  static const metadata = OdbAutonomousDatabaseCloneType._(
    TfArgLiteral('METADATA'),
  );
  static const partial = OdbAutonomousDatabaseCloneType._(
    TfArgLiteral('PARTIAL'),
  );

  static const List<OdbAutonomousDatabaseCloneType> values = [
    full,
    metadata,
    partial,
  ];
}

/// `open_mode` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseCloneToRefreshableOpenMode._(
  TfArg<String> _
) implements TfArg<String> {
  OdbAutonomousDatabaseCloneToRefreshableOpenMode.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseCloneToRefreshableOpenMode.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseCloneToRefreshableOpenMode.arg(TfArg<String> arg)
    : this._(arg);

  static const readOnly = OdbAutonomousDatabaseCloneToRefreshableOpenMode._(
    TfArgLiteral('READ_ONLY'),
  );
  static const readWrite = OdbAutonomousDatabaseCloneToRefreshableOpenMode._(
    TfArgLiteral('READ_WRITE'),
  );

  static const List<OdbAutonomousDatabaseCloneToRefreshableOpenMode> values = [
    readOnly,
    readWrite,
  ];
}

/// `refreshable_mode` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseCloneToRefreshableMode._(
  TfArg<String> _
) implements TfArg<String> {
  OdbAutonomousDatabaseCloneToRefreshableMode.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseCloneToRefreshableMode.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseCloneToRefreshableMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = OdbAutonomousDatabaseCloneToRefreshableMode._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const manual = OdbAutonomousDatabaseCloneToRefreshableMode._(
    TfArgLiteral('MANUAL'),
  );

  static const List<OdbAutonomousDatabaseCloneToRefreshableMode> values = [
    automatic,
    manual,
  ];
}

/// Typed helper for the `source_configuration.cross_region_data_guard` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseCrossRegionDataGuard {
  const OdbAutonomousDatabaseCrossRegionDataGuard({
    required this.sourceAutonomousDatabaseArn,
  });

  final TfArg<String> sourceAutonomousDatabaseArn;

  @internal
  Map<String, Object?> encode() => {
    'source_autonomous_database_arn': sourceAutonomousDatabaseArn.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.cross_region_disaster_recovery` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseCrossRegionDisasterRecovery {
  const OdbAutonomousDatabaseCrossRegionDisasterRecovery({
    this.isReplicateAutomaticBackups,
    required this.remoteDisasterRecoveryType,
    required this.sourceAutonomousDatabaseArn,
  });

  final TfArg<bool>? isReplicateAutomaticBackups;

  final OdbAutonomousDatabaseRemoteDisasterRecoveryType
  remoteDisasterRecoveryType;

  final TfArg<String> sourceAutonomousDatabaseArn;

  @internal
  Map<String, Object?> encode() => {
    'is_replicate_automatic_backups': ?isReplicateAutomaticBackups?.toTfJson(),
    'remote_disaster_recovery_type': remoteDisasterRecoveryType.toTfJson(),
    'source_autonomous_database_arn': sourceAutonomousDatabaseArn.toTfJson(),
  };
}

/// `remote_disaster_recovery_type` — derived from the provider schema description.
extension type const OdbAutonomousDatabaseRemoteDisasterRecoveryType._(
  TfArg<String> _
) implements TfArg<String> {
  OdbAutonomousDatabaseRemoteDisasterRecoveryType.variable(String name)
    : this._(TfArg.variable(name));
  OdbAutonomousDatabaseRemoteDisasterRecoveryType.expression(String template)
    : this._(TfArg.expression(template));
  const OdbAutonomousDatabaseRemoteDisasterRecoveryType.arg(TfArg<String> arg)
    : this._(arg);

  static const adg = OdbAutonomousDatabaseRemoteDisasterRecoveryType._(
    TfArgLiteral('ADG'),
  );
  static const backupBased = OdbAutonomousDatabaseRemoteDisasterRecoveryType._(
    TfArgLiteral('BACKUP_BASED'),
  );

  static const List<OdbAutonomousDatabaseRemoteDisasterRecoveryType> values = [
    adg,
    backupBased,
  ];
}

/// Typed helper for the `source_configuration.database_clone` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseClone {
  const OdbAutonomousDatabaseClone({
    required this.cloneType,
    required this.sourceAutonomousDatabaseId,
  });

  final OdbAutonomousDatabaseCloneType cloneType;

  final TfArg<String> sourceAutonomousDatabaseId;

  @internal
  Map<String, Object?> encode() => {
    'clone_type': cloneType.toTfJson(),
    'source_autonomous_database_id': sourceAutonomousDatabaseId.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.point_in_time_restore` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabasePointInTimeRestore {
  const OdbAutonomousDatabasePointInTimeRestore({
    this.cloneTableSpaceList,
    required this.cloneType,
    required this.sourceAutonomousDatabaseId,
    this.timestamp,
    this.useLatestAvailableBackupTimestamp,
  });

  final TfArg<List<num>>? cloneTableSpaceList;

  final OdbAutonomousDatabaseCloneType cloneType;

  final TfArg<String> sourceAutonomousDatabaseId;

  final TfArg<String>? timestamp;

  final TfArg<bool>? useLatestAvailableBackupTimestamp;

  @internal
  Map<String, Object?> encode() => {
    'clone_table_space_list': ?cloneTableSpaceList?.toTfJson(),
    'clone_type': cloneType.toTfJson(),
    'source_autonomous_database_id': sourceAutonomousDatabaseId.toTfJson(),
    'timestamp': ?timestamp?.toTfJson(),
    'use_latest_available_backup_timestamp': ?useLatestAvailableBackupTimestamp
        ?.toTfJson(),
  };
}

/// Typed helper for the `source_configuration.restore_from_backup` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseRestoreFromBackup {
  const OdbAutonomousDatabaseRestoreFromBackup({
    required this.autonomousDatabaseBackupId,
    this.cloneTableSpaceList,
    required this.cloneType,
  });

  final TfArg<String> autonomousDatabaseBackupId;

  final TfArg<List<num>>? cloneTableSpaceList;

  final OdbAutonomousDatabaseCloneType cloneType;

  @internal
  Map<String, Object?> encode() => {
    'autonomous_database_backup_id': autonomousDatabaseBackupId.toTfJson(),
    'clone_table_space_list': ?cloneTableSpaceList?.toTfJson(),
    'clone_type': cloneType.toTfJson(),
  };
}

/// Typed helper for the `transportable_tablespace` block of
/// `aws_odb_autonomous_database` (derived from provider schema).
@immutable
final class OdbAutonomousDatabaseTransportableTablespace {
  const OdbAutonomousDatabaseTransportableTablespace({this.ttsBundleUrl});

  final TfArg<String>? ttsBundleUrl;

  @internal
  Map<String, Object?> encode() => {
    'tts_bundle_url': ?ttsBundleUrl?.toTfJson(),
  };
}

/// Factory wrapper for `aws_odb_autonomous_database`.
final class AwsOdbAutonomousDatabase extends Resource {
  static const String tfType = 'aws_odb_autonomous_database';

  AwsOdbAutonomousDatabase(
    super.localName, {
    OdbAutonomousDatabaseAdminPassword? adminPassword,
    TfArg<num>? adminPasswordWoVersion,
    TfArg<List<String>>? allowlistedIps,
    TfArg<num>? autoRefreshFrequencyInSeconds,
    TfArg<num>? autoRefreshPointLagInSeconds,
    TfArg<String>? autonomousMaintenanceScheduleType,
    TfArg<num>? backupRetentionPeriodInDays,
    TfArg<num>? byolComputeCountLimit,
    TfArg<String>? characterSet,
    TfArg<num>? computeCount,
    TfArg<num>? cpuCoreCount,
    TfArg<num>? dataStorageSizeInGbs,
    TfArg<num>? dataStorageSizeInTbs,
    TfArg<String>? databaseEdition,
    TfArg<String>? dbName,
    TfArg<String>? dbVersion,
    TfArg<String>? dbWorkload,
    TfArg<String>? displayName,
    OdbAutonomousDatabaseEncryptionKeyProvider? encryptionKeyProvider,
    TfArg<bool>? isAutoScalingEnabled,
    TfArg<bool>? isAutoScalingForStorageEnabled,
    TfArg<bool>? isBackupRetentionLocked,
    TfArg<bool>? isLocalDataGuardEnabled,
    TfArg<bool>? isMtlsConnectionRequired,
    TfArg<bool>? isRefreshableClone,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? licenseModel,
    TfArg<num>? localAdgAutoFailoverMaxDataLossLimit,
    TfArg<String>? ncharacterSet,
    TfArg<String>? odbNetworkId,
    TfArg<String>? openMode,
    TfArg<String>? permissionLevel,
    TfArg<String>? privateEndpointIp,
    TfArg<String>? privateEndpointLabel,
    TfArg<String>? refreshableMode,
    TfArg<String>? region,
    TfArg<String>? resourcePoolLeaderId,
    TfArg<String>? source,
    TfArg<List<String>>? standbyAllowlistedIps,
    TfArg<String>? standbyAllowlistedIpsSource,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timeOfAutoRefreshStart,
    List<OdbAutonomousDatabaseCustomerContactsToSendToOci>?
    customerContactsToSendToOci,
    List<OdbAutonomousDatabaseDbToolsDetails>? dbToolsDetails,
    List<OdbAutonomousDatabaseLongTermBackupSchedule>? longTermBackupSchedule,
    List<OdbAutonomousDatabaseResourcePoolSummary>? resourcePoolSummary,
    List<OdbAutonomousDatabaseScheduledOperations>? scheduledOperations,
    List<OdbAutonomousDatabaseSourceConfiguration>? sourceConfiguration,
    List<OdbAutonomousDatabaseTransportableTablespace>? transportableTablespace,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?adminPassword?.argMap,
           'admin_password_wo_version': ?adminPasswordWoVersion,
           'allowlisted_ips': ?allowlistedIps,
           'auto_refresh_frequency_in_seconds': ?autoRefreshFrequencyInSeconds,
           'auto_refresh_point_lag_in_seconds': ?autoRefreshPointLagInSeconds,
           'autonomous_maintenance_schedule_type':
               ?autonomousMaintenanceScheduleType,
           'backup_retention_period_in_days': ?backupRetentionPeriodInDays,
           'byol_compute_count_limit': ?byolComputeCountLimit,
           'character_set': ?characterSet,
           'compute_count': ?computeCount,
           'cpu_core_count': ?cpuCoreCount,
           'data_storage_size_in_gbs': ?dataStorageSizeInGbs,
           'data_storage_size_in_tbs': ?dataStorageSizeInTbs,
           'database_edition': ?databaseEdition,
           'db_name': ?dbName,
           'db_version': ?dbVersion,
           'db_workload': ?dbWorkload,
           'display_name': ?displayName,
           'encryption_key_provider': ?encryptionKeyProvider,
           'is_auto_scaling_enabled': ?isAutoScalingEnabled,
           'is_auto_scaling_for_storage_enabled':
               ?isAutoScalingForStorageEnabled,
           'is_backup_retention_locked': ?isBackupRetentionLocked,
           'is_local_data_guard_enabled': ?isLocalDataGuardEnabled,
           'is_mtls_connection_required': ?isMtlsConnectionRequired,
           'is_refreshable_clone': ?isRefreshableClone,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'license_model': ?licenseModel,
           'local_adg_auto_failover_max_data_loss_limit':
               ?localAdgAutoFailoverMaxDataLossLimit,
           'ncharacter_set': ?ncharacterSet,
           'odb_network_id': ?odbNetworkId,
           'open_mode': ?openMode,
           'permission_level': ?permissionLevel,
           'private_endpoint_ip': ?privateEndpointIp,
           'private_endpoint_label': ?privateEndpointLabel,
           'refreshable_mode': ?refreshableMode,
           'region': ?region,
           'resource_pool_leader_id': ?resourcePoolLeaderId,
           'source': ?source,
           'standby_allowlisted_ips': ?standbyAllowlistedIps,
           'standby_allowlisted_ips_source': ?standbyAllowlistedIpsSource,
           'tags': ?tags,
           'time_of_auto_refresh_start': ?timeOfAutoRefreshStart,
           if (customerContactsToSendToOci != null)
             'customer_contacts_to_send_to_oci': TfArg.literal([
               for (final e in customerContactsToSendToOci) e.encode(),
             ]),
           if (dbToolsDetails != null)
             'db_tools_details': TfArg.literal([
               for (final e in dbToolsDetails) e.encode(),
             ]),
           if (longTermBackupSchedule != null)
             'long_term_backup_schedule': TfArg.literal([
               for (final e in longTermBackupSchedule) e.encode(),
             ]),
           if (resourcePoolSummary != null)
             'resource_pool_summary': TfArg.literal([
               for (final e in resourcePoolSummary) e.encode(),
             ]),
           if (scheduledOperations != null)
             'scheduled_operations': TfArg.literal([
               for (final e in scheduledOperations) e.encode(),
             ]),
           if (sourceConfiguration != null)
             'source_configuration': TfArg.literal([
               for (final e in sourceConfiguration) e.encode(),
             ]),
           if (transportableTablespace != null)
             'transportable_tablespace': TfArg.literal([
               for (final e in transportableTablespace) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbAutonomousDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOdbAutonomousDatabase>`.
  RefTo<AwsOdbAutonomousDatabase> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actual_used_data_storage_size_in_tbs` attribute.
  TfRef<num> get actualUsedDataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'actual_used_data_storage_size_in_tbs');

  /// Reference to `allocated_storage_size_in_tbs` attribute.
  TfRef<num> get allocatedStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'allocated_storage_size_in_tbs');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `available_upgrade_versions` attribute.
  TfRef<List<String>> get availableUpgradeVersions =>
      TfRef.attribute<List<String>>(this, 'available_upgrade_versions');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `oci_resource_anchor_name` attribute.
  TfRef<String> get ociResourceAnchorName =>
      TfRef.attribute<String>(this, 'oci_resource_anchor_name');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `ocid` attribute.
  TfRef<String> get ocid => TfRef.attribute<String>(this, 'ocid');

  /// Reference to `odb_network_arn` attribute.
  TfRef<String> get odbNetworkArn =>
      TfRef.attribute<String>(this, 'odb_network_arn');

  /// Reference to `percent_progress` attribute.
  TfRef<num> get percentProgress =>
      TfRef.attribute<num>(this, 'percent_progress');

  /// Reference to `private_endpoint` attribute.
  TfRef<String> get privateEndpoint =>
      TfRef.attribute<String>(this, 'private_endpoint');

  /// Reference to `service_console_url` attribute.
  TfRef<String> get serviceConsoleUrl =>
      TfRef.attribute<String>(this, 'service_console_url');

  /// Reference to `source_id` attribute.
  TfRef<String> get sourceId => TfRef.attribute<String>(this, 'source_id');

  /// Reference to `sql_web_developer_url` attribute.
  TfRef<String> get sqlWebDeveloperUrl =>
      TfRef.attribute<String>(this, 'sql_web_developer_url');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `admin_password_wo_version` attribute.
  TfRef<num> get adminPasswordWoVersion =>
      TfRef.attribute<num>(this, 'admin_password_wo_version');

  /// Reference to `allowlisted_ips` attribute.
  TfRef<List<String>> get allowlistedIps =>
      TfRef.attribute<List<String>>(this, 'allowlisted_ips');

  /// Reference to `auto_refresh_frequency_in_seconds` attribute.
  TfRef<num> get autoRefreshFrequencyInSeconds =>
      TfRef.attribute<num>(this, 'auto_refresh_frequency_in_seconds');

  /// Reference to `auto_refresh_point_lag_in_seconds` attribute.
  TfRef<num> get autoRefreshPointLagInSeconds =>
      TfRef.attribute<num>(this, 'auto_refresh_point_lag_in_seconds');

  /// Reference to `autonomous_maintenance_schedule_type` attribute.
  TfRef<String> get autonomousMaintenanceScheduleType =>
      TfRef.attribute<String>(this, 'autonomous_maintenance_schedule_type');

  /// Reference to `backup_retention_period_in_days` attribute.
  TfRef<num> get backupRetentionPeriodInDays =>
      TfRef.attribute<num>(this, 'backup_retention_period_in_days');

  /// Reference to `byol_compute_count_limit` attribute.
  TfRef<num> get byolComputeCountLimit =>
      TfRef.attribute<num>(this, 'byol_compute_count_limit');

  /// Reference to `character_set` attribute.
  TfRef<String> get characterSet =>
      TfRef.attribute<String>(this, 'character_set');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `cpu_core_count` attribute.
  TfRef<num> get cpuCoreCount => TfRef.attribute<num>(this, 'cpu_core_count');

  /// Reference to `data_storage_size_in_gbs` attribute.
  TfRef<num> get dataStorageSizeInGbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_gbs');

  /// Reference to `data_storage_size_in_tbs` attribute.
  TfRef<num> get dataStorageSizeInTbs =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tbs');

  /// Reference to `database_edition` attribute.
  TfRef<String> get databaseEdition =>
      TfRef.attribute<String>(this, 'database_edition');

  /// Reference to `db_name` attribute.
  TfRef<String> get dbName => TfRef.attribute<String>(this, 'db_name');

  /// Reference to `db_version` attribute.
  TfRef<String> get dbVersion => TfRef.attribute<String>(this, 'db_version');

  /// Reference to `db_workload` attribute.
  TfRef<String> get dbWorkload => TfRef.attribute<String>(this, 'db_workload');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `encryption_key_provider` attribute.
  TfRef<String> get encryptionKeyProvider =>
      TfRef.attribute<String>(this, 'encryption_key_provider');

  /// Reference to `is_auto_scaling_enabled` attribute.
  TfRef<bool> get isAutoScalingEnabled =>
      TfRef.attribute<bool>(this, 'is_auto_scaling_enabled');

  /// Reference to `is_auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get isAutoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'is_auto_scaling_for_storage_enabled');

  /// Reference to `is_backup_retention_locked` attribute.
  TfRef<bool> get isBackupRetentionLocked =>
      TfRef.attribute<bool>(this, 'is_backup_retention_locked');

  /// Reference to `is_local_data_guard_enabled` attribute.
  TfRef<bool> get isLocalDataGuardEnabled =>
      TfRef.attribute<bool>(this, 'is_local_data_guard_enabled');

  /// Reference to `is_mtls_connection_required` attribute.
  TfRef<bool> get isMtlsConnectionRequired =>
      TfRef.attribute<bool>(this, 'is_mtls_connection_required');

  /// Reference to `is_refreshable_clone` attribute.
  TfRef<bool> get isRefreshableClone =>
      TfRef.attribute<bool>(this, 'is_refreshable_clone');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `local_adg_auto_failover_max_data_loss_limit` attribute.
  TfRef<num> get localAdgAutoFailoverMaxDataLossLimit =>
      TfRef.attribute<num>(this, 'local_adg_auto_failover_max_data_loss_limit');

  /// Reference to `ncharacter_set` attribute.
  TfRef<String> get ncharacterSet =>
      TfRef.attribute<String>(this, 'ncharacter_set');

  /// Reference to `odb_network_id` attribute.
  TfRef<String> get odbNetworkId =>
      TfRef.attribute<String>(this, 'odb_network_id');

  /// Reference to `open_mode` attribute.
  TfRef<String> get openMode => TfRef.attribute<String>(this, 'open_mode');

  /// Reference to `permission_level` attribute.
  TfRef<String> get permissionLevel =>
      TfRef.attribute<String>(this, 'permission_level');

  /// Reference to `private_endpoint_ip` attribute.
  TfRef<String> get privateEndpointIp =>
      TfRef.attribute<String>(this, 'private_endpoint_ip');

  /// Reference to `private_endpoint_label` attribute.
  TfRef<String> get privateEndpointLabel =>
      TfRef.attribute<String>(this, 'private_endpoint_label');

  /// Reference to `refreshable_mode` attribute.
  TfRef<String> get refreshableMode =>
      TfRef.attribute<String>(this, 'refreshable_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_pool_leader_id` attribute.
  TfRef<String> get resourcePoolLeaderId =>
      TfRef.attribute<String>(this, 'resource_pool_leader_id');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `standby_allowlisted_ips` attribute.
  TfRef<List<String>> get standbyAllowlistedIps =>
      TfRef.attribute<List<String>>(this, 'standby_allowlisted_ips');

  /// Reference to `standby_allowlisted_ips_source` attribute.
  TfRef<String> get standbyAllowlistedIpsSource =>
      TfRef.attribute<String>(this, 'standby_allowlisted_ips_source');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_of_auto_refresh_start` attribute.
  TfRef<String> get timeOfAutoRefreshStart =>
      TfRef.attribute<String>(this, 'time_of_auto_refresh_start');
}
