// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_managed_database`.
const Set<String> _azurermMssqlManagedDatabaseSensitive = <String>{};

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
    TfArg<num>? shortTermRetentionDays,
    TfArg<Map<String, String>>? tags,
    MssqlManagedDatabaseLongTermRetentionPolicy? longTermRetentionPolicy,
    MssqlManagedDatabasePointInTimeRestore? pointInTimeRestore,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_instance_id': managedInstanceId,
           'name': name,
           'short_term_retention_days': ?shortTermRetentionDays,
           'tags': ?tags,
           if (longTermRetentionPolicy != null)
             'long_term_retention_policy': TfArg.literal(
               longTermRetentionPolicy.encode(),
             ),
           if (pointInTimeRestore != null)
             'point_in_time_restore': TfArg.literal(
               pointInTimeRestore.encode(),
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

  /// Reference to `short_term_retention_days` attribute.
  TfRef<num> get shortTermRetentionDays =>
      TfRef.attribute<num>(this, 'short_term_retention_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
