// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_exadata_infrastructure`.
const Set<String> _azurermOracleExadataInfrastructureSensitive = <String>{};

/// Typed helper for the `maintenance_window` block of
/// `azurerm_oracle_exadata_infrastructure` (derived from provider schema).
@immutable
final class OracleExadataInfrastructureMaintenanceWindow {
  const OracleExadataInfrastructureMaintenanceWindow({
    this.daysOfWeek,
    this.hoursOfDay,
    this.leadTimeInWeeks,
    this.months,
    this.patchingMode,
    this.preference,
    this.weeksOfMonth,
  });

  final TfArg<List<String>>? daysOfWeek;

  final TfArg<List<num>>? hoursOfDay;

  final TfArg<num>? leadTimeInWeeks;

  final TfArg<List<String>>? months;

  final TfArg<String>? patchingMode;

  final TfArg<String>? preference;

  final TfArg<List<num>>? weeksOfMonth;

  @internal
  Map<String, Object?> encode() => {
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'hours_of_day': ?hoursOfDay?.toTfJson(),
    'lead_time_in_weeks': ?leadTimeInWeeks?.toTfJson(),
    'months': ?months?.toTfJson(),
    'patching_mode': ?patchingMode?.toTfJson(),
    'preference': ?preference?.toTfJson(),
    'weeks_of_month': ?weeksOfMonth?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_oracle_exadata_infrastructure`.
final class AzurermOracleExadataInfrastructure extends Resource {
  static const String tfType = 'azurerm_oracle_exadata_infrastructure';

  AzurermOracleExadataInfrastructure(
    super.localName, {
    required TfArg<num> computeCount,
    TfArg<List<String>>? customerContacts,
    TfArg<String>? databaseServerType,
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> shape,
    required TfArg<num> storageCount,
    TfArg<String>? storageServerType,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    List<OracleExadataInfrastructureMaintenanceWindow>? maintenanceWindow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compute_count': computeCount,
           'customer_contacts': ?customerContacts,
           'database_server_type': ?databaseServerType,
           'display_name': displayName,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'shape': shape,
           'storage_count': storageCount,
           'storage_server_type': ?storageServerType,
           'tags': ?tags,
           'zones': ?zones,
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal([
               for (final e in maintenanceWindow) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleExadataInfrastructureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleExadataInfrastructure>`.
  RefTo<AzurermOracleExadataInfrastructure> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `customer_contacts` attribute.
  TfRef<List<String>> get customerContacts =>
      TfRef.attribute<List<String>>(this, 'customer_contacts');

  /// Reference to `database_server_type` attribute.
  TfRef<String> get databaseServerType =>
      TfRef.attribute<String>(this, 'database_server_type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `shape` attribute.
  TfRef<String> get shape => TfRef.attribute<String>(this, 'shape');

  /// Reference to `storage_count` attribute.
  TfRef<num> get storageCount => TfRef.attribute<num>(this, 'storage_count');

  /// Reference to `storage_server_type` attribute.
  TfRef<String> get storageServerType =>
      TfRef.attribute<String>(this, 'storage_server_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
