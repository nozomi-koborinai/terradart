// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mysql/azurerm_mysql_flexible_server.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mysql_flexible_server`.
const Set<String> _azurermMysqlFlexibleServerSensitive = <String>{};

/// Factory wrapper for `azurerm_mysql_flexible_server`.
final class DataAzurermMysqlFlexibleServer extends Data {
  static const String tfType = 'azurerm_mysql_flexible_server';

  DataAzurermMysqlFlexibleServer(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMysqlFlexibleServerSensitive;

  /// A reference to the `azurerm_mysql_flexible_server` this data source reads, for
  /// arguments typed `RefTo<AzurermMysqlFlexibleServer>`.
  RefTo<AzurermMysqlFlexibleServer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `backup_retention_days` attribute.
  TfRef<num> get backupRetentionDays =>
      TfRef.attribute<num>(this, 'backup_retention_days');

  /// Reference to `delegated_subnet_id` attribute.
  TfRef<String> get delegatedSubnetId =>
      TfRef.attribute<String>(this, 'delegated_subnet_id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `geo_redundant_backup_enabled` attribute.
  TfRef<bool> get geoRedundantBackupEnabled =>
      TfRef.attribute<bool>(this, 'geo_redundant_backup_enabled');

  /// Reference to `high_availability` attribute.
  TfRef<List<Map<String, Object?>>> get highAvailability =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'high_availability');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_window` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceWindow =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_window');

  /// Reference to `private_dns_zone_id` attribute.
  TfRef<String> get privateDnsZoneId =>
      TfRef.attribute<String>(this, 'private_dns_zone_id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `replica_capacity` attribute.
  TfRef<num> get replicaCapacity =>
      TfRef.attribute<num>(this, 'replica_capacity');

  /// Reference to `replication_role` attribute.
  TfRef<String> get replicationRole =>
      TfRef.attribute<String>(this, 'replication_role');

  /// Reference to `restore_point_in_time` attribute.
  TfRef<String> get restorePointInTime =>
      TfRef.attribute<String>(this, 'restore_point_in_time');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage` attribute.
  TfRef<List<Map<String, Object?>>> get storage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
