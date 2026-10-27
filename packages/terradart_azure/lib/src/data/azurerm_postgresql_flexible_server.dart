// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../postgresql/azurerm_postgresql_flexible_server.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_postgresql_flexible_server`.
const Set<String> _azurermPostgresqlFlexibleServerSensitive = <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server`.
final class DataAzurermPostgresqlFlexibleServer extends Data {
  static const String tfType = 'azurerm_postgresql_flexible_server';

  DataAzurermPostgresqlFlexibleServer(
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
  Set<String> get sensitiveFields => _azurermPostgresqlFlexibleServerSensitive;

  /// A reference to the `azurerm_postgresql_flexible_server` this data source reads, for
  /// arguments typed `RefTo<AzurermPostgresqlFlexibleServer>`.
  RefTo<AzurermPostgresqlFlexibleServer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `auto_grow_enabled` attribute.
  TfRef<bool> get autoGrowEnabled =>
      TfRef.attribute<bool>(this, 'auto_grow_enabled');

  /// Reference to `backup_retention_days` attribute.
  TfRef<num> get backupRetentionDays =>
      TfRef.attribute<num>(this, 'backup_retention_days');

  /// Reference to `delegated_subnet_id` attribute.
  TfRef<String> get delegatedSubnetId =>
      TfRef.attribute<String>(this, 'delegated_subnet_id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `high_availability` attribute.
  TfRef<List<Map<String, Object?>>> get highAvailability =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'high_availability');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_mb` attribute.
  TfRef<num> get storageMb => TfRef.attribute<num>(this, 'storage_mb');

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
