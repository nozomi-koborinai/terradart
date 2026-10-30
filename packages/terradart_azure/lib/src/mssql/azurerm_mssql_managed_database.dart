// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_managed_database`.
const Set<String> _azurermMssqlManagedDatabaseSensitive = <String>{};

/// At most one of `point_in_time_restore`, `recover_database_id` on `azurerm_mssql_managed_database`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.pointInTimeRestore(...)`.
sealed class MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId {
  const MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId();

  /// Sets `point_in_time_restore`.
  const factory MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId.pointInTimeRestore(
    MssqlManagedDatabasePointInTimeRestore pointInTimeRestore,
  ) = MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseIdPointInTimeRestore;

  /// Sets `recover_database_id`.
  const factory MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId.recoverDatabaseId(
    TfArg<String> recoverDatabaseId,
  ) = MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseIdChoice;

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

/// The [MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId.pointInTimeRestore] choice: sets `point_in_time_restore`.
final class MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseIdPointInTimeRestore
    extends MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId {
  const MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseIdPointInTimeRestore(
    this.pointInTimeRestore,
  );

  final MssqlManagedDatabasePointInTimeRestore pointInTimeRestore;

  @internal
  @override
  String get blockKey => 'point_in_time_restore';

  @internal
  @override
  Map<String, Object?> encode() => {
    'point_in_time_restore': pointInTimeRestore.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'point_in_time_restore': TfArg.literal(pointInTimeRestore.encode()),
  };
}

/// The [MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId.recoverDatabaseId] choice: sets `recover_database_id`.
final class MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseIdChoice
    extends MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId {
  const MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseIdChoice(
    this.recoverDatabaseId,
  );

  final TfArg<String> recoverDatabaseId;

  @internal
  @override
  String get blockKey => 'recover_database_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'recover_database_id': recoverDatabaseId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'recover_database_id': recoverDatabaseId,
  };
}

/// Typed helper for the `long_term_retention_policy` block of
/// `azurerm_mssql_managed_database` (derived from provider schema).
@immutable
final class MssqlManagedDatabaseLongTermRetentionPolicy {
  const MssqlManagedDatabaseLongTermRetentionPolicy({
    this.monthlyRetention,
    this.weekOfYear,
    this.weeklyRetention,
    this.yearlyRetention,
  });

  final TfArg<String>? monthlyRetention;

  final TfArg<num>? weekOfYear;

  final TfArg<String>? weeklyRetention;

  final TfArg<String>? yearlyRetention;

  @internal
  Map<String, Object?> encode() => {
    'monthly_retention': ?monthlyRetention?.toTfJson(),
    'week_of_year': ?weekOfYear?.toTfJson(),
    'weekly_retention': ?weeklyRetention?.toTfJson(),
    'yearly_retention': ?yearlyRetention?.toTfJson(),
  };
}

/// Typed helper for the `point_in_time_restore` block of
/// `azurerm_mssql_managed_database` (derived from provider schema).
@immutable
final class MssqlManagedDatabasePointInTimeRestore {
  const MssqlManagedDatabasePointInTimeRestore({
    required this.restorePointInTime,
    required this.sourceDatabaseId,
  });

  final TfArg<String> restorePointInTime;

  final TfArg<String> sourceDatabaseId;

  @internal
  Map<String, Object?> encode() => {
    'restore_point_in_time': restorePointInTime.toTfJson(),
    'source_database_id': sourceDatabaseId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mssql_managed_database`.
final class AzurermMssqlManagedDatabase extends Resource {
  static const String tfType = 'azurerm_mssql_managed_database';

  AzurermMssqlManagedDatabase(
    super.localName, {
    required TfArg<String> managedInstanceId,
    required TfArg<String> name,
    MssqlManagedDatabasePointInTimeRestoreOrRecoverDatabaseId?
    pointInTimeRestoreOrRecoverDatabaseId,
    TfArg<num>? shortTermRetentionDays,
    TfArg<Map<String, String>>? tags,
    MssqlManagedDatabaseLongTermRetentionPolicy? longTermRetentionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_instance_id': managedInstanceId,
           'name': name,
           ...?pointInTimeRestoreOrRecoverDatabaseId?.argMap,
           'short_term_retention_days': ?shortTermRetentionDays,
           'tags': ?tags,
           if (longTermRetentionPolicy != null)
             'long_term_retention_policy': TfArg.literal(
               longTermRetentionPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlManagedDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedDatabase>`.
  RefTo<AzurermMssqlManagedDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_instance_id` attribute.
  TfRef<String> get managedInstanceId =>
      TfRef.attribute<String>(this, 'managed_instance_id');

  /// Reference to `recover_database_id` attribute.
  TfRef<String> get recoverDatabaseId =>
      TfRef.attribute<String>(this, 'recover_database_id');

  /// Reference to `short_term_retention_days` attribute.
  TfRef<num> get shortTermRetentionDays =>
      TfRef.attribute<num>(this, 'short_term_retention_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
