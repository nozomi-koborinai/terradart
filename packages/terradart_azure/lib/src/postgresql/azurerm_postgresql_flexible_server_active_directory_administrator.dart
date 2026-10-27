// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_postgresql_flexible_server_active_directory_administrator`.
const Set<String>
_azurermPostgresqlFlexibleServerActiveDirectoryAdministratorSensitive =
    <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server_active_directory_administrator`.
final class AzurermPostgresqlFlexibleServerActiveDirectoryAdministrator
    extends Resource {
  static const String tfType =
      'azurerm_postgresql_flexible_server_active_directory_administrator';

  AzurermPostgresqlFlexibleServerActiveDirectoryAdministrator(
    super.localName, {
    required TfArg<String> objectId,
    required TfArg<String> principalName,
    required TfArg<String> principalType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serverName,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'object_id': objectId,
           'principal_name': principalName,
           'principal_type': principalType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_name': serverName,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPostgresqlFlexibleServerActiveDirectoryAdministratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServerActiveDirectoryAdministrator>`.
  RefTo<AzurermPostgresqlFlexibleServerActiveDirectoryAdministrator> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `principal_name` attribute.
  TfRef<String> get principalName =>
      TfRef.attribute<String>(this, 'principal_name');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
