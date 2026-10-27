// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mssql/azurerm_mssql_managed_database.dart';

/// Sensitive field paths for `azurerm_mssql_managed_database`.
const Set<String> _azurermMssqlManagedDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_managed_database`.
final class DataAzurermMssqlManagedDatabase extends Data {
  static const String tfType = 'azurerm_mssql_managed_database';

  DataAzurermMssqlManagedDatabase(
    super.localName, {
    required TfArg<String> managedInstanceId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'managed_instance_id': managedInstanceId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlManagedDatabaseSensitive;

  /// A reference to the `azurerm_mssql_managed_database` this data source reads, for
  /// arguments typed `RefTo<AzurermMssqlManagedDatabase>`.
  RefTo<AzurermMssqlManagedDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `long_term_retention_policy` attribute.
  TfRef<List<Map<String, Object?>>> get longTermRetentionPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'long_term_retention_policy',
      );

  /// Reference to `managed_instance_name` attribute.
  TfRef<String> get managedInstanceName =>
      TfRef.attribute<String>(this, 'managed_instance_name');

  /// Reference to `point_in_time_restore` attribute.
  TfRef<List<Map<String, Object?>>> get pointInTimeRestore =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'point_in_time_restore',
      );

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `short_term_retention_days` attribute.
  TfRef<num> get shortTermRetentionDays =>
      TfRef.attribute<num>(this, 'short_term_retention_days');

  /// Reference to `managed_instance_id` attribute.
  TfRef<String> get managedInstanceId =>
      TfRef.attribute<String>(this, 'managed_instance_id');
}
