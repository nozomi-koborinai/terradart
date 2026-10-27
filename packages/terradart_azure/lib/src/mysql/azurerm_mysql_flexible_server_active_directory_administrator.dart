// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mysql_flexible_server_active_directory_administrator`.
const Set<String>
_azurermMysqlFlexibleServerActiveDirectoryAdministratorSensitive = <String>{};

/// Factory wrapper for `azurerm_mysql_flexible_server_active_directory_administrator`.
final class AzurermMysqlFlexibleServerActiveDirectoryAdministrator
    extends Resource {
  static const String tfType =
      'azurerm_mysql_flexible_server_active_directory_administrator';

  AzurermMysqlFlexibleServerActiveDirectoryAdministrator(
    super.localName, {
    required TfArg<String> identityId,
    required TfArg<String> login,
    required TfArg<String> objectId,
    required TfArg<String> serverId,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_id': identityId,
           'login': login,
           'object_id': objectId,
           'server_id': serverId,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMysqlFlexibleServerActiveDirectoryAdministratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMysqlFlexibleServerActiveDirectoryAdministrator>`.
  RefTo<AzurermMysqlFlexibleServerActiveDirectoryAdministrator> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `login` attribute.
  TfRef<String> get login => TfRef.attribute<String>(this, 'login');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
